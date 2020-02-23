package stationary.store.dao.classifiedProduct;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;
import stationary.store.utilities.json.ClassifiedProduct;
import stationary.store.utilities.json.GradeProductsJSON;
import stationary.store.utilities.json.Product;

import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.List;

@Repository
public class ClassifiedProductDAOImpl implements ClassifiedProductDAO {

    // need to inject the session factory
    @Autowired
    private SessionFactory sessionFactory;

    int paginatedCount = 0;

    @Override
    public List<stationary.store.model.ClassifiedProduct> getClassifiedProducts() {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query  ... sort by last name
        Query<stationary.store.model.ClassifiedProduct> theQuery =
                currentSession.createQuery("from ClassifiedProduct",
                        stationary.store.model.ClassifiedProduct.class);

        // execute query and get result list
        List<stationary.store.model.ClassifiedProduct> ClassifiedProducts = theQuery.getResultList();

        // return the results
        return ClassifiedProducts;
    }



    @Override
    public void saveClassifiedProduct(stationary.store.model.ClassifiedProduct theClassifiedProduct) {

        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // save/upate the ClassifiedProduct ... finally LOL
        currentSession.saveOrUpdate(theClassifiedProduct);

    }

    @Override
    public stationary.store.model.ClassifiedProduct getClassifiedProduct(int theId) {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // now retrieve/read from database using the primary key
        stationary.store.model.ClassifiedProduct theClassifiedProduct = currentSession.get(stationary.store.model.ClassifiedProduct.class, theId);

        return theClassifiedProduct;
    }

    @Override
    public void deleteClassifiedProduct(int theId) {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // delete object with primary key
        Query theQuery =
                currentSession.createQuery("delete from ClassifiedProduct where id=:classifiedProductId");
        theQuery.setParameter("classifiedProductId", theId);

        theQuery.executeUpdate();
    }

    @Override
    public List<GradeProductsJSON> getGradeProducts(int id, Integer limit) {
        Session currentSession = sessionFactory.getCurrentSession();

        String queryStr = "select c from ClassifiedProduct c where c.grade.gradeId=:gradeId";
        TypedQuery<stationary.store.model.ClassifiedProduct> query = currentSession.createQuery(queryStr, stationary.store.model.ClassifiedProduct.class);
        query.setParameter("gradeId" , id);
        query.setFirstResult(paginatedCount);
        query.setMaxResults(limit);
        List<stationary.store.model.ClassifiedProduct> classifiedProducts = query.getResultList();


        paginatedCount += limit;

        int size = (classifiedProducts.size() / limit) + 1;

        if(size == 1) {
            paginatedCount = 0;
        }

        List<GradeProductsJSON> gradeProductsJSONS = new ArrayList<>();
        for (int i = 0; i < classifiedProducts.size(); i++) {
            GradeProductsJSON gradeProductsJSON = new GradeProductsJSON();

            ClassifiedProduct classifiedProduct = new ClassifiedProduct();
            classifiedProduct.setClassifiedProductId(classifiedProducts.get(i).getId());
            classifiedProduct.setGradeId(classifiedProducts.get(i).getGrade().getGradeId());
            classifiedProduct.setQuantity(classifiedProducts.get(i).getQuantity());

            Product product = new Product();
            product.setProductId(classifiedProducts.get(i).getProduct().getProductId());
            product.setProductName(classifiedProducts.get(i).getProduct().getProductName());
            product.setDescription(classifiedProducts.get(i).getProduct().getDescription());
            product.setMinStock(classifiedProducts.get(i).getProduct().getMinStock());

            classifiedProduct.setProduct(product);

            gradeProductsJSON.setClassifiedProduct(classifiedProduct);

            if (classifiedProducts.get(i).getProduct().getOffers().size() == 0) {
                gradeProductsJSON.setDiscount(0);
            } else {
                gradeProductsJSON.setDiscount(classifiedProducts.get(i).getProduct().getOffers().get(0).getDiscount());
            }

            if (classifiedProducts.get(i).getProduct().getPatches().size() == 0) {
                gradeProductsJSON.setPrice(0);
            } else {
                gradeProductsJSON.setPrice(classifiedProducts.get(i).getProduct().getPatches().get(0).getSellPrice());
            }

            gradeProductsJSONS.add(gradeProductsJSON);
        }



        return gradeProductsJSONS;
    }

}











