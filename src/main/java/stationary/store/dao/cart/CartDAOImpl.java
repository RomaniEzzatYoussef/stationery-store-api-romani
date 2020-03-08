package stationary.store.dao.cart;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import stationary.store.model.Cart;
import stationary.store.model.CartItem;
import stationary.store.model.User;
import stationary.store.service.user.UserService;
import stationary.store.utilities.exceptions.NotFoundException;

import java.util.List;

@Repository
public class CartDAOImpl implements CartDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Cart> getCarts() {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<Cart> theQuery = currentSession.createQuery("select  c from Cart c", Cart.class);
        List<Cart> Carts = theQuery.getResultList();

        return Carts;
    }

    @Override
    public List<CartItem> getCartItemsByUser(int userId, Integer limit , Integer pageNumber) {
        Session currentSession = sessionFactory.getCurrentSession();

        int paginateCount = 0;
        for (int i = 1; i < pageNumber; i++) {
            paginateCount += limit;
        }

        Query<Cart> cartQuery = currentSession.createQuery("select c from Cart c where c.user.id =: userId", Cart.class);
        cartQuery.setParameter("userId" , userId);
        List<Cart> carts = cartQuery.getResultList();

        List<CartItem> cartItems;

        if (carts.size() == 0) {
            throw new NotFoundException("No cart found with this user");
        } else {
            Query<CartItem> cartItemQuery = currentSession.createQuery("select c from CartItem c where c.cart.cartId =: cartId", CartItem.class);
            cartItemQuery.setParameter("cartId" , carts.get(0).getCartId());
            cartItemQuery.setFirstResult(paginateCount);
            cartItemQuery.setMaxResults(limit);
            cartItems = cartItemQuery.getResultList();

            if (cartItems.size() == 0) {
                throw new NotFoundException("No cart items found in page: " + pageNumber);
            }
        }

        return cartItems;
    }

    @Override
    public void saveCart(Cart theCart) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(theCart);

    }

    @Override
    public Cart getCart(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Cart theCart = currentSession.get(Cart.class, theId);

        return theCart;
    }

    @Override
    public int getCartIdByUserId(User user) {

        Session currentSession = sessionFactory.getCurrentSession();
        Query<Cart> cartQuery = currentSession.createQuery("select c from Cart c where c.user.id =: userId", Cart.class);
        cartQuery.setParameter("userId" , user.getId());
        List<Cart> carts = cartQuery.getResultList();

        if (carts.size() == 0) {
            Cart cart = new Cart();

            cart.setUser(user);
            cart.setCartId(0);
            saveCart(cart);

            return getCartIdByUserId(user);
        } else {
            return carts.get(0).getCartId();
        }
    }

    @Override
    public void deleteCart(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery = currentSession.createQuery("delete from Cart where id=:CartId");
        theQuery.setParameter("CartId", theId);

        theQuery.executeUpdate();
    }

}











