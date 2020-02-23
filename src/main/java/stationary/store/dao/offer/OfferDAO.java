package stationary.store.dao.offer;

import stationary.store.model.Offer;
import stationary.store.utilities.json.OfferJSON;

import java.util.List;

public interface OfferDAO {

    List<Offer> getOffers(Integer limit);

    List<OfferJSON> getAllOffers();

    void saveOffer(Offer Offer);

    Offer getOffer(int id);

    void deleteOffer(int id);

}
