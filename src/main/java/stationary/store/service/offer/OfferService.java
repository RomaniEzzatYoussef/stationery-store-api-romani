package stationary.store.service.offer;

import stationary.store.model.Offer;
import stationary.store.utilities.json.OfferJSON;

import java.util.List;


public interface OfferService {

    List<Offer> getOffers(Integer limit);

    List<OfferJSON> getAllOffers();

    void saveOffer(Offer theOffer);

    Offer getOffer(int theId);

    void deleteOffer(int theId);

}
