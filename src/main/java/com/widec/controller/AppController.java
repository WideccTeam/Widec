package com.widec.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.RedirectView;

import com.widec.model.Preferences;
import com.widec.model.User;
import com.widec.service.PreferencesService;
import com.widec.service.UserService;
 
@Controller
@RequestMapping("/")
@EnableWebMvc
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
     * This method will send a new user to the register view
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
    public ModelAndView newUser(User user, ModelMap modelo) {
    	userService.saveUser(user);
        //model.addAttribute("user", newUser);
        ModelAndView model = new ModelAndView(new RedirectView("test" + user.getId()));
        
        //Esto hay que cambiarlo a 'test'
        //return "userInfo";
        return model;
    }
    
    @RequestMapping(value = "/test{id}", method = RequestMethod.GET)
    public ModelAndView test(@PathVariable String id){
        Preferences userPreferences = new Preferences();
        userPreferences.setId(Integer.parseInt(id));
		//ModelAndView model = new ModelAndView("test");
		ModelAndView model = new ModelAndView();
        model.addObject("userPreferences", userPreferences);
    	
    	User newUser = userService.findById(userPreferences.getId());
		model.setViewName("test");
		model.addObject("user", newUser);
		return model;
    }
    
    
    /*
     * This method will save preferences of a user
     */
    @RequestMapping(value = "/test{id}", method = RequestMethod.POST)
    public String newUserPreferences(Preferences userPreferences, ModelMap model) {
    	preferencesService.saveUserPreferences(userPreferences);
        User newUser = new User();
        newUser = userService.findById(userPreferences.getId());
        model.addAttribute("user", newUser);
        model.addAttribute("userPreferences", userPreferences);
        /* IMPORTANTE
         * 
         *  No sé porqué esta mierda si hago modelandview me da error si intento hacer que la url sea 
         *  la de userInfo*/
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
 
    
    @RequestMapping(value = "/reportListTable.html")
	public @ResponseBody List<User> table() {
    	List<User> users = userService.findAllUsers();
		return users;
	}
 
}