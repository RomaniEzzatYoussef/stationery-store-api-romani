package stationary.store.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.provider.token.AuthorizationServerTokenServices;
import org.springframework.security.oauth2.provider.token.ConsumerTokenServices;
import org.springframework.web.bind.annotation.*;
import stationary.store.model.*;
import stationary.store.service.address.AddressService;
import stationary.store.service.cart.CartService;
import stationary.store.service.cartItem.CartItemService;
import stationary.store.service.order.OrderService;
import stationary.store.service.orderDetails.OrderDetailsService;
import stationary.store.service.orderItem.OrderItemService;
import stationary.store.service.productPatch.ProductPatchService;
import stationary.store.service.user.UserService;
import stationary.store.utilities.exceptions.NotFoundException;
import stationary.store.utilities.json.OrderDetail;

import java.security.Principal;
import java.util.List;

@RestController
@CrossOrigin(origins = "*", maxAge = 3600)
@RequestMapping("/auth")
public class UserRestController {

    @Autowired
    UserService userService;

    @Autowired
    CartService cartService;

    @Autowired
    CartItemService cartItemService;

    @Autowired
    OrderService orderService;

    @Autowired
    OrderItemService orderItemService;

    @Autowired
    OrderDetailsService orderDetailsService;

    @Autowired
    AddressService addressService;

    @Autowired
    ProductPatchService productPatchService;

    @Autowired
    private ConsumerTokenServices consumerTokenServices;

    @GetMapping("/users")
    public List<User> getUsers(@RequestParam(required = false) Integer limit) {
        List<User> users;
        if (limit == null) {
            users = userService.getUsers(5);
        } else {
            users = userService.getUsers(limit);
        }

        return users;
    }

    @GetMapping("/user/current")
    public User getCurrentUser(Principal principal) {
        return userService.getUserByEmail(principal.getName());
    }

    @GetMapping("/user/{id}")
    public User getUserById(@PathVariable int id) {
        return  userService.getUser(id);
    }

    @PutMapping("/user")
    public User updateUser(@RequestBody User user) {
        user.setUserType(userService.getUser(user.getId()).getUserType());
        userService.saveUser(user);
        return user;
    }

    @PatchMapping("/user")
    public User patchUser(@RequestBody User user) {
        user.setUserType(userService.getUser(user.getId()).getUserType());
        userService.saveUser(user);
        return user;
    }

    @GetMapping("/cart")
    public List<CartItem> getCart(Principal principal, @RequestParam(required = false) Integer limit,
                              @RequestParam(required = false) Integer pageNumber) {
        User user = userService.getUserByEmail(principal.getName());
        List<CartItem> cartItems;

        if (limit == null) {
            if (pageNumber == null) {
                cartItems = cartService.getCartItemsByUser(user.getId() , 5 , 1);
            } else {
                cartItems = cartService.getCartItemsByUser(user.getId() , 5 , pageNumber);
            }
        } else if (pageNumber == null) {
            cartItems = cartService.getCartItemsByUser(user.getId() , limit , 1);
        } else {
            cartItems = cartService.getCartItemsByUser(user.getId() , limit , pageNumber);
        }


        return cartItems;
    }

    @PostMapping("/cart")
    public List<CartItem> saveCart(Principal principal , @RequestBody List<CartItem> cartItems) throws Exception {
        User user = userService.getUserByEmail(principal.getName());

        int cardId  = cartService.getCartIdByUserId(user);
        Cart cart = cartService.getCart(cardId);

        for (CartItem cartItem : cartItems) {
            cartItem.setId(0);
            cartItem.setCart(cart);
            cartItemService.saveCartItem(cartItem);
        }

        return cartItems;
    }

    @DeleteMapping("/cart/cartItem/{id}")
    public CartItem deleteCartItem(@PathVariable int id) {
        CartItem cartItem = cartItemService.getCartItem(id);

        if (cartItem == null) {
            throw new NotFoundException("CartItem with id: " + id + " not found!");
        }

        cartItemService.deleteCartItem(id);

        return cartItem;
    }

    @PatchMapping("/cart/cartItem/{id}")
    public CartItem patchCartItem(@PathVariable int id, @RequestBody CartItem cartItem, Principal principal) {
        if (cartItem.getId() == 0) {
            cartItem.setId(id);
        }

        User user = userService.getUserByEmail(principal.getName());
        Cart cart = cartService.getCart(cartService.getCartIdByUserId(user));
        cartItem.setCart(cart);
        cartItemService.saveCartItem(cartItem);
        return cartItem;
    }

    @PutMapping("/cart/cartItem")
    public CartItem updateCartItem(@RequestBody CartItem cartItem, Principal principal) {
        User user = userService.getUserByEmail(principal.getName());
        Cart cart = cartService.getCart(cartService.getCartIdByUserId(user));
        cartItem.setCart(cart);

        cartItemService.saveCartItem(cartItem);
        return cartItem;
    }

    @PostMapping("/order")
    public Order saveOrder(Principal principal , @RequestBody OrderDetail orderDetail) throws Exception {
        User user = userService.getUserByEmail(principal.getName());

        int orderId  = orderDetailsService.getOrderIdByUserId(user , orderDetail.getAddress());
        Order order = orderService.getOrder(orderId);

        for (OrderItem orderItem : orderDetail.getOrderItems()) {
            orderItem.setId(0);
            orderItem.setOrder(order);
            orderItemService.saveOrderItem(orderItem);

            ProductPatch productPatch = productPatchService.getProductPatchByProductId(orderItem.getProduct().getProductId());
            int orderQuantity = orderItem.getQuantity();
            int totalProductQuantityInPatch = productPatch.getQuantity();
            productPatch.setQuantity(totalProductQuantityInPatch - orderQuantity);
            productPatchService.saveProductPatch(productPatch);
        }

        return order;
    }

    @GetMapping("/order/{id}")
    public Order getOrderById(@PathVariable int id) {
        return orderService.getOrder(id);
    }

    @GetMapping("/order/current")
    public Order getUserOrderItems(Principal principal) {
        User user = userService.getUserByEmail(principal.getName());
        Address address = addressService.getAddress(1);

        int orderId  = orderDetailsService.getOrderIdByUserId(user, address);
        return orderService.getOrder(orderId);
    }

    @PostMapping("/logout")
    public String logout(@RequestParam(name = "access_token") String accessToken) {
        consumerTokenServices.revokeToken(accessToken);
        return "/";
    }


}
