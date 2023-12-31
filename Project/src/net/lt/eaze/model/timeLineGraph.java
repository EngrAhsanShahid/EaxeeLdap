package net.lt.eaze.model;

public class timeLineGraph {
	private String id;
	private String roadmapName;
	private String ElementName;
	private String StartDate;
	private String EndDate;
	private String Legend;
	private String companyName;
	private int parentID;
	private String status;
	
	
	
	public timeLineGraph(String id, String elementName, String startDate, String endDate, String legend) {
		this.id = id;
		ElementName = elementName;
		StartDate = startDate;
		EndDate = endDate;
		Legend = legend;
	}
	public timeLineGraph(String id, String roadmapName ,String elementName, String startDate, String endDate, String legend) {
		this.id = id;
		this.roadmapName = roadmapName;
		ElementName = elementName;
		StartDate = startDate;
		EndDate = endDate;
		Legend = legend;
	}
	public timeLineGraph(String id, String roadmapName ,String elementName, String startDate, String endDate, String legend, String companyName, int parentID) {
		this.id = id;
		this.roadmapName = roadmapName;
		this.ElementName = elementName;
		this.StartDate = startDate;
		this.EndDate = endDate;
		this.Legend = legend;
		this.companyName = companyName;
		this.parentID = parentID;
	}
	public timeLineGraph(String id, String roadmapName, String companyName, int parentID) {
		this.id = id;
		this.roadmapName = roadmapName;
		this.companyName = companyName;
		this.parentID = parentID;
	}
	
	public timeLineGraph(String id, String roadmapName, String companyName, int parentID, String status) {
		this.id = id;
		this.roadmapName = roadmapName;
		this.companyName = companyName;
		this.parentID = parentID;
		this.status = status;
	}
	
	public timeLineGraph(String id, String roadmapName) {
		this.id = id;
		this.roadmapName = roadmapName;
		
	}
	
	
	public String getId() {
		return id;
	}
	public void setId(String id){
		this.id = id;
	}
	public String getroadmapName() {
		return roadmapName;
	}
	public void setroadmapName(String roadmapName) {
		this.roadmapName = roadmapName;
	}
	public String getElement() {
		return ElementName;
	}
	public void setElement(String ElementName) {
		this.ElementName = ElementName;
	}
	public String getStartDate() {
		return StartDate;
	}
	public void setStartDate(String StartDate) {
		this.StartDate = StartDate;
	}
	public String getEndDate() {
		return EndDate;
	}
	public void setEndDate(String EndDate) {
		this.EndDate = EndDate;
	}
	public String getLegend() {
		return Legend;
	}
	public void setLegend(String Legend) {
		this.Legend = Legend;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public int getParentID() {
		return parentID;
	}
	public void setParentID(int parentID) {
		this.parentID = parentID;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}