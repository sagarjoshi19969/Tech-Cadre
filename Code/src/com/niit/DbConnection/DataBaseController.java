package com.niit.DbConnection;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.niit.Bean.Achievements;
import com.niit.Bean.Education;
import com.niit.Bean.Experience;
import com.niit.Bean.Personal;
import com.niit.Bean.Projects;

public class DataBaseController {

	Connection conn = null;

	public int setPersonal(Personal p,String UserId) {

		try {
			conn = SqlConnect.dbConnector();
			String Query = "INSERT INTO personal(userid,firstName,lastName,fatherName,motherName,dob,gender,contactNo,address,skills,age,language,mailId,carrierObj,hobbies)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(Query);
			pst.setString(1, UserId);
			pst.setString(2, p.getFirstName());
			pst.setString(3, p.getLastName());
			pst.setString(4, p.getFatherName());
			pst.setString(5, p.getMotherName());
			pst.setString(6, p.getDob());
			pst.setString(7, p.getGender());
			pst.setString(8, p.getMobileNo());
			pst.setString(9, p.getAddress());
			pst.setString(10, p.getStrengths());
			pst.setString(11, p.getAge());
			pst.setString(12, p.getLangaugeProf());
			pst.setString(13, p.getEmailId());
			pst.setString(14, p.getCareerObjectives());
			pst.setString(15, p.getHobbies());

			int insert = pst.executeUpdate();
			return insert;

		} catch (SQLException e) {
			System.out.println(e);

		}
		return 0;

	}

	public int setEducation(Education ed) {
		try {
			conn = SqlConnect.dbConnector();
			String Query = "INSERT INTO education(userId,schoolOrCollege,degreeOrBoardOrUniversity,SubjectOrCombination,POY,PercentageOrCgpa)VALUES(?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(Query);
			pst.setString(1, ed.getUserId());
			pst.setString(2, ed.getCollegeSchoolName());
			pst.setString(3, ed.getDegree());
			pst.setString(4, ed.getSubjectOrCombination());
			pst.setString(5, ed.getPOY());
			pst.setString(6, ed.getPercentage());

			int insert = pst.executeUpdate();
			return insert;
		} catch (SQLException e) {
			System.out.println(e);

		}
		return 0;

	}

	public int setExpirence(Experience ex) {
		try {
			conn = SqlConnect.dbConnector();
			String Query = "INSERT INTO expirence(userId,Company,Designation,expirenceInYears,SummaryOfJobRole)VALUES(?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(Query);
			pst.setString(1, ex.getUserId());
			pst.setString(2, ex.getCompany());
			pst.setString(3, ex.getDesignation());
			pst.setString(4, ex.getExperience());
			pst.setString(5, ex.getSummaryOrProjects());

			int insert = pst.executeUpdate();
			return insert;

		} catch (SQLException e) {
			System.out.println(e);
		}
		return 0;

	}

