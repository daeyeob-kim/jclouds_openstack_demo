package co.fastcat.jcloud.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.fastcat.jcloud.OpenstackAPI;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model) {
		ModelAndView mav = new ModelAndView();
		
		/*OpenstackAPI testControl = new OpenstackAPI("http://10.0.1.65:5000/v2.0/", "openstack-nova", "admin", "admin", "3f4a0c469aa9451d");
		*//*ServerListManager serverListManager=new ServerListManager(openstackAPI);

		mav.addObject("list", serverListManager.getInstancesList());
	*/	mav.setViewName("home");
		return mav;
	}
	
}
