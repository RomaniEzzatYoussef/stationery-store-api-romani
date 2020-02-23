package stationary.store.rest;


import org.springframework.beans.factory.annotation.Autowired;
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
import java.util.Map;


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

    // add mapping for GET /users
    @GetMapping("/users")
    public List<User> getUsers() {

        return userService.getUsers();

    }

    @GetMapping("/product/bestseller")
    public List<Product> getBestSellers(@RequestParam(required = false) Integer limit) {
        List<Product> products;
        if (limit == null) {
            products = productService.getBestSellers(5);
        } else {
            products = productService.getBestSellers(limit);
        }


        return products;
    }

    @GetMapping("/category")
    public List<Category> getCategoriesWithLimit(@RequestParam(required = false) Integer limit) {

        List<Category> categories;

        if (limit == null) {
            categories = categoryService.getCategories(5);
        } else {
            categories = categoryService.getCategories(limit);
        }


        return categories;
    }



    @GetMapping("/offer")
    public List<Offer> getOffers(@RequestParam(required = false) Integer limit) {

        List<Offer> offers;

        if (limit == null) {
            offers = offerService.getOffers(5);
        } else {
            offers = offerService.getOffers(limit);
        }
        return offers;
    }

    @GetMapping("/category/{id}/products")
    public List<ProductsInCategoryJSON> getCategoryProducts(@PathVariable int id , @RequestParam(required = false) Integer limit) {
        List<ProductsInCategoryJSON> productsInCategoryJSONS;
        if (limit == null) {
            productsInCategoryJSONS = categoryService.getCategoryProducts(id , 5);
        } else {
            productsInCategoryJSONS = categoryService.getCategoryProducts(id , limit);
        }
        return productsInCategoryJSONS;
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
    public List<GradeProductsJSON> getGradeProducts(@PathVariable int id , @RequestParam(required = false) Integer limit) {
        List<GradeProductsJSON> gradeProductsJSONS;
        if (limit == null) {
            gradeProductsJSONS = classifiedProductService.getGradeProducts(id , 5);
        } else {
            gradeProductsJSONS = classifiedProductService.getGradeProducts(id , limit);
        }

        return gradeProductsJSONS;
    }

    @PostMapping("/user")
    public User addUser(@RequestBody User user) {
        user.setId(0);
        userService.saveUser(user);
        return user;
    }

    @PutMapping("/user")
    public User updateUser(@RequestBody User user) {
        userService.saveUser(user);
        return user;
    }

    @PatchMapping("/user")
    public User updateUsers(@RequestBody User user) {
        userService.saveUser(user);
        return user;
    }

    @GetMapping("/cart")
    public String getCart(@RequestParam(required = false) Integer limit) {

      return null;
    }

    @GetMapping("/search/{search}")
    public Map<Category , Product> search(@PathVariable String search , @RequestParam(required = false) Integer limit) {

        return categoryService.search(search , limit);
    }

}
	

	

















