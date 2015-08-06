package co.fastcat.jcloud.model;

import co.fastcat.jcloud.OpenstackAPI;

public class APIManager {

	OpenstackAPI stackapi;
	
	public APIManager(String getUri, String getProvider, String getProject, String getUser, String credential) {
		OpenstackAPI stackapi=new OpenstackAPI(getUri,getProvider,getProject,getUser,credential);
	}

	public OpenstackAPI getStackapi() {
		return stackapi;
	}
	
	
}
