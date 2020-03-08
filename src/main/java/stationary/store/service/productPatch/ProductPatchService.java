package stationary.store.service.productPatch;

import stationary.store.model.ProductPatch;

import java.util.List;


public interface ProductPatchService {

    List<ProductPatch> getProductPatches();

    void saveProductPatch(ProductPatch theProductPatch);

    ProductPatch getProductPatch(int theId);

    ProductPatch getProductPatchByProductId(int productId);

    void deleteProductPatch(int theId);

}
