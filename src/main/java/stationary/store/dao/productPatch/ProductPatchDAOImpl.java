package stationary.store.dao.productPatch;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import stationary.store.model.Cart;
import stationary.store.model.ProductPatch;
import stationary.store.utilities.exceptions.NotFoundException;

import java.util.List;

@Repository
public class ProductPatchDAOImpl implements ProductPatchDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<ProductPatch> getProductPatches() {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<ProductPatch> theQuery =
                currentSession.createQuery("select p from ProductPatch p order by p.dateIn",
                        ProductPatch.class);

        List<ProductPatch> ProductPatches = theQuery.getResultList();

        return ProductPatches;
    }

    @Override
    public void saveProductPatch(ProductPatch theProductPatch) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(theProductPatch);

    }

    @Override
    public ProductPatch getProductPatch(int theId) {

        Session currentSession = sessionFactory.getCurrentSession();
        ProductPatch theProductPatch = currentSession.get(ProductPatch.class, theId);

        return theProductPatch;
    }

    @Override
    public ProductPatch getProductPatchByProductId(int productId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<ProductPatch> productPatchQuery = currentSession.createQuery("select p from ProductPatch p where p.product.productId =: productId order by p.dateIn desc", ProductPatch.class);
        productPatchQuery.setParameter("productId" , productId);
        List<ProductPatch> productPatches = productPatchQuery.getResultList();

        if (productPatches.size() == 0) {
            throw new NotFoundException("ProductPatch not found with product id: " + productId);
        }

        return productPatches.get(0);
    }

    @Override
    public void deleteProductPatch(int theId) {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // delete object with primary key
        Query theQuery =
                currentSession.createQuery("delete from ProductPatch where id=:productPatchId");
        theQuery.setParameter("productPatchId", theId);

        theQuery.executeUpdate();
    }

}