	public int setAchievements(Achievements a) {
		try {
			conn = SqlConnect.dbConnector();
			String Query = "INSERT INTO achievements(userId,Awards,Company,DateOfAward)VALUES(?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(Query);
			pst.setString(1, a.getUserId());
			pst.setString(2, a.getAwardsOrRecognition());
			pst.setString(3, a.getCompanyName());
			pst.setString(4, a.getDateOfAward());
			int insert = pst.executeUpdate();
			return insert;

		} catch (SQLException e) {
			System.out.println(e);
		}
		return 0;

	}
public int setProjects(Projects p) {
	try {
		conn = SqlConnect.dbConnector();
		String Query = "INSERT INTO projects(userId,Title,FrontEnd,BackEnd,overAllTechnicaSkills,Description)VALUES(?,?,?,?,?,?)";
		PreparedStatement pst = conn.prepareStatement(Query);
		pst.setString(1, p.getUserId());
		pst.setString(2, p.getProjects());
		pst.setString(3, p.getFrontEnd());
		pst.setString(4, p.getBackEnd());
		pst.setString(5, p.getSkills());
		pst.setString(6, p.getDescription());
		
	
		int insert = pst.executeUpdate();
		return insert;

	} catch (SQLException e) {
		System.out.println(e);
	}
	return 0;

}
public Personal getPersonal(String UserId) {
	Personal result = null;
	try {
		conn = SqlConnect.dbConnector();
		String Query = "select * from personal where userid=?";
		PreparedStatement pst = conn.prepareStatement(Query);
		pst.setString(1, UserId);
		ResultSet rs=pst.executeQuery();
		while(rs.next()) {
			result = new Personal();
			result.setUserId(rs.getString(1));
			result.setFirstName(rs.getString(2));
			result.setLastName(rs.getString(3));
			result.setFatherName(rs.getString(4));
			result.setMotherName(rs.getString(5));
			result.setDob(rs.getString(6));
			result.setGender(rs.getString(7));
			result.setMobileNo(rs.getString(8));
			result.setAddress(rs.getString(9));
			result.setStrengths(rs.getString(10));
			result.setAge(rs.getString(11));
			result.setLangaugeProf(rs.getString(12));
			result.setEmailId(rs.getString(13));
			result.setCareerObjectives(rs.getString(14));
			result.setHobbies(rs.getString(15));
			
			
		}
		
		
	} catch (SQLException e) {
		System.out.println(e);
	}
	return result;
	
}

public Education getEducation(String UserId){
	Education result = null;
	try {
		conn = SqlConnect.dbConnector();
		
		String Query = "select * from education where userid=?";
		PreparedStatement pst = conn.prepareStatement(Query);
		pst.setString(1, UserId);
		ResultSet rs=pst.executeQuery();
		while (rs.next()) {
			result=new Education();
			result.setCollegeSchoolName(rs.getString(2));
			result.setDegree(rs.getString(3));
			result.setSubjectOrCombination(rs.getString(4));
			result.setPOY(rs.getString(5));
			result.setPercentage(rs.getString(6));
			

		
		}
	} catch (SQLException e) {
		System.out.println(e);
	}
	return result;
	
}

public Experience getExpirence(String userId){
	Experience result =null;
	try {
		conn = SqlConnect.dbConnector();
		String Query = "select * from expirence where userid=?";
		PreparedStatement pst = conn.prepareStatement(Query);
		pst.setString(1, userId);
		ResultSet rs=pst.executeQuery();
		while (rs.next()) {
			 result = new Experience();
			result.setCompany(rs.getString(2));
			result.setDesignation(rs.getString(3));
			result.setExperience(rs.getString(4));
			result.setSummaryOrProjects(rs.getString(5));
		}
	
} catch (SQLException e) {
	System.out.println(e);
}
return result;
}

public Achievements getAchievements(String userId){
	Achievements result =null;
	try {
		conn = SqlConnect.dbConnector();
		String Query = "select * from achievements where userid=?";
		PreparedStatement pst = conn.prepareStatement(Query);
		pst.setString(1, userId);
		ResultSet rs=pst.executeQuery();
		while (rs.next()) {
			result = new Achievements();
			result.setAwardsOrRecognition(rs.getString(2));
			result.setCompanyName(rs.getString(3));
			result.setDateOfAward(rs.getString(4));
			
		}
	
} catch (SQLException e) {
	System.out.println(e);
}
return result;
}
public Projects getProjects(String userId){
	Projects result = null;
	try {
		conn = SqlConnect.dbConnector();
		String Query = "select * from projects where userid=?";
		PreparedStatement pst = conn.prepareStatement(Query);
		pst.setString(1, userId);
		ResultSet rs=pst.executeQuery();
		while (rs.next()) {
	         result = new Projects();
			result.setProjects(rs.getString(2));
			result.setFrontEnd(rs.getString(3));
			result.setBackEnd(rs.getString(4));
			result.setSkills(rs.getString(5));
			result.setDescription(rs.getString(6));
		}
	
} catch (SQLException e) {
	System.out.println(e);
}
return result;
}
}
