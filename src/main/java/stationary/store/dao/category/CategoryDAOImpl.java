package stationary.store.dao.category;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import stationary.store.dao.category.CategoryDAO;
import stationary.store.model.Category;
import stationary.store.model.Offer;
import stationary.store.model.Product;
import stationary.store.utilities.json.ProductJSON;
import stationary.store.utilities.json.ProductsInCategoryJSON;

import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.List;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

    // need to inject the session factory
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Category> getCategories(Integer limit) {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query  ... sort by last name
        Query<Category> theQuery =
                currentSession.createQuery("from Category",
                        Category.class).setMaxResults(limit);

        // execute query and get result list
        List<Category> Categories = theQuery.getResultList();

        // return the results
        return Categories;
    }

    @Override
    public List<Category> getCategories() {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query  ... sort by last name
        Query<Category> theQuery =
                currentSession.createQuery("from Category",
                        Category.class);

        // execute query and get result list
        List<Category> Categories = theQuery.getResultList();

        // return the results
        return Categories;
    }

    @Override
    public void saveCategory(Category theCategory) {

        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // save/upate the Category ... finally LOL
        currentSession.saveOrUpdate(theCategory);

    }

    @Override
    public Category getCategory(int theId) {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // now retrieve/read from database using the primary key
        Category theCategory = currentSession.get(Category.class, theId);

        return theCategory;
    }

    @Override
    public void deleteCategory(int theId) {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // delete object with primary key
        Query theQuery =
                currentSession.createQuery("delete from Category where id=:categoryId");
        theQuery.setParameter("categoryId", theId);

        theQuery.executeUpdate();
    }

    @Override
    public List<ProductsInCategoryJSON> getCategoryProducts(int id) {
        Session currentSession = sessionFactory.getCurrentSession();

        Category category = currentSession.get(Category.class, id);

        List<ProductsInCategoryJSON> productsInCategoryJSONS = new ArrayList<>();
        for (int i = 0; i < category.getProducts().size(); i++) {
            ProductsInCategoryJSON productsInCategoryJSON = new ProductsInCategoryJSON();

            ProductJSON productJSON = new ProductJSON();
            productJSON.setProductId(category.getProducts().get(i).getProductId());
            productJSON.setProductName(category.getProducts().get(i).getProductName());
            productJSON.setDescription(category.getProducts().get(i).getDescription());
            productJSON.setMinStock(category.getProducts().get(i).getMinStock());

            productsInCategoryJSON.setProduct(productJSON);

            if (category.getProducts().get(i).getPatches().size() == 0)
            {
                productsInCategoryJSON.setPrice(0);
            } else {
                productsInCategoryJSON.setPrice(category.getProducts().get(i).getPatches().get(0).getSellPrice());
            }

            if (category.getProducts().get(i).getOffers().size() == 0)
            {
                productsInCategoryJSON.setDiscount(0);
            } else {
                productsInCategoryJSON.setDiscount(category.getProducts().get(i).getOffers().get(0).getDiscount());
            }

            productsInCategoryJSONS.add(productsInCategoryJSON);
        }

        return productsInCategoryJSONS;
    }

}

