package stationary.store.dao.product;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.graph.EntityGraphs;
import org.hibernate.graph.GraphParser;
import org.hibernate.graph.RootGraph;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import stationary.store.model.Offer;
import stationary.store.model.Product;
import stationary.store.model.ProductPatch;
import stationary.store.utilities.exceptions.NotFoundException;
import stationary.store.utilities.json.ProductPrDisJSON;

import javax.persistence.EntityGraph;
import javax.persistence.EntityManager;
import java.util.ArrayList;
import java.util.List;

@Repository
public class ProductDAOImpl implements ProductDAO {

    int paginatedCount = 0;
    int paginatedCountProduct = 0;

    // need to inject the session factory
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Product> getProducts() {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query  ... sort by last name
        Query<Product> theQuery =
                currentSession.createQuery("select p from Product p",
                        Product.class);

        // execute query and get result list
        List<Product> Products = theQuery.getResultList();

        // return the results
        return Products;
    }

    @Override
    public List<Product> getProducts(Integer id, Integer limit) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<Product> productQuery = currentSession.createQuery("select p from Product p where p.productId = :id", Product.class);
        productQuery.setParameter("id" , id);
        productQuery.setFirstResult(paginatedCountProduct);
        productQuery.setMaxResults(limit);
        List<Product> products = productQuery.getResultList();

        if (products == null) {
            throw new NotFoundException("Product not found with id: " + id);
        }

        paginatedCountProduct += limit;

        int pageSize;

        if (limit > products.size()) {
            pageSize = 1;

        } else {
            pageSize = (products.size() / limit) + 1;
        }

        if (pageSize == 1) {
            paginatedCountProduct = 0;
        }

        return products;
    }

    @Override
    public void saveProduct(Product theProduct) {

        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // save/upate the Product ... finally LOL
        currentSession.saveOrUpdate(theProduct);

    }

    @Override
    public Product getProduct(int id) {

        Session currentSession = sessionFactory.getCurrentSession();
        Product product = currentSession.get(Product.class, id);

        if (product == null) {
            throw new NotFoundException("Product not found with this id: " + id);
        }

        return product;
    }

    @Override
    public ProductPrDisJSON getProductWithID(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        Product product = currentSession.get(Product.class, id);

        if (product == null) {
            throw new NotFoundException("Product not found with this id: " + id);
        }

        ProductPrDisJSON productPrDisJSON = new ProductPrDisJSON();
        productPrDisJSON.setProduct(product);

        List<ProductPatch> productPatches = new ArrayList<>( product.getPatches());
        if (productPatches.size() == 0)
        {
            productPrDisJSON.setPrice(0);
        } else {
            productPrDisJSON.setPrice(productPatches.get(0).getSellPrice());
        }

        List<Offer> offers = new ArrayList<>( product.getOffers());
        if (offers.size() == 0)
        {
            productPrDisJSON.setDiscount(0);
        } else {
            productPrDisJSON.setDiscount(offers.get(0).getDiscount());
        }

        return productPrDisJSON;
    }

    @Override
    public void deleteProduct(int theId) {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // delete object with primary key
        Query theQuery =
                currentSession.createQuery("delete from Product where id=:productId");
        theQuery.setParameter("productId", theId);

        theQuery.executeUpdate();
    }

    //extra methods


    @Override
    public List<Product> getBestSellers(Integer limit) {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        RootGraph graph1 = GraphParser.parse(Product.class, "offers", currentSession);
        RootGraph graph2 = GraphParser.parse(Product.class, "patches", currentSession);
        RootGraph graph3 = GraphParser.parse(Product.class, "imageUrl", currentSession);
        EntityGraph graph = EntityGraphs.merge((EntityManager) currentSession, Product.class, new RootGraph[]{graph1, graph2, graph3});

//        Query<Product> theQuery =
//                currentSession.createQuery("select oi.product as oip from OrderItem oi " +
//                                "group by oi.product " +
//                                "order by sum(oi.quantity) desc" ,
//                        Product.class);

        Query<Product> theQuery =
                currentSession.createQuery("select p from Product p" ,
                        Product.class);


        if(limit!=null){
            theQuery = theQuery.setMaxResults(limit);
        }

        // execute query and get result list
        List<Product> products = theQuery.setHint("javax.persistence.fetchgraph", graph)
                .getResultList();

        // return the results
        return products;
    }

    @Override
    public List<ProductPrDisJSON> getBestSellerProducts(Integer limit) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query<Product> productQuery = currentSession.createQuery("select distinct oi.product from OrderItem oi", Product.class);
        productQuery.setFirstResult(paginatedCount);
        productQuery.setMaxResults(limit);
        List<Product> products = productQuery.getResultList();

        paginatedCount += limit;

        int pageSize;

        if (limit > products.size()) {
             pageSize = 1;

        } else {
            pageSize = (products.size() / limit) + 1;
        }

        if (pageSize == 1) {
            paginatedCount = 0;
        }

        List<ProductPrDisJSON> bestSellerJSONS = new ArrayList<>();

        for (int i = 0; i < products.size(); i++) {
            ProductPrDisJSON bestSellerJSON = new ProductPrDisJSON();

            bestSellerJSON.setProduct(products.get(i));

            List<ProductPatch> productPatches = new ArrayList<>( products.get(i).getPatches());
            if (productPatches.size() == 0)
            {
                bestSellerJSON.setPrice(0);
            } else {
                bestSellerJSON.setPrice(productPatches.get(0).getSellPrice());
            }

            List<Offer> offers = new ArrayList<>( products.get(i).getOffers());
            if (offers.size() == 0)
            {
                bestSellerJSON.setDiscount(0);
            } else {
                bestSellerJSON.setDiscount(offers.get(0).getDiscount());
            }

            bestSellerJSONS.add(bestSellerJSON);
        }

        return bestSellerJSONS;
    }


}











