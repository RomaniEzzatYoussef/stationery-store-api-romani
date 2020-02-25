package stationary.store.service.offer;

import stationary.store.model.Offer;
import stationary.store.utilities.json.Counter;
import stationary.store.utilities.json.OfferJSON;

import java.util.List;


public interface OfferService {

    List<Offer> getOffers();

    Counter getOfferCount();

    List<OfferJSON> getOffers(Integer limit, Integer pageNumber);

    void saveOffer(Offer theOffer);

    Offer getOffer(int theId);

    void deleteOffer(int theId);

}
