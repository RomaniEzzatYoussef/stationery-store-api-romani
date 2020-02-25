package stationary.store.utilities.json;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import stationary.store.model.ClassifiedProduct;

@JsonInclude(JsonInclude.Include.NON_EMPTY)
@JsonIgnoreProperties(ignoreUnknown = true)
public class GradeProductsJSON {

    private ClassifiedProduct classifiedProduct;
    private double discount;
    private double price;

    public ClassifiedProduct getClassifiedProduct() {
        return classifiedProduct;
    }

    public void setClassifiedProduct(ClassifiedProduct classifiedProduct) {
        this.classifiedProduct = classifiedProduct;
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
