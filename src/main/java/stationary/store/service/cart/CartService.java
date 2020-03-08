package stationary.store.service.cart;

import stationary.store.model.Cart;
import stationary.store.model.CartItem;
import stationary.store.model.User;

import java.util.List;


public interface CartService {

    List<Cart> getCarts();

    List<CartItem> getCartItemsByUser(int userId , Integer limit , Integer pageNumber);

    void saveCart(Cart theCart);

    Cart getCart(int theId);

    int getCartIdByUserId(User user);

    void deleteCart(int theId);

}
