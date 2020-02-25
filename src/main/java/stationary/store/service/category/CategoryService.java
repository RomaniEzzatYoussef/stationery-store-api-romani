package stationary.store.service.category;

import stationary.store.model.Category;
import stationary.store.utilities.json.Counter;
import stationary.store.utilities.json.ProductPrDisJSON;
import stationary.store.utilities.json.SearchCounter;
import stationary.store.utilities.json.SearchJSON;

import java.util.List;

public interface CategoryService {

    List<Category> getCategories();

    Counter getCategoryCount();

    List<Category> getCategories(Integer limit, Integer pageNumber);

    Counter getCategoryProductsCount(int id);

    List<ProductPrDisJSON> getCategoryProducts(int id, Integer limit, Integer pageNumber);

    SearchJSON search(String keyWord, Integer limit, Integer pageNumber);

    SearchCounter getSearchCount(String keyWord);

    void saveCategory(Category theCategory);

    Category getCategory(int theId);

    void deleteCategory(int theId);

}
