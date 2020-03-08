package stationary.store.service.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import stationary.store.dao.cart.CartDAO;
import stationary.store.model.Cart;
import stationary.store.model.CartItem;
import stationary.store.model.User;

import java.util.List;


@Service
public class CartServiceImpl implements CartService {

    // need to inject Cart dao
    @Autowired
    private CartDAO cartDAO;

    @Override
    @Transactional
    public List<Cart> getCarts() {
        return cartDAO.getCarts();
    }

    @Override
    @Transactional
    public List<CartItem> getCartItemsByUser(int userId, Integer limit , Integer pageNumber) {
        return cartDAO.getCartItemsByUser(userId , limit , pageNumber);
    }

    @Override
    @Transactional
    public void saveCart(Cart theCart) {

        cartDAO.saveCart(theCart);
    }

    @Override
    @Transactional
    public Cart getCart(int theId) {

        return cartDAO.getCart(theId);
    }

    @Override
    @Transactional
    public int getCartIdByUserId(User user) {
        return cartDAO.getCartIdByUserId(user);
    }

    @Override
    @Transactional
    public void deleteCart(int theId) {

        cartDAO.deleteCart(theId);
    }
}





