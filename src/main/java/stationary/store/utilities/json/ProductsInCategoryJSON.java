package stationary.store.utilities.json;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import stationary.store.model.Product;


@JsonInclude(JsonInclude.Include.NON_EMPTY)
@JsonIgnoreProperties(ignoreUnknown = true)
public class ProductsInCategoryJSON {

    private ProductJSON product;
    private double discount;
    private double price;

    public ProductsInCategoryJSON() {
    }

    public ProductJSON getProduct() {
        return product;
    }

    public void setProduct(ProductJSON product) {
        this.product = product;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
