package stationary.store.dao.order;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import stationary.store.model.Cart;
import stationary.store.model.Order;
import stationary.store.model.OrderDetails;
import stationary.store.model.User;
import stationary.store.utilities.exceptions.NotFoundException;

import java.util.List;

@Repository
public class OrderDAOImpl implements OrderDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Order> getOrders() {
        Session currentSession = sessionFactory.getCurrentSession();

        Query<Order> theQuery = currentSession.createQuery("select o From Order o", Order.class);

        List<Order> Orders = theQuery.getResultList();

        return Orders;
    }

    @Override
    public void saveOrder(Order theOrder) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.saveOrUpdate(theOrder);

    }

    @Override
    public int getLastID() {

        Session currentSession = sessionFactory.getCurrentSession();
        int lastId = (int) currentSession.createQuery("SELECT max(o.id) from Order o").getResultList().get(0);

        return lastId;
    }

    @Override
    public Order getOrder(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Order order = currentSession.get(Order.class, theId);

        if (order == null) {
            throw new NotFoundException("Order not found with id : " + theId);
        }

        return order;
    }

    @Override
    public void deleteOrder(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery =
                currentSession.createQuery("delete from Order where id=:orderId");
        theQuery.setParameter("orderId", theId);

        theQuery.executeUpdate();
    }

}











