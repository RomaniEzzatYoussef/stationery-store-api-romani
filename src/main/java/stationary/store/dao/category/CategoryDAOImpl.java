package stationary.store.dao.category;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import stationary.store.model.Category;
import stationary.store.model.Offer;
import stationary.store.model.Product;
import stationary.store.model.ProductPatch;
import stationary.store.utilities.exceptions.NotFoundException;
import stationary.store.utilities.json.Counter;
import stationary.store.utilities.json.ProductPrDisJSON;
import stationary.store.utilities.json.SearchCounter;
import stationary.store.utilities.json.SearchJSON;

import java.util.ArrayList;
import java.util.List;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Category> getCategories(Integer limit, Integer pageNumber) {

        Session currentSession = sessionFactory.getCurrentSession();

        int paginateCount = 0;
        for (int i = 1; i < pageNumber; i++) {
            paginateCount += limit;
        }

        Query<Category> categoryQuery = currentSession.createQuery("select c from Category c", Category.class);
        categoryQuery.setFirstResult(paginateCount);
        categoryQuery.setMaxResults(limit);
        List<Category> categories = categoryQuery.getResultList();

        if (categories.size() == 0) {
            throw new NotFoundException("No categories found in page: " + pageNumber);
        }

        return categories;
    }

    @Override
    public Counter getCategoryCount() {
        Session currentSession = sessionFactory.getCurrentSession();

        Query countQuery = currentSession.createQuery("Select count (c.id) from Category c");
        return new Counter((Long) countQuery.uniqueResult()) ;
    }

    @Override
    public Counter getCategoryProductsCount(int id) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query countQuery = currentSession.createQuery("select count (p.productId) from Product p where p.category.id=:categoryId");
        countQuery.setParameter("categoryId" , id);
        return new Counter((Long) countQuery.uniqueResult()) ;
    }

    @Override
    public List<ProductPrDisJSON> getCategoryProducts(int id, Integer limit, Integer pageNumber) {

        Session currentSession = sessionFactory.getCurrentSession();

        int paginateCount = 0;
        for (int i = 1; i < pageNumber; i++) {
            paginateCount += limit;
        }

        Query<Product> productQuery = currentSession.createQuery("select p from Product p where p.category.id=:categoryId", Product.class);
        productQuery.setParameter("categoryId" , id);
        productQuery.setFirstResult(paginateCount);
        productQuery.setMaxResults(limit);
        List<Product> products = productQuery.getResultList();

        if (products.size() == 0) {
            throw new NotFoundException("Products not found with category id: " + id);
        }

        List<ProductPrDisJSON> productPrDisJSONS = new ArrayList<>();

        for (int i = 0; i < products.size(); i++) {
            ProductPrDisJSON productPrDisJSON = new ProductPrDisJSON();
            productPrDisJSON.setProduct(products.get(i));

            List<ProductPatch> productPatches = new ArrayList<>(products.get(i).getPatches());
            if (productPatches.size() == 0)
            {
                productPrDisJSON.setPrice(0);
            } else {
                productPrDisJSON.setPrice(productPatches.get(0).getSellPrice());
            }

            List<Offer> offers = new ArrayList<>(products.get(i).getOffers());
            if (offers.size() == 0)
            {
                productPrDisJSON.setDiscount(0);
            } else {
                productPrDisJSON.setDiscount(offers.get(0).getDiscount());
            }

            productPrDisJSONS.add(productPrDisJSON);
        }

        return productPrDisJSONS;
    }

    @Override
    public List<Category> getCategories() {
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query  ... sort by last name
        Query<Category> theQuery =
                currentSession.createQuery("select c from Category c",
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
    public SearchCounter getSearchCount(String keyWord) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query countProductQuery = currentSession.createQuery("select count (p.productId) from Product p where p.productName like:keyWord");
        countProductQuery.setParameter("keyWord" , "%"+keyWord+"%");
        long productCount = (Long) countProductQuery.uniqueResult();

        Query countCategoryQuery = currentSession.createQuery("select count (c.id) from Category c where c.name like :keyWord");
        countCategoryQuery.setParameter("keyWord" , "%"+keyWord+"%");
        long categoryCount = (Long) countCategoryQuery.uniqueResult();

        return new SearchCounter(categoryCount, productCount) ;
    }



    @Override
    public SearchJSON search(String keyWord, Integer limit, Integer pageNumber) {
        Session currentSession = sessionFactory.getCurrentSession();

        int productPaginateCount = 0;
        for (int i = 1; i < pageNumber; i++) {
            productPaginateCount += limit;
        }

        Query<Product> productQuery = currentSession.createQuery("select p from Product p where p.productName like:keyWord", Product.class);
        productQuery.setParameter("keyWord" , "%"+keyWord+"%");
        productQuery.setFirstResult(productPaginateCount);
        productQuery.setMaxResults(limit);
        List<Product> products = productQuery.getResultList();


        int categoryPaginateCount = 0;
        for (int i = 1; i < pageNumber; i++) {
            categoryPaginateCount += limit;
        }

        Query<Category>  categoryQuery = currentSession.createQuery("select c from Category c where c.name like :keyWord", Category.class);
        categoryQuery.setParameter("keyWord" , "%"+keyWord+"%");
        categoryQuery.setFirstResult(categoryPaginateCount);
        categoryQuery.setMaxResults(limit);
        List<Category> categories = categoryQuery.getResultList();

        SearchJSON searchJSON = new SearchJSON();
        searchJSON.setCategories(categories);
        searchJSON.setProducts(products);

        return searchJSON;
    }

}











