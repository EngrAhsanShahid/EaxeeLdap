package net.lt.eaze.model;

public class graphFolders {
	private String id;
	private String folder_name;
	private String parent_id;
	private String architecture_id;
	private String status;

	
	public graphFolders(String id, String folder_name, String parent_id) {
		this.id = id;
		this.folder_name = folder_name;
		this.parent_id = parent_id;
	}
	
	public graphFolders(String id, String folder_name, String parent_id, String architecture_id) {
		this.id = id;
		this.folder_name = folder_name;
		this.parent_id = parent_id;
		this.architecture_id = architecture_id;
	}


	public graphFolders(String id, String folder_name, String parent_id, String architecture_id, String status) {
		this.id = id;
		this.folder_name = folder_name;
		this.parent_id = parent_id;
		this.architecture_id = architecture_id;
		this.status = status;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFolder_name() {
		return folder_name;
	}

	public void setFolder_name(String folder_name) {
		this.folder_name = folder_name;
	}

	public String getParent_id() {
		return parent_id;
	}

	public void setParent_id(String parent_id) {
		this.parent_id = parent_id;
	}
	public String getArchitecture_id() {
		return architecture_id;
	}

	public void setArchitecture_id(String architecture_id) {
		this.architecture_id = architecture_id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "graphFolders [id=" + id + ", folder_name=" + folder_name + ", parent_id=" + parent_id
				+ ", architecture_id=" + architecture_id + ", status=" + status + "]";
	}	
}
