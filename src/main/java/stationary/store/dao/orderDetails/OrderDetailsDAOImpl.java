package stationary.store.dao.orderDetails;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import stationary.store.model.*;
import stationary.store.service.address.AddressService;
import stationary.store.service.order.OrderService;
import stationary.store.service.orderStatus.OrderStatusService;
import stationary.store.service.shipper.ShipperService;

import java.util.List;

@Repository
public class OrderDetailsDAOImpl implements OrderDetailsDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private OrderStatusService orderStatusService;

    @Autowired
    private ShipperService shipperService;

    @Autowired
    OrderService orderService;

    @Override
    public List<OrderDetails> getOrdersDetails() {

        Session currentSession = sessionFactory.getCurrentSession();

        Query<OrderDetails> theQuery = currentSession.createQuery("select od From OrderDetails od", OrderDetails.class);

        List<OrderDetails> OrdersDetails = theQuery.getResultList();
        return OrdersDetails;
    }

    @Override
    public void saveOrderDetails(OrderDetails theOrderDetails) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(theOrderDetails);

    }

    @Override
    public OrderDetails getOrderDetails(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();
        OrderDetails theOrderDetails = currentSession.get(OrderDetails.class, theId);

        return theOrderDetails;
    }

    @Override
    public int getOrderIdByUserId(User user, Address address) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<Order> orderQuery = currentSession.createQuery("select o.order from OrderDetails o where o.user.id =: userId", Order.class);
        orderQuery.setParameter("userId" , user.getId());
        List<Order> orders = orderQuery.getResultList();

        if (orders.size() == 0) {
            OrderDetails orderDetails = new OrderDetails();

            Order order = new Order();
            order.setOrderStatus(orderStatusService.getOrderStatus(1));
            order.setShipper(shipperService.getShipper(1));

            order.setId(0);
            orderService.saveOrder(order);

            order = orderService.getOrder(orderService.getLastID());

            orderDetails.setUser(user);
            orderDetails.setAddress(address);
            orderDetails.setOrder(order);

            orderDetails.setId(0);
            saveOrderDetails(orderDetails);

            return getOrderIdByUserId(user , address);
        } else {
            return orders.get(0).getId();
        }
    }

    @Override
    public void deleteOrderDetails(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery = currentSession.createQuery("delete from OrderDetails where id=:orderDetailsId");
        theQuery.setParameter("orderDetailsId", theId);

        theQuery.executeUpdate();
    }

}











