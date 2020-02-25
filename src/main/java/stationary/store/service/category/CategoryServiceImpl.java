package stationary.store.service.category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import stationary.store.dao.category.CategoryDAO;
import stationary.store.model.Category;
import stationary.store.utilities.json.Counter;
import stationary.store.utilities.json.ProductPrDisJSON;
import stationary.store.utilities.json.SearchCounter;
import stationary.store.utilities.json.SearchJSON;
import java.util.List;


@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryDAO categoryDAO;

    @Override
    @Transactional
    public List<Category> getCategories() {
        return categoryDAO.getCategories();
    }

    @Override
    @Transactional
    public Counter getCategoryCount() {
        return categoryDAO.getCategoryCount();
    }

    @Override
    @Transactional
    public List<Category> getCategories(Integer limit, Integer pageNumber) {
        return categoryDAO.getCategories(limit, pageNumber);
    }

    @Override
    @Transactional
    public Counter getCategoryProductsCount(int id) {
        return categoryDAO.getCategoryProductsCount(id);
    }

    @Override
    @Transactional
    public List<ProductPrDisJSON> getCategoryProducts(int id, Integer limit , Integer pageNumber) {
        return categoryDAO.getCategoryProducts(id , limit , pageNumber);
    }

    @Override
    @Transactional
    public SearchJSON search(String keyWord, Integer limit, Integer pageNumber) {
        return categoryDAO.search(keyWord , limit , pageNumber);
    }

    @Override
    @Transactional
    public SearchCounter getSearchCount(String keyWord) {
        return categoryDAO.getSearchCount(keyWord);
    }

    @Override
    @Transactional
    public void saveCategory(Category theCategory) {

        categoryDAO.saveCategory(theCategory);
    }

    @Override
    @Transactional
    public Category getCategory(int theId) {

        return categoryDAO.getCategory(theId);
    }

    @Override
    @Transactional
    public void deleteCategory(int theId) {

        categoryDAO.deleteCategory(theId);
    }
}





