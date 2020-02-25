package stationary.store.utilities.json;

import stationary.store.model.Offer;

public class OfferJSON {

    private Offer offer;
    private double price;

    public OfferJSON() {
    }

    public OfferJSON(Offer offer, double price) {
        this.offer = offer;
        this.price = price;
    }

    public Offer getOffer() {
        return offer;
    }

    public void setOffer(Offer offer) {
        this.offer = offer;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
