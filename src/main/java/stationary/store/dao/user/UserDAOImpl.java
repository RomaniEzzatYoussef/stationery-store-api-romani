package stationary.store.dao.user;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import stationary.store.model.User;
import stationary.store.utilities.exceptions.NotFoundException;

import java.util.List;

@Repository
public class UserDAOImpl implements UserDAO {

    private int paginatedCount = 0;

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<User> getUsers() {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query  ... sort by last name
        Query<User> theQuery =
                currentSession.createQuery("From User", User.class);

        // execute query and get result list
        List<User> Users = theQuery.getResultList();

        // return the results
        return Users;
    }

    @Override
    public List<User> getUsers(Integer limit) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query<User> userQuery = currentSession.createQuery("select u From User u", User.class);
        userQuery.setFirstResult(paginatedCount);
        userQuery.setMaxResults(limit);
        List<User> users = userQuery.getResultList();

        paginatedCount += limit;

        int pageSize;

        if (limit > users.size()) {
            pageSize = 1;

        } else {
            pageSize = (users.size() / limit) + 1;
        }

        if (pageSize == 1) {
            paginatedCount = 0;
        }
        return users;
    }

    @Override
    public void saveUser(User theUser) {

        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // save/upate the User ... finally LOL
        currentSession.saveOrUpdate(theUser);

    }

    @Override
    public User getUser(int id) {
        Session currentSession = sessionFactory.getCurrentSession();

        User user = currentSession.get(User.class, id);

        if (user == null) {
            throw new NotFoundException("userId not found with id: " + id);
        }

        return user;
    }

    @Override
    public User getCurrentUser() {
        Session currentSession = sessionFactory.getCurrentSession();

        int currentUser = 22;
        User user = currentSession.get(User.class, currentUser);
        return user;
    }

    @Override
    public void deleteUser(int theId) {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // delete object with primary key
        Query theQuery =
                currentSession.createQuery("delete from User where id=:userId");
        theQuery.setParameter("userId", theId);

        theQuery.executeUpdate();
    }

}











