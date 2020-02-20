package stationary.store.dao.category;

import stationary.store.model.Category;
import stationary.store.model.Product;
import stationary.store.utilities.json.ProductsInCategoryJSON;

import java.util.List;

public interface CategoryDAO {

    List<Category> getCategories();

    List<ProductsInCategoryJSON> getCategoryProducts(int id);

    List<Category> getCategories(Integer limit);

    void saveCategory(Category Category);

    Category getCategory(int id);

    void deleteCategory(int id);

}
