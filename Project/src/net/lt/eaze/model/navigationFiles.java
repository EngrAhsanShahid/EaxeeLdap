package net.lt.eaze.model;

public class navigationFiles {
	private String id;
	private String navigationName;
	private String parentID;
	private String Status;
	
	
	
	public navigationFiles(String id, String navigationName) {
		this.id = id;
		this.navigationName = navigationName;
	}
	
	public navigationFiles(String id, String navigationName, String parentID) {
		this.id = id;
		this.navigationName = navigationName;
		this.parentID = parentID;
	}
	
	

	public navigationFiles(String id, String navigationName, String parentID, String status) {
		this.id = id;
		this.navigationName = navigationName;
		this.parentID = parentID;
		Status = status;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNavigationName() {
		return navigationName;
	}

	public void setNavigationName(String navigationName) {
		this.navigationName = navigationName;
	}

	public String getParentID() {
		return parentID;
	}

	public void setParentID(String parentID) {
		this.parentID = parentID;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	@Override
	public String toString() {
		return "navigationFiles [id=" + id + ", navigationName=" + navigationName + ", parentID=" + parentID
				+ ", Status=" + Status + "]";
	}

	
}
