package com.niit.Bean;

public class Personal {
	private String UserId;
	
	private String FirstName;
	private String LastName;
	
	private String fatherName;
	private String motherName;
	
	private String gender;
	private String dob;
	private String mobileNo;
	private String emailId;
	private String address;
	private String age;

	private String langaugeProf;
	
	private String careerObjectives;
	private String strengths;
	private String hobbies;
	public Personal(String userId, String firstName, String lastName, String fatherName, String motherName,
			String gender, String dob, String mobileNo, String emailId, String address, String age, String langaugeProf,
			String careerObjectives, String strengths, String hobbies) {
	
		UserId = userId;
		FirstName = firstName;
		LastName = lastName;
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.gender = gender;
		this.dob = dob;
		this.mobileNo = mobileNo;
		this.emailId = emailId;
		this.address = address;
		this.age = age;
		this.langaugeProf = langaugeProf;
		this.careerObjectives = careerObjectives;
		this.strengths = strengths;
		this.hobbies = hobbies;
	}
	public Personal() {
		
	}
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getFatherName() {
		return fatherName;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	public String getMotherName() {
		return motherName;
	}
	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getLangaugeProf() {
		return langaugeProf;
	}
	public void setLangaugeProf(String langaugeProf) {
		this.langaugeProf = langaugeProf;
	}
	public String getCareerObjectives() {
		return careerObjectives;
	}
	public void setCareerObjectives(String careerObjectives) {
		this.careerObjectives = careerObjectives;
	}
	public String getStrengths() {
		return strengths;
	}
	public void setStrengths(String strengths) {
		this.strengths = strengths;
	}
	public String getHobbies() {
		return hobbies;
	}
	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
	}

	@Override
	public String toString() {
		return "Personal [UserId=" + UserId + ", FirstName=" + FirstName + ", LastName=" + LastName + ", fatherName="
				+ fatherName + ", motherName=" + motherName + ", gender=" + gender + ", dob=" + dob + ", mobileNo="
				+ mobileNo + ", emailId=" + emailId + ", address=" + address + ", age=" + age + ", langaugeProf="
				+ langaugeProf + ", careerObjectives=" + careerObjectives + ", strengths=" + strengths + ", hobbies="
				+ hobbies + "]";
	}
	
	
}
