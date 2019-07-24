package com.niit.Bean;

public class Experience {
	
	
	private String userId;
	private String Company;
	private String designation;
	private String Experience;
	private String SummaryOrProjects;
	@Override
	public String toString() {
		return "Experience [userId=" + userId + ", Company=" + Company + ", designation=" + designation
				+ ", Experience=" + Experience + ", SummaryOrProjects=" + SummaryOrProjects + "]";
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getCompany() {
		return Company;
	}
	public void setCompany(String company) {
		Company = company;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getExperience() {
		return Experience;
	}
	public void setExperience(String experience) {
		Experience = experience;
	}
	public String getSummaryOrProjects() {
		return SummaryOrProjects;
	}
	public void setSummaryOrProjects(String summaryOrProjects) {
		SummaryOrProjects = summaryOrProjects;
	}
	public Experience(String userId, String company, String designation, String experience, String summaryOrProjects) {
		super();
		this.userId = userId;
		Company = company;
		this.designation = designation;
		Experience = experience;
		SummaryOrProjects = summaryOrProjects;
	}
	public Experience() {
		
	}
	
	
	
	
}
