package stationary.store.service.category;

import stationary.store.model.Category;
import stationary.store.model.Product;
import stationary.store.utilities.json.ProductsInCategoryJSON;

import java.util.List;


public interface CategoryService {

    List<Category> getCategories();

    List<ProductsInCategoryJSON> getCategoryProducts(int id);

    List<Category> getCategories(int limit);

    void saveCategory(Category theCategory);

    Category getCategory(int theId);

    void deleteCategory(int theId);

}
