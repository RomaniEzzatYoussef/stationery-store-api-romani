package stationary.store.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.web.bind.annotation.*;
import stationary.store.model.User;
import stationary.store.service.user.UserService;

import java.util.List;

@RestController
@CrossOrigin(origins = "*", maxAge = 3600)
@RequestMapping("/auth")
public class UserRestController {

    @Autowired
    UserService userService;

    @Autowired
    UserDetailsService userDetailsService;

    @GetMapping("/users")
    public List<User> getUsers(@RequestParam(required = false) Integer limit) {
        List<User> users;
        if (limit == null) {
            users = userService.getUsers(5);
        } else {
            users = userService.getUsers(limit);
        }

        return users;
    }

//    @Autowired
//    AuthenticationManager authenticationManager;

//    @Autowired
//    JwtUtil JwtUtil;
//
//
//    @PostMapping("/user")
//    public ResponseEntity<?> registerUser(@RequestBody AuthRequest user) throws Exception {
//        try {
//            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(user.getUsername() , user.getPassword()));
//        } catch (BadCredentialsException e) {
//            throw new Exception("Incorrect username or password" , e);
//        }
//
//        final UserDetails userDetails = userDetailsService.loadUserByUsername(user.getUsername());
//
//        final String jwt = JwtUtil.generateToken(userDetails);
//
//        return ResponseEntity.ok(new AuthResponse(jwt));
//    }
//


//    @PostMapping("/user")
//    public User addUser(@RequestBody User user) {
//        user.setId(0);
//        userService.saveUser(user);
//        return user;
//    }


    @GetMapping("/user/current")
    public User getCurrentUser() {
        return  userService.getCurrentUser();
    }

    @GetMapping("/user/{id}")
    public User getCurrentUser(@PathVariable int id) {
        return  userService.getUser(id);
    }

//    @PutMapping("/user")
//    public User updateUser(@RequestBody User user) {
//        userService.saveUser(user);
//        return user;
//    }
//
//    @PatchMapping("/user")
//    public User updateUserThat(@RequestBody User user) {
//        userService.saveUser(user);
//        return user;
//  }



//    @Autowired
//    RoleRepository roleRepository;

//    @Autowired
//    PasswordEncoder encoder;
//
//    @Autowired
//    JwtProvider jwtProvider;

//    @PostMapping("/signin")
//    public ResponseEntity<?> authenticateUser(@Valid @RequestBody LoginForm loginRequest) {
//
//        Authentication authentication = authenticationManager.authenticate(
//                new UsernamePasswordAuthenticationToken(
//                        loginRequest.getUsername(),
//                        loginRequest.getPassword()
//                )
//        );
//
//        SecurityContextHolder.getContext().setAuthentication(authentication);
//
//        String jwt = jwtProvider.generateJwtToken(authentication);
//        return ResponseEntity.ok(new JwtResponse(jwt));
//    }


//    @PostMapping("/user")
//    public ResponseEntity<String> registerUser(@Valid @RequestBody User user) {
//
//        if(userService.existsByEmail(user.getEmail())) {
//            return new ResponseEntity<String>("Fail -> Email is already in use!",
//                    HttpStatus.BAD_REQUEST);
//        }

    // Creating user's account
//        User user = signUpRequest;
//
//        user.setId(0);
//        userService.saveUser(user);


//        if(userRepository.existsByUsername(signUpRequest.getUsername())) {
//            return new ResponseEntity<String>("Fail -> Username is already taken!",
//                    HttpStatus.BAD_REQUEST);
//        }
//
//        return ResponseEntity.ok().body("User registered successfully!");
//    }




}
