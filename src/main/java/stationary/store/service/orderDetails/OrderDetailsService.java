package stationary.store.service.orderDetails;

import stationary.store.model.Address;
import stationary.store.model.OrderDetails;
import stationary.store.model.User;

import java.util.List;


public interface OrderDetailsService {

    List<OrderDetails> getOrdersDetails();

    void saveOrderDetails(OrderDetails theOrderDetails);

    OrderDetails getOrderDetails(int theId);

    int getOrderIdByUserId(User user, Address address);

    void deleteOrderDetails(int theId);

}
