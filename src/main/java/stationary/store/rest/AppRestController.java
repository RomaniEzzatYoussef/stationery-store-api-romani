package stationary.store.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.web.bind.annotation.*;
import stationary.store.model.*;
import stationary.store.service.address.AddressService;
import stationary.store.service.category.CategoryService;
import stationary.store.service.classifiedProduct.ClassifiedProductService;
import stationary.store.service.grade.GradeService;
import stationary.store.service.gradeLevel.GradeLevelService;
import stationary.store.service.offer.OfferService;
import stationary.store.service.product.ProductService;
import stationary.store.service.user.UserService;
import stationary.store.utilities.json.*;
import java.util.List;

@RestController
@CrossOrigin(origins = "*", maxAge = 3600)
@RequestMapping("/api")
public class AppRestController {

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


    @GetMapping("/offer")
    public List<OfferJSON> getOffers(@RequestParam(required = false) Integer limit , @RequestParam(required = false) Integer pageNumber) {

        List<OfferJSON> offers;

        if (limit == null) {
            if (pageNumber == null) {
                offers = offerService.getOffers(5 , 1);
            } else {
                offers = offerService.getOffers(5 , pageNumber);
            }
        } else if (pageNumber == null) {
            offers = offerService.getOffers(limit , 1);
        } else {
            offers = offerService.getOffers(limit , pageNumber);
        }
        return offers;
    }

    @GetMapping("/category/{id}/products")
    public List<ProductPrDisJSON> getCategoryProducts(@PathVariable int id , @RequestParam(required = false) Integer limit ,
                                                      @RequestParam(required = false) Integer pageNumber) {
        List<ProductPrDisJSON> productPrDisJSONS;

        if (limit == null) {
            if (pageNumber == null) {
                productPrDisJSONS = categoryService.getCategoryProducts(id , 5 , 1);
            } else {
                productPrDisJSONS = categoryService.getCategoryProducts(id , 5 , pageNumber);
            }
        } else if (pageNumber == null) {
            productPrDisJSONS = categoryService.getCategoryProducts(id , limit , 1);
        } else {
            productPrDisJSONS = categoryService.getCategoryProducts(id , limit , pageNumber);
        }

        return productPrDisJSONS;
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

    @GetMapping("/product/bestseller")
    public List<ProductPrDisJSON> getBestSellers(@RequestParam(required = false) Integer limit) {
        List<ProductPrDisJSON> bestSellerJSONS;

        if (limit == null) {
            bestSellerJSONS = productService.getBestSellerProducts(6);
        } else {
            bestSellerJSONS = productService.getBestSellerProducts(limit);
        }
        return bestSellerJSONS;
    }

    @GetMapping("/category")
    public List<Category> getCategories(@RequestParam(required = false) Integer limit , @RequestParam(required = false) Integer pageNumber) {
        List<Category> categories;

        if (limit == null) {
            if (pageNumber == null) {
                categories = categoryService.getCategories(5 , 1);
            } else {
                categories = categoryService.getCategories(5 , pageNumber);
            }
        } else if (pageNumber == null) {
            categories = categoryService.getCategories(limit , 1);
        } else {
            categories = categoryService.getCategories(limit , pageNumber);
        }

        return categories;
    }

    @GetMapping("/product/{id}")
    public ProductPrDisJSON getProduct(@PathVariable int id) {
        return productService.getProductWithID(id);
    }

    @GetMapping("/search")
    public SearchJSON search(@RequestParam String keyWord, @RequestParam(required = false) Integer limit,
                             @RequestParam(required = false) Integer pageNumber) {


        if (limit == null) {
            if (pageNumber == null) {
                return categoryService.search(keyWord , 5 , 1);
            } else {
                return categoryService.search(keyWord , 5 , pageNumber);
            }
        } else if (pageNumber == null) {
            return categoryService.search(keyWord , limit , 1);
        } else {
            return categoryService.search(keyWord , limit , pageNumber);
        }
    }

    // count pagination
    @GetMapping("/category/count")
    public Counter getCategoryCount() {
        return categoryService.getCategoryCount();
    }

    @GetMapping("/offer/count")
    public Counter getOfferCount() {
        return offerService.getOfferCount();
    }

    @GetMapping("/category/{id}/products/count")
    public Counter getCategoryProductsCount(@PathVariable int id) {
        return categoryService.getCategoryProductsCount(id);
    }

    @GetMapping("/search/count")
    public SearchCounter getSearchCount(@RequestParam String keyWord) {
        return categoryService.getSearchCount(keyWord);
    }


    @Autowired
    UserService userService;

    @Autowired
    UserDetailsService userDetailsService;

    @Autowired
    AddressService addressService;

    @PostMapping("/user")
    public User registerUser(@RequestBody UserRegister userRegister) throws Exception {

        User user = new User();

        UserType userType = new UserType();
        userType.setId(3);
        userType.setUserType("Customer");

        user.setUserType(userType);

        user.setFirstName(userRegister.getFirstName());
        user.setLastName(userRegister.getLastName());
        user.setPhoneNumber1(userRegister.getPhoneNumber());
        user.setPhoneNumber2(userRegister.getPhoneNumber2());
        user.setEmail(userRegister.getEmail());
        user.setPassword(userRegister.getPassword());
        user.setEnabled(1);


//        UserDetails userDetails = new MyUserDetails(user);
//        final String jwt = JwtUtil.generateToken(userDetails);

//        user.setToken(jwt);
        user.setId(0);
        userService.saveUser(user);

        for (Address address : userRegister.getAddresses())
        {
            address.setUser(user);
            addressService.saveAddress(address);
        }

        return userService.getUser(userService.getLastID());
    }

}


	

















