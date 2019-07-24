package com.niit.Bean;

public class Projects {
	private String UserId;
	private String Projects;
	private String frontEnd;
	private String backEnd;
	private String Skills;
	private String Description;
	@Override
	public String toString() {
		return "Projects [UserId=" + UserId + ", Projects=" + Projects + ", frontEnd=" + frontEnd + ", backEnd="
				+ backEnd + ", Skills=" + Skills + "]";
	}
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public String getProjects() {
		return Projects;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public void setProjects(String projects) {
		Projects = projects;
	}
	public String getFrontEnd() {
		return frontEnd;
	}
	public void setFrontEnd(String frontEnd) {
		this.frontEnd = frontEnd;
	}
	public String getBackEnd() {
		return backEnd;
	}
	public void setBackEnd(String backEnd) {
		this.backEnd = backEnd;
	}
	public String getSkills() {
		return Skills;
	}
	public void setSkills(String skills) {
		Skills = skills;
	}
	public Projects() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
 
}
