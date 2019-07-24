package com.niit.Bean;

public class Education {

	private String userId;
	private String CollegeSchoolName;
	private String degree;
	private String subjectOrCombination;
	private String POY;
	
	private String percentage;

	@Override
	public String toString() {
		return "Education [userId=" + userId + ", CollegeSchoolName=" + CollegeSchoolName + ", degree=" + degree
				+ ", subjectOrCombination=" + subjectOrCombination + ", POY=" + POY + ", percentage=" + percentage
				+ "]";
	}

	public Education() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Education(String userId, String collegeSchoolName, String degree, String subjectOrCombination, String pOY,
			String percentage) {
		super();
		this.userId = userId;
		CollegeSchoolName = collegeSchoolName;
		this.degree = degree;
		this.subjectOrCombination = subjectOrCombination;
		POY = pOY;
		this.percentage = percentage;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId2) {
		this.userId = userId2;
	}

	public String getCollegeSchoolName() {
		return CollegeSchoolName;
	}

	public void setCollegeSchoolName(String collegeSchoolName) {
		CollegeSchoolName = collegeSchoolName;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getSubjectOrCombination() {
		return subjectOrCombination;
	}

	public void setSubjectOrCombination(String subjectOrCombination) {
		this.subjectOrCombination = subjectOrCombination;
	}

	public String getPOY() {
		return POY;
	}

	public void setPOY(String pOY) {
		POY = pOY;
	}

	public String getPercentage() {
		return percentage;
	}

	public void setPercentage(String percentage) {
		this.percentage = percentage;
	}
	
	
	

}
