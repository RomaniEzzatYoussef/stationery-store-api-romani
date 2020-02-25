package stationary.store.dao.classifiedProduct;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import stationary.store.model.ClassifiedProduct;
import stationary.store.model.Offer;
import stationary.store.model.Product;
import stationary.store.model.ProductPatch;
import stationary.store.utilities.json.GradeProductsJSON;

import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.List;

@Repository
public class ClassifiedProductDAOImpl implements ClassifiedProductDAO {


    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<ClassifiedProduct> getClassifiedProducts() {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query  ... sort by last name
        Query<ClassifiedProduct> theQuery =
                currentSession.createQuery("from ClassifiedProduct",
                        ClassifiedProduct.class);

        // execute query and get result list
        List<ClassifiedProduct> ClassifiedProducts = theQuery.getResultList();

        // return the results
        return ClassifiedProducts;
    }

    @Override
    public void saveClassifiedProduct(ClassifiedProduct theClassifiedProduct) {

        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // save/upate the ClassifiedProduct ... finally LOL
        currentSession.saveOrUpdate(theClassifiedProduct);

    }

    @Override
    public ClassifiedProduct getClassifiedProduct(int theId) {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // now retrieve/read from database using the primary key
        ClassifiedProduct theClassifiedProduct = currentSession.get(ClassifiedProduct.class, theId);

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
        TypedQuery<ClassifiedProduct> query = currentSession.createQuery(queryStr, stationary.store.model.ClassifiedProduct.class);
        query.setParameter("gradeId" , id);
        query.setFirstResult(0);
        query.setMaxResults(limit);
        List<ClassifiedProduct> classifiedProducts = query.getResultList();

        List<GradeProductsJSON> gradeProductsJSONS = new ArrayList<>();

        for (int i = 0; i < classifiedProducts.size(); i++) {
            GradeProductsJSON gradeProductsJSON = new GradeProductsJSON();

            gradeProductsJSON.setClassifiedProduct(classifiedProducts.get(i));

            List<ProductPatch> productPatches = new ArrayList<>(classifiedProducts.get(i).getProduct().getPatches());
            if (productPatches.size() == 0)
            {
                gradeProductsJSON.setPrice(0);
            } else {
                gradeProductsJSON.setPrice(productPatches.get(0).getSellPrice());
            }

            List<Offer> offers = new ArrayList<>(classifiedProducts.get(i).getProduct().getOffers());
            if (offers.size() == 0)
            {
                gradeProductsJSON.setDiscount(0);
            } else {
                gradeProductsJSON.setDiscount(offers.get(0).getDiscount());
            }


            gradeProductsJSONS.add(gradeProductsJSON);
        }



        return gradeProductsJSONS;
    }


}











