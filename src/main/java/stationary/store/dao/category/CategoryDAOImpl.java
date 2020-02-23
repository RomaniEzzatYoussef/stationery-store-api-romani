package stationary.store.dao.category;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import stationary.store.model.Category;
import stationary.store.utilities.exceptions.NotFoundException;
import stationary.store.utilities.json.Product;
import stationary.store.utilities.json.ProductsInCategoryJSON;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

    private int paginatedCount = 0;
    private int paginatedSearchCount = 0;

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
    public List<ProductsInCategoryJSON> getCategoryProducts(int id,  Integer limit) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query<stationary.store.model.Product> productQuery = currentSession.createQuery("select p from Product p where p.category.id=:categoryId", stationary.store.model.Product.class);
        productQuery.setParameter("categoryId" , id);
        productQuery.setFirstResult(paginatedCount);
        productQuery.setMaxResults(limit);
        List<stationary.store.model.Product> products = productQuery.getResultList();

        paginatedCount += limit;

        int size = (products.size() / limit) + 1;

        if(size == 1) {
            paginatedCount = 0;
        }

        if (products.size() == 0) {
            throw new NotFoundException("Products not found with category id: " + id);
        }

        List<ProductsInCategoryJSON> productsInCategoryJSONS = new ArrayList<>();
        for (int i = 0; i < products.size(); i++) {
            ProductsInCategoryJSON productsInCategoryJSON = new ProductsInCategoryJSON();

            Product product = new Product();
            product.setProductId(products.get(i).getProductId());
            product.setProductName(products.get(i).getProductName());
            product.setDescription(products.get(i).getDescription());
            product.setMinStock(products.get(i).getMinStock());

            productsInCategoryJSON.setProduct(product);

            if (products.get(i).getPatches().size() == 0)
            {
                productsInCategoryJSON.setPrice(0);
            } else {
                productsInCategoryJSON.setPrice(products.get(i).getPatches().get(0).getSellPrice());
            }

            if (products.get(i).getOffers().size() == 0)
            {
                productsInCategoryJSON.setDiscount(0);
            } else {
                productsInCategoryJSON.setDiscount(products.get(i).getOffers().get(0).getDiscount());
            }

            productsInCategoryJSONS.add(productsInCategoryJSON);
        }

        return productsInCategoryJSONS;
    }

    @Override
    public Map<Category, stationary.store.model.Product> search(String search, Integer limit) {

        Session currentSession = sessionFactory.getCurrentSession();

        Query<stationary.store.model.Product> productQuery = currentSession.createQuery("select p from Product p where p.productName like :search", stationary.store.model.Product.class);
        productQuery.setParameter("search" , "%" + search + "%");
        productQuery.setFirstResult(paginatedSearchCount);
        productQuery.setMaxResults(limit);
        List<stationary.store.model.Product> products = productQuery.getResultList();

        Query<Category> categoryQuery = currentSession.createQuery("select c from Category c where c.name like :search", Category.class);
        productQuery.setParameter("search" , "%" + search + "%");
        productQuery.setFirstResult(paginatedSearchCount);
        productQuery.setMaxResults(limit);
        List<Category> categories = categoryQuery.getResultList();

        Map<Category, stationary.store.model.Product> categoryProductMap = null;

        if (products.size() > categories.size()){
            paginatedSearchCount += limit;

            int size = (products.size() / limit) + 1;

            if(size == 1) {
                paginatedSearchCount = 0;
            }

            for (int i = 0; i < products.size(); i++) {
                categoryProductMap.put(categories.get(i), products.get(i));
            }
        } else {

            paginatedSearchCount += limit;

            int size = (categories.size() / limit) + 1;

            if(size == 1) {
                paginatedSearchCount = 0;
            }

            for (int i = 0; i < categories.size(); i++) {
                categoryProductMap.put(categories.get(i), products.get(i));
            }
        }

        if (products.size() == 0 && categories.size() == 0) {
            throw new NotFoundException("there is no products or categories with: " + search);
        }

        return categoryProductMap;
    }

    @Override
    public List<stationary.store.model.Product> getCategoryProductsList(int id , Integer limit) {
        Session currentSession = sessionFactory.getCurrentSession();

//        CriteriaBuilder builder = currentSession.getCriteriaBuilder();
//        CriteriaQuery<stationary.store.model.Product> criteriaQuery = builder.createQuery(stationary.store.model.Product.class);
//        Root<stationary.store.model.Product> root = criteriaQuery.from(stationary.store.model.Product.class);
//        criteriaQuery.select(root);
//        criteriaQuery.where(builder.equal(root.get("category.id") , id));
//        Query<stationary.store.model.Product> query = currentSession.createQuery(criteriaQuery);
//        List<stationary.store.model.Product> products = query.getResultList();



        List results = currentSession.createCriteria(stationary.store.model.Product.class , "p")
                .createAlias("offers" , "o")
                .createAlias("patches" , "pat")
                .add(Restrictions.eq("category.id", id))
                .setProjection(Projections.projectionList()
                        .add(Projections.property("p.id") , "id")
                        .add(Projections.property("p.productName") , "productName")
                        .add(Projections.property("o.discount") , "discount")
                        .add(Projections.property("pat.sellPrice") , "price")).list();
        return results;
    }

}

