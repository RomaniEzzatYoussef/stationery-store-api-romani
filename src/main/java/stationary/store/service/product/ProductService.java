package stationary.store.service.product;

import stationary.store.model.Product;
import stationary.store.utilities.json.ProductPrDisJSON;

import java.util.List;


public interface ProductService {

    List<Product> getProducts();

    List<Product> getProducts(Integer id, Integer limit);

    List<Product> getBestSellers(Integer limit);

    List<ProductPrDisJSON> getBestSellerProducts(Integer limit);

    void saveProduct(Product theProduct);

    Product getProduct(int theId);

    ProductPrDisJSON getProductWithID(int id);

    void deleteProduct(int theId);

}
