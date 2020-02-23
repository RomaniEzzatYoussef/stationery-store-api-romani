package stationary.store.service.category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import stationary.store.dao.category.CategoryDAO;
import stationary.store.model.Category;
import stationary.store.model.Product;
import stationary.store.utilities.json.ProductsInCategoryJSON;

import java.util.List;
import java.util.Map;


@Service
public class CategoryServiceImpl implements CategoryService {

    // need to inject Category dao
    @Autowired
    private CategoryDAO categoryDAO;

    @Override
    @Transactional
    public List<Category> getCategories() {
        return categoryDAO.getCategories();
    }

    @Override
    @Transactional
    public List<ProductsInCategoryJSON> getCategoryProducts(int id,  Integer limit) {
        return categoryDAO.getCategoryProducts(id , limit);
    }

    @Override
    @Transactional
    public Map<Category, Product> search(String search, Integer limit) {
        return categoryDAO.search(search, limit);
    }

    @Override
    @Transactional
    public List<Product> getCategoryProductsList(int id, Integer limit) {
        return categoryDAO.getCategoryProductsList(id , limit);
    }

    @Override
    @Transactional
    public List<Category> getCategories(int limit) {
        return categoryDAO.getCategories(limit);
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





