package stationary.store.dao.classifiedProduct;

import stationary.store.model.ClassifiedProduct;
import stationary.store.utilities.json.GradeProductsJSON;

import java.util.List;

public interface ClassifiedProductDAO {

    List<ClassifiedProduct> getClassifiedProducts();

    List<GradeProductsJSON> getGradeProducts(int id);

    void saveClassifiedProduct(ClassifiedProduct ClassifiedProduct);

    ClassifiedProduct getClassifiedProduct(int id);

    void deleteClassifiedProduct(int id);

}
