package stationary.store.rest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import stationary.store.model.*;
import stationary.store.service.category.CategoryService;
import stationary.store.service.classifiedProduct.ClassifiedProductService;
import stationary.store.service.grade.GradeService;
import stationary.store.service.gradeLevel.GradeLevelService;
import stationary.store.service.offer.OfferService;
import stationary.store.service.product.ProductService;
import stationary.store.service.user.UserService;
import stationary.store.utilities.exceptions.NotFoundException;
import stationary.store.utilities.json.GradeProductsJSON;
import stationary.store.utilities.json.ProductsInCategoryJSON;

import java.util.List;


@RestController
@RequestMapping("/api")
public class AppRestController {

    // autowire the UserService
    @Autowired
    private UserService userService;

    @Autowired
    private ProductService productService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private OfferService offerService;

    @Autowired
    private GradeLevelService gradeLevelService;

    @Autowired
    private GradeService gradeService;

    @Autowired
    private ClassifiedProductService classifiedProductService;


    @GetMapping("/product/bestseller")
    public List<Product> getBestSellers(@RequestParam int limit) {

        if(limit<1){
            throw new NotFoundException("Limit should be > 0 - your limit = " + limit);
        }

        List<Product> products = productService.getBestSellers(limit);

        return products;
    }

    @GetMapping("/category")
    public List<Category> getCategoriesWithLimit(@RequestParam(required = false) int limit) {

//        if(limit<1){
//            throw new NotFoundException("Limit should be > 0 - your limit = " + limit);
//        }

        List<Category> categories = categoryService.getCategories(limit);

        return categories;
    }

//    @GetMapping("/category")
//    public List<Category> getCategories() {
//
//        List<Category> categories = categoryService.getCategories();
//
//        return categories;
//    }

    // add mapping for GET /users
    @GetMapping("/users")
    public List<User> getUsers() {

        return userService.getUsers();

    }





    @GetMapping("/offer")
    public List<Offer> getOffers() {
        return offerService.getOffers();
    }

    @GetMapping("/category/{id}/products")
    public List<ProductsInCategoryJSON> getCategoryProducts(@PathVariable int id) {
        return categoryService.getCategoryProducts(id);
    }

    @GetMapping("/grade/levels")
    public List<GradeLevel> getGradeLevels() {
        return gradeLevelService.getGradeLevels();
    }

    @GetMapping("/grade/level/{id}")
    public List<Grade> getGradesByGradeLevel(@PathVariable int id) {
        return gradeService.getGradesByGradeLevel(id);
    }

    @GetMapping("/grade/{id}/products")
    public List<GradeProductsJSON> getGradeProducts(@PathVariable int id) {
        return classifiedProductService.getGradeProducts(id);
    }

}
	

	

















