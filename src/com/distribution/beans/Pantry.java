package com.distribution.beans;

import java.util.Hashtable;

public class Pantry {

	String name;
	String address;
	double longitude;
	double latitude;
	Hashtable<String, Double> deamandList;
	Hashtable<String, Double> distributionList;
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public Hashtable<String, Double> getDeamandList() {
		return deamandList;
	}
	public void setDeamandList(Hashtable<String, Double> deamandList) {
		this.deamandList = deamandList;
	}
	public Hashtable<String, Double> getDistributionList() {
		return distributionList;
	}
	public void setDistributionList(Hashtable<String, Double> distributionList) {
		this.distributionList = distributionList;
	}
	
	
}
