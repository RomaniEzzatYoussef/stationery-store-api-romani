package stationary.store.utilities.json;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

@JsonInclude(JsonInclude.Include.NON_EMPTY)
@JsonIgnoreProperties(ignoreUnknown = true)
public class ClassifiedProductJSON {
    private int classifiedProductId;
    private int quantity;
    private int gradeId;
    private ProductJSON productJSON;

    public ClassifiedProductJSON() {
    }

    public int getClassifiedProductId() {
        return classifiedProductId;
    }

    public void setClassifiedProductId(int classifiedProductId) {
        this.classifiedProductId = classifiedProductId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getGradeId() {
        return gradeId;
    }

    public void setGradeId(int gradeId) {
        this.gradeId = gradeId;
    }

    public ProductJSON getProductJSON() {
        return productJSON;
    }

    public void setProductJSON(ProductJSON productJSON) {
        this.productJSON = productJSON;
    }
}
