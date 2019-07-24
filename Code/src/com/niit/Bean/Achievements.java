package com.niit.Bean;

public class Achievements {

	private String UserId;
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	@Override
	public String toString() {
		return "Achievements [UserId=" + UserId + ", AwardsOrRecognition=" + AwardsOrRecognition + ", CompanyName="
				+ CompanyName + ", DateOfAward=" + DateOfAward + "]";
	}
	private String AwardsOrRecognition;
	private String CompanyName;
	private String DateOfAward;
	public String getAwardsOrRecognition() {
		return AwardsOrRecognition;
	}
	public void setAwardsOrRecognition(String awardsOrRecognition) {
		AwardsOrRecognition = awardsOrRecognition;
	}
	public String getCompanyName() {
		return CompanyName;
	}
	public void setCompanyName(String companyName) {
		CompanyName = companyName;
	}
	public String getDateOfAward() {
		return DateOfAward;
	}
	public void setDateOfAward(String dateOfAward) {
		DateOfAward = dateOfAward;
	}
	public Achievements() {
	
	}
	public Achievements(String userId, String awardsOrRecognition, String companyName, String dateOfAward) {
	
		UserId = userId;
		AwardsOrRecognition = awardsOrRecognition;
		CompanyName = companyName;
		DateOfAward = dateOfAward;
	}
	
	
	
}
