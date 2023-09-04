package net.lt.eaze.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.List;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.session.SessionInformation;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.WebAttributes;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.lt.eaze.dao.EnterpriseDAO;
import net.lt.eaze.userManagement.roleDetails;

@Controller
public class MainController_1 {

	@Autowired
	private EnterpriseDAO enterpriseDAO;

	@Autowired
	private SessionRegistry sessionRegistry;
//	@RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
//	public ModelAndView defaultPage() {
//
//		ModelAndView model = new ModelAndView();
//		model.addObject("title", "Spring Security Login Form - Database Authentication");
//		model.addObject("message", "This is default page!");
//		model.setViewName("hello");
//		return model;
//
//	}

	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Login Form - Database Authentication");
		model.addObject("message", "This page is for ROLE_ADMIN only!");
		model.setViewName("admin");
		return model;
	}
	
//	@RequestMapping(value = {"/",  "index"})
//	public ModelAndView home(ModelAndView model){
//		if (isUserLoggedIn()) {
//			System.out.println("if run");
//			model.setViewName("explorer");}
//		else {
//			System.out.println("else run");
//		model.setViewName("login");}
//		
//		return model;
//	}

	@RequestMapping(value = "/login/**", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout,HttpSession session) {
		ModelAndView model = new ModelAndView();
		if (isUserLoggedIn()) {
			System.out.println("Inside if logout clicked");
			model.setViewName("home");

 			// role_details set in session attribute***
			Collection<? extends GrantedAuthority> userRole = null;
			String username = "";
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if (!(auth instanceof AnonymousAuthenticationToken)) {
				UserDetails userDetail = (UserDetails) auth.getPrincipal();
				userDetail = (UserDetails) auth.getPrincipal();
				userRole = userDetail.getAuthorities();
				username = userDetail.getUsername();
			}
			String userRoleStr = userRole.toArray()[0].toString();
			String company_name = (String) session.getAttribute("company_name");
			roleDetails role_details = enterpriseDAO.getRoleDetails(userRoleStr,username,company_name).get(0);
			session.setAttribute("role_details", role_details);
			
		}
		else {
			System.out.println("Inside else logout clicked");
			String errorMessage = "";
			if (session != null) {
	            AuthenticationException ex = (AuthenticationException) session
	                    .getAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
	            if (ex != null) {
	            	String tempError = ex.getMessage();
	            	System.out.println("tempError: "+tempError);
	            	if(tempError.equals("Maximum sessions of 1 for this principal exceeded")) {
	            		errorMessage = "Already Logged In From Another Device";
	            	}
	            	else if(tempError.equals("Bad credentials")) {
	            		errorMessage = "Incorrect Username or Password";
	            	}else if(tempError.contains("Failed to obtain JDBC Connection")) {
	            		errorMessage = "Database Not Connected";
	            	}else if(tempError.contains("User is disabled")) {
	            		errorMessage = "User Has Been Deactivated";
	            	}
	            }
	        }
		
			if (error != null) {
				System.out.println("error: "+error);
//				model.addObject("error", "Invalid username and password \n OR \n Already Logged In");
				model.addObject("error", errorMessage);
			}
	
			
			
			model.setViewName("login");
			if (logout != null) {
				model.addObject("msg", "You've been logged out successfully.");
//				model.setViewName("redirect:/");
			}
		}

		return model;

	}
	
	@RequestMapping(value = "/logoutForcefully", method = RequestMethod.POST)
	public @ResponseBody String logout(String username, HttpServletResponse response, HttpServletRequest request, HttpSession session) throws IOException {		
    	List<String> getSessionId = enterpriseDAO.selectActiveSessionID(username);
		System.out.println("Inside logoutForcefully...");
    	/*
		 * System.out.println("getSessionId:::"+getSessionId);
		 * System.out.println("getSessionId:::"+getSessionId.get(0));
		 * System.out.println("username:::"+username);
		 */
    	
        String sessionId = getSessionId.get(0);
        for (Object principal : sessionRegistry.getAllPrincipals()) {
            if (principal instanceof User) {
                UserDetails userDetails = (UserDetails) principal;
				/*
				 * System.out.println("userDetails"+userDetails);
				 * System.out.println("userDetails isAccountNonExpired"+userDetails.
				 * isAccountNonExpired()); System.out.println("getSessionId"+getSessionId);
				 */
                for (SessionInformation info : sessionRegistry.getAllSessions(userDetails, true)) {
                    if (sessionId.equals(info.getSessionId())) {
                        if (info != null) {
                        	System.out.println("info"+info);
                            info.expireNow();
                        }
                    }
                }
            }
        }    
		return "logout";
    }	
	
//	@RequestMapping(value = "/logout", method = RequestMethod.GET)
//	public ModelAndView logout(@RequestParam(value = "error", required = false) String error,
//			@RequestParam(value = "logout", required = false) String logout,HttpSession session) {
//
//		ModelAndView model = new ModelAndView();
//		if (isUserLoggedIn()) {
//			model.setViewName("home");
// 			// role_details set in session attribute***
//			Collection<? extends GrantedAuthority> userRole = null;
//			String username = "";
//			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//			if (!(auth instanceof AnonymousAuthenticationToken)) {
//				UserDetails userDetail = (UserDetails) auth.getPrincipal();
//				userDetail = (UserDetails) auth.getPrincipal();
//				userRole = userDetail.getAuthorities();
//				username = userDetail.getUsername();
//			}
//			String userRoleStr = userRole.toArray()[0].toString();
//			String company_name = (String) session.getAttribute("company_name");
//			roleDetails role_details = enterpriseDAO.getRoleDetails(userRoleStr,username,company_name).get(0);
//			session.setAttribute("role_details", role_details);
//			
//		}
//		else {
//			String errorMessage = "";
//			if (session != null) {
//	            AuthenticationException ex = (AuthenticationException) session
//	                    .getAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
//	            if (ex != null) {
//	            	String tempError = ex.getMessage();
//	            	System.out.println("tempError: "+tempError);
//	            	if(tempError.equals("Maximum sessions of 1 for this principal exceeded")) {
//	            		errorMessage = "Already Logged In From Another Device";
//	            	}
//	            	else if(tempError.equals("Bad credentials")) {
//	            		errorMessage = "Incorrect Username or Password";
//	            	}else if(tempError.contains("Failed to obtain JDBC Connection")) {
//	            		errorMessage = "Database Not Connected";
//	            	}
//	            }
//	        }
//		
//			if (error != null) {
//				System.out.println("error: "+error);
////				model.addObject("error", "Invalid username and password \n OR \n Already Logged In");
//				model.addObject("error", errorMessage);
//			}
//	
//			
//			
//			model.setViewName("login");
//			if (logout != null) {
//				model.addObject("msg", "You've been logged out successfully.");
//				model.setViewName("redirect:/");
//			}
//		}
//
//		return model;
//
//	}
	
//	@RequestMapping(value = "/logoutUser", method = RequestMethod.GET)
//	public ModelAndView acceslogoutUserssDenied() {
//
//		ModelAndView model = new ModelAndView();
//		
//		model.setViewName("redirect:/logout");
//		return model;
//
//	}
	

    public boolean isUserLoggedIn(){
        return (SecurityContextHolder.getContext().getAuthentication().getPrincipal()
                instanceof UserDetails);
    }
	
	//for 403 access denied page
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied() {

		ModelAndView model = new ModelAndView();
		
		//check if user is login
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
		
			model.addObject("username", userDetail.getUsername());
			
		}
		
		model.setViewName("403");
		return model;

	}

}