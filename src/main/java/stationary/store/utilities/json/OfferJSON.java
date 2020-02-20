package stationary.store.utilities.json;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

@JsonInclude(JsonInclude.Include.NON_EMPTY)
@JsonIgnoreProperties(ignoreUnknown = true)
public class OfferJSON {

    private int offerId;
    private int productId;
    private String productName;
    private String imageUrl;
    private double discount;

    public OfferJSON() {
    }

    public OfferJSON(int offerId, int productId, String productName, String imageUrl, double discount) {
        this.offerId = offerId;
        this.productId = productId;
        this.productName = productName;
        this.imageUrl = imageUrl;
        this.discount = discount;
    }

    public int getOfferId() {
        return offerId;
    }

    public void setOfferId(int offerId) {
        this.offerId = offerId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }
}
