package stationary.store.dao.offer;

import stationary.store.model.Offer;
import stationary.store.utilities.json.Counter;
import stationary.store.utilities.json.OfferJSON;

import java.util.List;

public interface OfferDAO {

    List<Offer> getOffers();

    Counter getOfferCount();

    List<OfferJSON> getOffers(Integer limit, Integer pageNumber);

    void saveOffer(Offer Offer);

    Offer getOffer(int id);

    void deleteOffer(int id);

}
