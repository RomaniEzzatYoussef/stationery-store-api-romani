package stationary.store.service.user;

import org.springframework.security.core.userdetails.UserDetails;
import stationary.store.model.User;

import java.util.List;
import java.util.Optional;


public interface UserService {

    List<User> getUsers();

    List<User> getUsers(Integer limit);

    void saveUser(User theUser);

    User getUser(int theId);

    User getCurrentUser();

    User getUserByEmail(String email);

    boolean existsByEmail(String email);

    void deleteUser(int theId);

}
