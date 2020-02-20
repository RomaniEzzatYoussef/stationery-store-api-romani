package stationary.store.service.classifiedProduct;

import stationary.store.model.ClassifiedProduct;
import stationary.store.utilities.json.GradeProductsJSON;

import java.util.List;


public interface ClassifiedProductService {

    List<ClassifiedProduct> getClassifiedProducts();

    List<GradeProductsJSON> getGradeProducts(int id);

    void saveClassifiedProduct(ClassifiedProduct theClassifiedProduct);

    ClassifiedProduct getClassifiedProduct(int theId);

    void deleteClassifiedProduct(int theId);

}
