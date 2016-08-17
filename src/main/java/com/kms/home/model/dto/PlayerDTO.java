package com.kms.home.model.dto;

public class PlayerDTO {
	private String playSq;
	private String name;
	private String id;
	private String password;
	private String birthdate;
	
	public PlayerDTO() {}
	
	public PlayerDTO(String id, String password){
		this.id = id;
		this.password = password;
	}
	
	public PlayerDTO( String name, String id, String password, String birthdate) {
		this.name = name;
		this.id = id;
		this.password = password;
		this.birthdate = birthdate;
	}
	
	public PlayerDTO(String playSq, String name, String id, String password, String birthdate) {
		this.playSq = playSq;
		this.name = name;
		this.id = id;
		this.password = password;
		this.birthdate = birthdate;
	}
	
	public String getPlaySq() {
		return playSq;
	}
	public void setPlaySq(String playSq) {
		this.playSq = playSq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getbirthdate() {
		return birthdate;
	}
	public void setbirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	@Override
	public String toString() {
		return "PlayerDTO [playSq=" + playSq + ", name=" + name + ", id=" + id + ", password=" + password
				+ ", birthdate=" + birthdate + "]";
	}
	
}
