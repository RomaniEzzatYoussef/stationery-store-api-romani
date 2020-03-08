package stationary.store.service.order;

import stationary.store.model.Order;

import java.util.List;


public interface OrderService {

    List<Order> getOrders();

    void saveOrder(Order theOrder);

    Order getOrder(int theId);

    int getLastID();

    void deleteOrder(int theId);

}
