package co.fastcat.jcloud.service;

import java.util.ArrayList;
import java.util.List;

import co.fastcat.jcloud.OpenstackAPI;
import co.fastcat.jcloud.bean.Server;

public class ServerListManager {

	private OpenstackAPI stackapi;

	public ServerListManager(OpenstackAPI stackapi) {
		super();
		this.stackapi = stackapi;
	}

	public List<Server> getInstancesList() {
		List<Server> serverList = new ArrayList<Server>();
		List<org.jclouds.openstack.nova.v2_0.domain.Server> instanceList = stackapi
				.getInstancesList();
		for (int i = 0, n = instanceList.size(); i < n; i++) {
			serverList.add(new Server(instanceList.get(i).getName(),
										instanceList.get(i).getId(), 
										stackapi.getImageName(instanceList.get(i).getImage().getId()),
										stackapi.getFlavorName(instanceList.get(i).getFlavor().getId()),
										instanceList.get(i).getStatus().toString(),
										instanceList.get(i).getStatus().toString(),
										instanceList.get(i).getKeyName(),
										stackapi.loadFloatingIpsForInstance(instanceList.get(i).getId()),
										stackapi.loadFixedIpsForInstance(instanceList.get(i).getId())										
										));
			System.out.println("instanceList.get(i).getImage().getName()"+instanceList.get(i).getImage().getName());
		}
		return serverList;
	}
}
