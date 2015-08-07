package co.fastcat.jcloud.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.fastcat.jcloud.OpenstackAPI;
import co.fastcat.jcloud.service.ServerListManager;
import co.fastcat.jcloud.service.ServerManager;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ActionController {
	OpenstackAPI openstackAPI;
	private static final Logger logger = LoggerFactory.getLogger(ActionController.class);
	public ActionController(){
		
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/addFloatingIp", method = RequestMethod.GET)
	public ModelAndView addFloatingIp(@RequestParam("id") String id) {
		openstackAPI = new OpenstackAPI("http://10.0.1.65:5000/v2.0/", "openstack-nova", "admin", "admin", "3f4a0c469aa9451d");
		
		ModelAndView mav = new ModelAndView();
		ServerManager serverManager = new ServerManager(openstackAPI);
		
		boolean result = false;
		try {
			result = serverManager.addFloatingIp(id);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		mav.addObject("result", result);
		mav.setViewName("tohome");
		return mav;
	}
	@RequestMapping(value = "/removeFloatingIp", method = RequestMethod.GET)
	public ModelAndView removeFloatingIp(@RequestParam("id") String id) {
		openstackAPI = new OpenstackAPI("http://10.0.1.65:5000/v2.0/", "openstack-nova", "admin", "admin", "3f4a0c469aa9451d");
		
		ModelAndView mav = new ModelAndView();
		ServerManager serverManager = new ServerManager(openstackAPI);
		
		boolean result = false;
		try {
			result = serverManager.removeFloatingIp(id);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		mav.addObject("result", result);
		mav.setViewName("tohome");
		return mav;
	}

	@RequestMapping(value = "/startInstance", method = RequestMethod.GET)
	public ModelAndView startInstance(@RequestParam("id") String id) {
		openstackAPI = new OpenstackAPI("http://10.0.1.65:5000/v2.0/", "openstack-nova", "admin", "admin", "3f4a0c469aa9451d");
		
		ModelAndView mav = new ModelAndView();
		ServerManager serverManager = new ServerManager(openstackAPI);
		
		boolean result = false;
		try {
			result = serverManager.startInstance(id);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		mav.addObject("result", result);
		mav.setViewName("tohome");
		return mav;
	}
	@RequestMapping(value = "/stopInstance", method = RequestMethod.GET)
	public ModelAndView stopInstance(@RequestParam("id") String id) {
		openstackAPI = new OpenstackAPI("http://10.0.1.65:5000/v2.0/", "openstack-nova", "admin", "admin", "3f4a0c469aa9451d");
		
		ModelAndView mav = new ModelAndView();
		ServerManager serverManager = new ServerManager(openstackAPI);
		
		boolean result = false;
		try {
			result = serverManager.stopInstance(id);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		mav.addObject("result", result);
		mav.setViewName("tohome");
		return mav;
	}
	@RequestMapping(value = "/terminateInstance", method = RequestMethod.GET)
	public ModelAndView terminateInstance(@RequestParam("id") String id) {
		openstackAPI = new OpenstackAPI("http://10.0.1.65:5000/v2.0/", "openstack-nova", "admin", "admin", "3f4a0c469aa9451d");
		
		ModelAndView mav = new ModelAndView();
		ServerManager serverManager = new ServerManager(openstackAPI);
		
		boolean result = false;
		try {
			result = serverManager.terminateInstance(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mav.addObject("result", result);
		mav.setViewName("tohome");
		return mav;
	}
	@RequestMapping(value = "/launchInstance", method = RequestMethod.GET)
	public ModelAndView launchInstance(
			@RequestParam("getRegion") String getRegion,@RequestParam("getInstanceName") String getInstanceName,
			@RequestParam("getImageId") String getImageId,@RequestParam("getFlavorId") String getFlavorId,
			@RequestParam("getNetworkId") String getNetworkId,@RequestParam("getSettingPw") String getSettingPw,@RequestParam("getKeyPair") String getKeyPair) {
		openstackAPI = new OpenstackAPI("http://10.0.1.65:5000/v2.0/", "openstack-nova", "admin", "admin", "3f4a0c469aa9451d");
		
		ModelAndView mav = new ModelAndView();
		
		String result = null;
		try {
			result = openstackAPI.launchInstance(getRegion, getInstanceName, getImageId, getFlavorId, getNetworkId, getSettingPw, getKeyPair);
		}catch (Exception e) {
			e.printStackTrace();
		}
		mav.addObject("result", result);
		mav.setViewName("tohome");
		return mav;
	}
}
