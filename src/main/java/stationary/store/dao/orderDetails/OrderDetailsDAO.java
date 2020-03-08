package stationary.store.dao.orderDetails;

import stationary.store.model.Address;
import stationary.store.model.OrderDetails;
import stationary.store.model.User;

import java.util.List;

public interface OrderDetailsDAO {

    List<OrderDetails> getOrdersDetails();

    void saveOrderDetails(OrderDetails OrderDetails);

    OrderDetails getOrderDetails(int id);

    int getOrderIdByUserId(User user, Address address);

    void deleteOrderDetails(int id);

}
