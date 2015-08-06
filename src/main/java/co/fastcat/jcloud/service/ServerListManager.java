package co.fastcat.jcloud.service;

import java.util.List;

import org.jclouds.openstack.nova.v2_0.domain.Server;

import co.fastcat.jcloud.OpenstackAPI;

public class ServerListManager {

	private OpenstackAPI stackapi;

	public ServerListManager(OpenstackAPI stackapi) {
		super();
		this.stackapi = stackapi;
	}

	public List<Server> getInstancesList(){
		return stackapi.getInstancesList();
	}
}
