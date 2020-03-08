package stationary.store.dao.cart;

import stationary.store.model.Cart;
import stationary.store.model.CartItem;
import stationary.store.model.User;

import java.util.List;

public interface CartDAO {

    List<Cart> getCarts();

    List<CartItem> getCartItemsByUser(int userId , Integer limit , Integer pageNumber);

    void saveCart(Cart Cart);

    Cart getCart(int id);

    int getCartIdByUserId(User user);

    void deleteCart(int id);

}
