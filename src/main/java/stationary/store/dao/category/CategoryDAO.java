package stationary.store.dao.category;

import stationary.store.model.Category;
import stationary.store.utilities.json.Counter;
import stationary.store.utilities.json.ProductPrDisJSON;
import stationary.store.utilities.json.SearchCounter;
import stationary.store.utilities.json.SearchJSON;

import java.util.List;

public interface CategoryDAO {

    List<Category> getCategories();

    List<Category> getCategories(Integer limit, Integer pageNumber);

    Counter getCategoryCount();

    Counter getCategoryProductsCount(int id);

    List<ProductPrDisJSON> getCategoryProducts(int id, Integer limit, Integer pageNumber);

    SearchCounter getSearchCount(String keyWord);

    SearchJSON search(String keyWord, Integer limit, Integer pageNumber);

    void saveCategory(Category Category);

    Category getCategory(int id);

    void deleteCategory(int id);

}
