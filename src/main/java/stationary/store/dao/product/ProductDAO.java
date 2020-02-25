package stationary.store.dao.product;

import stationary.store.model.Product;
import stationary.store.utilities.json.ProductPrDisJSON;

import java.util.List;

public interface ProductDAO {

    List<Product> getProducts();

    List<Product> getProducts(Integer id, Integer limit);

    List<Product> getBestSellers(Integer limit);

    List<ProductPrDisJSON> getBestSellerProducts(Integer limit);

    void saveProduct(Product Product);

    Product getProduct(int id);

    ProductPrDisJSON getProductWithID(int id);

    void deleteProduct(int id);

}
