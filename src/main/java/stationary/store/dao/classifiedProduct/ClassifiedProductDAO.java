package stationary.store.dao.classifiedProduct;

import stationary.store.model.ClassifiedProduct;
import stationary.store.utilities.json.GradeProductsJSON;

import java.util.List;

public interface ClassifiedProductDAO {

    List<ClassifiedProduct> getClassifiedProducts();

    void saveClassifiedProduct(ClassifiedProduct ClassifiedProduct);

    List<GradeProductsJSON> getGradeProducts(int id, Integer limit);

    ClassifiedProduct getClassifiedProduct(int id);

    void deleteClassifiedProduct(int id);

}
