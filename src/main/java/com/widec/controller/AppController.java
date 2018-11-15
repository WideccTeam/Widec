package com.widec.controller;

import java.util.List;
import java.util.Locale;
 
import javax.validation.Valid;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.widec.model.Preferences;
import com.widec.model.User;
import com.widec.service.PreferencesService;
import com.widec.service.UserService;
 
@Controller
@RequestMapping("/")
public class AppController {
 
    @Autowired
    UserService userService;
    
    @Autowired
    PreferencesService preferencesService;
     
    @Autowired
    MessageSource messageSource;
    
    
    /*
     * Default login
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView log(){
    	User user = new User();
    	ModelAndView model = new ModelAndView("login");
    	model.addObject("user", user);
    	return model;
    }
    
    /*
     * This method will log if exists user
     */
    @RequestMapping(value = "/", params = "login", method = RequestMethod.POST)
    public ModelAndView loggedIn(User user){
    	
    	User loggedUser = new User();
    	
    	loggedUser = userService.findUserByEmailAndPassword(user.getEmail(), user.getPassword());
    	if(loggedUser != null){
    		ModelAndView model = new ModelAndView("userInfo");
    		Preferences userPreferences = preferencesService.findById(loggedUser.getId());
            model.addObject("user", loggedUser);
            model.addObject("userPreferences", userPreferences);
            return model;
    	}
    	else{
    		User emptyUser = new User();
    		ModelAndView model = new ModelAndView();
    		model.setViewName("login");
    		model.addObject("user", emptyUser);
    		return model;
    	}
    }
    
    /*
     * This method will log if exists user
     */
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView registerUser(){
    	User newUser = new User();
		ModelAndView model = new ModelAndView();
		model.setViewName("register");
		model.addObject("user", newUser);
		return model;
    }


    /*
     * This method will register a user
     */
    @RequestMapping(value = "/register.html", method = RequestMethod.POST)
    public String newUser(User user, ModelMap model) {
    	userService.saveUser(user);
        User newUser = new User();
        newUser = userService.findUserByEmail(user.getEmail());
        Preferences userPreferences = preferencesService.findById(newUser.getId());
        model.addAttribute("user", newUser);
        model.addAttribute("userPreferences", userPreferences);
        return "userInfo";
    }
    
    /*
     * This method will list all existing employees.
     */
    @RequestMapping(value = "/list.html" , method = RequestMethod.GET)
    public String listUsers(ModelMap model) {
 
        List<User> users = userService.findAllUsers();
        model.addAttribute("users", users);
        return "allemployees";
    }
 
//    /*
//     * This method will provide the medium to add a new employee.
//     */
//    @RequestMapping(value = { "/new" }, method = RequestMethod.GET)
//    public String newEmployee(ModelMap model) {
//        User user = new User();
//        model.addAttribute("user", user);
//        model.addAttribute("edit", false);
//        return "registration";
//    }
// 
//    /*
//     * This method will be called on form submission, handling POST request for
//     * saving employee in database. It also validates the user input
//     */
//    @RequestMapping(value = { "/new" }, method = RequestMethod.POST)
//    public String saveEmployee(@Valid Employee employee, BindingResult result,
//            ModelMap model) {
// 
//        if (result.hasErrors()) {
//            return "registration";
//        }
// 
//        /*
//         * Preferred way to achieve uniqueness of field [ssn] should be implementing custom @Unique annotation 
//         * and applying it on field [ssn] of Model class [Employee].
//         * 
//         * Below mentioned peace of code [if block] is to demonstrate that you can fill custom errors outside the validation
//         * framework as well while still using internationalized messages.
//         * 
//         */
//        if(!userService.isEmployeeSsnUnique(employee.getId(), employee.getSsn())){
//            FieldError ssnError =new FieldError("employee","ssn",messageSource.getMessage("non.unique.ssn", new String[]{employee.getSsn()}, Locale.getDefault()));
//            result.addError(ssnError);
//            return "registration";
//        }
//         
//        userService.saveEmployee(employee);
// 
//        model.addAttribute("success", "Employee " + employee.getName() + " registered successfully");
//        return "success";
//    }
// 
// 
//    /*
//     * This method will provide the medium to update an existing employee.
//     */
//    @RequestMapping(value = { "/edit-{ssn}-employee" }, method = RequestMethod.GET)
//    public String editEmployee(@PathVariable String ssn, ModelMap model) {
//        Employee employee = userService.findEmployeeBySsn(ssn);
//        model.addAttribute("employee", employee);
//        model.addAttribute("edit", true);
//        return "registration";
//    }
//     
//    /*
//     * This method will be called on form submission, handling POST request for
//     * updating employee in database. It also validates the user input
//     */
//    @RequestMapping(value = { "/edit-{ssn}-employee" }, method = RequestMethod.POST)
//    public String updateEmployee(@Valid Employee employee, BindingResult result,
//            ModelMap model, @PathVariable String ssn) {
// 
//        if (result.hasErrors()) {
//            return "registration";
//        }
// 
//        if(!userService.isEmployeeSsnUnique(employee.getId(), employee.getSsn())){
//            FieldError ssnError =new FieldError("employee","ssn",messageSource.getMessage("non.unique.ssn", new String[]{employee.getSsn()}, Locale.getDefault()));
//            result.addError(ssnError);
//            return "registration";
//        }
// 
//        userService.updateEmployee(employee);
// 
//        model.addAttribute("success", "Employee " + employee.getName()  + " updated successfully");
//        return "success";
//    }
// 
//     
//    /*
//     * This method will delete an employee by it's SSN value.
//     */
//    @RequestMapping(value = { "/delete-{ssn}-employee" }, method = RequestMethod.GET)
//    public String deleteEmployee(@PathVariable String ssn) {
//        userService.deleteEmployeeBySsn(ssn);
//        return "redirect:/list";
//    }
 
}