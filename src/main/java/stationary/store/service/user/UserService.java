package stationary.store.service.user;

import stationary.store.model.User;

import java.util.List;


public interface UserService {

    List<User> getUsers();

    List<User> getUsers(Integer limit);

    void saveUser(User theUser);

    User getUser(int theId);

    User getCurrentUser();

    void deleteUser(int theId);

}
