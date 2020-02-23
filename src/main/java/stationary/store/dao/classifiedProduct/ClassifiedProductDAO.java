package stationary.store.dao.classifiedProduct;

import org.springframework.web.bind.annotation.RequestParam;
import stationary.store.model.ClassifiedProduct;
import stationary.store.utilities.json.GradeProductsJSON;

import java.util.List;

public interface ClassifiedProductDAO {

    List<ClassifiedProduct> getClassifiedProducts();

    List<GradeProductsJSON> getGradeProducts(int id, Integer limit);

    void saveClassifiedProduct(ClassifiedProduct ClassifiedProduct);

    ClassifiedProduct getClassifiedProduct(int id);

    void deleteClassifiedProduct(int id);

}
