package net.lt.eaze.model;

public class catalogFiles {
	private String id;
	private String modelName;
	private String parentID;
	private String elementName;
	private String status;
	
	
	
	public catalogFiles(String id, String modelName, String elementName) {
		this.id = id;
		this.modelName = modelName;
		this.elementName = elementName;
	}
	
	public catalogFiles(String id, String modelName, String parentID, String elementName) {
		this.id = id;
		this.modelName = modelName;
		this.parentID = parentID;
		this.elementName = elementName;
	}

	
	
	
	public catalogFiles(String id, String modelName, String parentID, String elementName, String status) {
		this.id = id;
		this.modelName = modelName;
		this.parentID = parentID;
		this.elementName = elementName;
		this.status = status;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getModelName() {
		return modelName;
	}

	public void setModelName(String modelName) {
		this.modelName = modelName;
	}

	public String getParentID() {
		return parentID;
	}

	public void setParentID(String parentID) {
		this.parentID = parentID;
	}

	public String getElementName() {
		return elementName;
	}

	public void setElementName(String elementName) {
		this.elementName = elementName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "catalogFiles [id=" + id + ", modelName=" + modelName + ", parentID=" + parentID + ", elementName="
				+ elementName + ", status=" + status + "]";
	}



	
}

