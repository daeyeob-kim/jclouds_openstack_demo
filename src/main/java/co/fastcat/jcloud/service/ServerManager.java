package co.fastcat.jcloud.service;

import co.fastcat.jcloud.OpenstackAPI;

public class ServerManager {
	private OpenstackAPI stackapi;
	
	public ServerManager(OpenstackAPI stackapi) {
		super();
		this.stackapi = stackapi;
	}

	public boolean addFloatingIp(String instanceId){		
		try {
			return stackapi.addFloatingIp(instanceId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean removeFloatingIp(String instanceId){
		try {
			return stackapi.removeFloatingIp(instanceId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean startInstance(String instanceId){
		try {
			return stackapi.startInstance(instanceId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean stopInstance(String instanceId){
		try {
			return stackapi.stopInstance(instanceId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;		
	}
	public boolean terminateInstance(String instanceId){
		try {
			return stackapi.terminateInstance(instanceId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public String addInstance(String getRegion, String getInstanceName, String getImageId, String getFlavorId, String getNetworkId, String getSettingPw, String getKeyPair){
		try {
			return stackapi.launchInstance(getRegion, getInstanceName, getImageId, getFlavorId, getNetworkId, getSettingPw, getKeyPair);
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return null;
	}
}
