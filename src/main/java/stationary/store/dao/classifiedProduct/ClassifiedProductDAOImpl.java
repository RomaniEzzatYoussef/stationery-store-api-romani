package stationary.store.dao.classifiedProduct;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import stationary.store.dao.classifiedProduct.ClassifiedProductDAO;
import stationary.store.model.ClassifiedProduct;
import stationary.store.model.Offer;
import stationary.store.utilities.json.ClassifiedProductJSON;
import stationary.store.utilities.json.GradeProductsJSON;
import stationary.store.utilities.json.OfferJSON;
import stationary.store.utilities.json.ProductJSON;

import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.List;

@Repository
public class ClassifiedProductDAOImpl implements ClassifiedProductDAO {

    // need to inject the session factory
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
    public List<GradeProductsJSON> getGradeProducts(int id) {
        Session currentSession = sessionFactory.getCurrentSession();

        String queryStr = "select c from ClassifiedProduct c where c.grade.gradeId=:gradeId";
        TypedQuery<ClassifiedProduct> query = currentSession.createQuery(queryStr, ClassifiedProduct.class);
        query.setParameter("gradeId" , id);
        List<ClassifiedProduct> classifiedProducts = query.getResultList();


        List<GradeProductsJSON> gradeProductsJSONS = new ArrayList<>();
        for (int i = 0; i < classifiedProducts.size(); i++) {
            GradeProductsJSON gradeProductsJSON = new GradeProductsJSON();

            ClassifiedProductJSON classifiedProductJSON = new ClassifiedProductJSON();
            classifiedProductJSON.setClassifiedProductId(classifiedProducts.get(i).getId());
            classifiedProductJSON.setGradeId(classifiedProducts.get(i).getGrade().getGradeId());
            classifiedProductJSON.setQuantity(classifiedProducts.get(i).getQuantity());

            ProductJSON productJSON = new ProductJSON();
            productJSON.setProductId(classifiedProducts.get(i).getProduct().getProductId());
            productJSON.setProductName(classifiedProducts.get(i).getProduct().getProductName());
            productJSON.setDescription(classifiedProducts.get(i).getProduct().getDescription());
            productJSON.setMinStock(classifiedProducts.get(i).getProduct().getMinStock());

            classifiedProductJSON.setProductJSON(productJSON);

            gradeProductsJSON.setClassifiedProductJSON(classifiedProductJSON);

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











