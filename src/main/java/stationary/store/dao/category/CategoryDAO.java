package stationary.store.dao.category;

import stationary.store.model.Category;
import stationary.store.model.Product;
import stationary.store.utilities.json.ProductsInCategoryJSON;

import java.util.List;
import java.util.Map;

public interface CategoryDAO {

    List<Category> getCategories();

    List<ProductsInCategoryJSON> getCategoryProducts(int id, Integer limit);

    Map<Category , Product> search(String search, Integer limit);

    List<Product> getCategoryProductsList(int id, Integer limit);

    List<Category> getCategories(Integer limit);

    void saveCategory(Category Category);

    Category getCategory(int id);

    void deleteCategory(int id);

}
