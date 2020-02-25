package stationary.store.service.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import stationary.store.dao.product.ProductDAO;
import stationary.store.model.Product;
import stationary.store.utilities.json.ProductPrDisJSON;

import java.util.List;


@Service
public class ProductServiceImpl implements ProductService {

    // need to inject product dao
    @Autowired
    private ProductDAO productDAO;

    @Override
    @Transactional
    public List<Product> getProducts() {
        return productDAO.getProducts();
    }

    @Override
    @Transactional
    public List<Product> getProducts(Integer id, Integer limit) {
        return productDAO.getProducts(id , limit);
    }

    @Override
    @Transactional
    public List<Product> getBestSellers( Integer limit){
        return productDAO.getBestSellers(limit);
    }

    @Override
    @Transactional
    public List<ProductPrDisJSON> getBestSellerProducts(Integer limit) {
        return productDAO.getBestSellerProducts(limit);
    }


    @Override
    @Transactional
    public void saveProduct(Product theProduct) {

        productDAO.saveProduct(theProduct);
    }

    @Override
    @Transactional
    public Product getProduct(int theId) {

        return productDAO.getProduct(theId);
    }

    @Override
    @Transactional
    public ProductPrDisJSON getProductWithID(int id) {
        return productDAO.getProductWithID(id);
    }

    @Override
    @Transactional
    public void deleteProduct(int theId) {

        productDAO.deleteProduct(theId);
    }
}





