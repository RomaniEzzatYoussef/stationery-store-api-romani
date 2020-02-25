package stationary.store.dao.offer;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import stationary.store.model.Offer;
import stationary.store.model.ProductPatch;
import stationary.store.utilities.exceptions.NotFoundException;
import stationary.store.utilities.json.Counter;
import stationary.store.utilities.json.OfferJSON;
import java.util.*;

@Repository
public class OfferDAOImpl implements OfferDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Offer> getOffers() {
        Session currentSession = sessionFactory.getCurrentSession();

        Query<Offer> offerQuery = currentSession.createQuery("select o from Offer o", Offer.class);

        List<Offer> offers = offerQuery.getResultList();

        return offers;
    }

    @Override
    public Counter getOfferCount() {
        Session currentSession = sessionFactory.getCurrentSession();

        Query countQuery = currentSession.createQuery("select count (o.offerId) from Offer o");
        return new Counter((Long) countQuery.uniqueResult()) ;
    }

    @Override
    public List<OfferJSON> getOffers(Integer limit , Integer pageNumber) {
        Session currentSession = sessionFactory.getCurrentSession();

        int paginateCount = 0;
        for (int i = 1; i < pageNumber; i++) {
            paginateCount += limit;
        }

        Query<Offer> offerQuery = currentSession.createQuery("select o from Offer o ", Offer.class);
        offerQuery.setFirstResult(paginateCount);
        offerQuery.setMaxResults(limit);
        List<Offer> offers = offerQuery.getResultList();

        if (offers.size() == 0) {
            throw new NotFoundException("No offers found in page: " + pageNumber);
        }


        List<OfferJSON> offerJSONS = new ArrayList<>();

        for (int i = 0; i < offers.size(); i++) {
            OfferJSON offerJSON = new OfferJSON();

            offerJSON.setOffer(offers.get(i));
            List<ProductPatch> productPatches = new ArrayList<>( offers.get(i).getProduct().getPatches());
            if (productPatches.size() == 0)
            {
                offerJSON.setPrice(0);
            } else {
                offerJSON.setPrice(productPatches.get(0).getSellPrice());
            }

            offerJSONS.add(offerJSON);
        }

        return offerJSONS;
    }



    @Override
    public void saveOffer(Offer offer) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(offer);
    }

    @Override
    public Offer getOffer(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        Offer offer = currentSession.get(Offer.class, id);

        return offer;
    }

    @Override
    public void deleteOffer(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query query = currentSession.createQuery("delete from Offer where id=:offerId");
        query.setParameter("offerId", id);

        query.executeUpdate();
    }
}







