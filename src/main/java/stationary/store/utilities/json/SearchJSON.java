package stationary.store.utilities.json;

import stationary.store.model.Category;
import stationary.store.model.Product;

import java.util.List;

public class SearchJSON {

    private List<Category> categories;
    private List<Product> products;

    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
