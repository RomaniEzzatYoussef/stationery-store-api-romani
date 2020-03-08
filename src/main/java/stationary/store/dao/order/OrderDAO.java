package stationary.store.dao.order;

import stationary.store.model.Order;
import stationary.store.model.User;

import java.util.List;

public interface OrderDAO {

    List<Order> getOrders();

    void saveOrder(Order Order);

    Order getOrder(int id);

    int getLastID();

    void deleteOrder(int id);

}
