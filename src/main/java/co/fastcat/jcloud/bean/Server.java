package co.fastcat.jcloud.bean;

public class Server {

	private String instanceName;
	private String instanceId;
	private String image;
	private String flavor;
	private String status;
	private String powerState;
	private String keyPair;
	private String floatingIp;
	private String fixedIp;
	
	public Server(){}
	
	
	public Server(String instanceName, String instanceId, String image,
			String flavor, String status, String powerState, String keyPair,
			String floatingIp, String fixedIp) {
		super();
		this.instanceName = instanceName;
		this.instanceId = instanceId;
		this.image = image;
		this.flavor = flavor;
		this.status = status;
		this.powerState = powerState;
		this.keyPair = keyPair;
		this.floatingIp = floatingIp;
		this.fixedIp = fixedIp;
	}


	public String getFloatingIp() {
		return floatingIp;
	}
	public void setFloatingIp(String floatingIp) {
		this.floatingIp = floatingIp;
	}
	public String getFixedIp() {
		return fixedIp;
	}
	public void setFixedIp(String fixedIp) {
		this.fixedIp = fixedIp;
	}


	public String getInstanceName() {
		return instanceName;
	}
	public void setInstanceName(String instanceName) {
		this.instanceName = instanceName;
	}
	public String getInstanceId() {
		return instanceId;
	}
	public void setInstanceId(String instanceId) {
		this.instanceId = instanceId;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getFlavor() {
		return flavor;
	}
	public void setFlavor(String flavor) {
		this.flavor = flavor;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPowerState() {
		return powerState;
	}
	public void setPowerState(String powerState) {
		this.powerState = powerState;
	}
	public String getKeyPair() {
		return keyPair;
	}
	public void setKeyPair(String keyPair) {
		this.keyPair = keyPair;
	}
	
	

}
