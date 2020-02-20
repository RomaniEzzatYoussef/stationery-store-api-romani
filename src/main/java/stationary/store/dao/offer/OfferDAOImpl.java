package stationary.store.dao.offer;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import stationary.store.dao.offer.OfferDAO;
import stationary.store.model.Offer;
import stationary.store.utilities.json.OfferJSON;

import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.List;

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

    @Override
    public List<OfferJSON> getAllOffers() {
        Session currentSession = sessionFactory.getCurrentSession();

        String queryStr = "select o from Offer o";
        TypedQuery<Offer> query = currentSession.createQuery(queryStr, Offer.class);
        List<Offer> offers = query.getResultList();

        List<OfferJSON> offerJSONS = new ArrayList<>();
        for (int i = 0; i < offers.size(); i++) {
            OfferJSON offerJSON = new OfferJSON();

            offerJSON.setOfferId(offers.get(i).getOfferId());
            offerJSON.setProductId(offers.get(i).getProduct().getProductId());
            offerJSON.setProductName(offers.get(i).getProduct().getProductName());

            if (offers.get(i).getProduct().getImageUrl().size() == 0)
            {
                offerJSON.setImageUrl(null);
            } else {
                offerJSON.setImageUrl(offers.get(i).getProduct().getImageUrl().get(0).getImageUrl());
            }

            offerJSON.setDiscount(offers.get(i).getDiscount());

            offerJSONS.add(offerJSON);
        }


        return offerJSONS;
    }

}







