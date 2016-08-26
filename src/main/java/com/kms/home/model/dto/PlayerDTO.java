package com.kms.home.model.dto;

public class PlayerDTO {
	private int playSq;
	private String name;
	private String id;
	private String password;
	private String birthdate;
	private String url;
	private String introduction;
	private String bgUrl;
	/*private VisitorDTO visitorDTO;*/
	
	public PlayerDTO() {}
	
	/**
	 * 로그인
	 * */
	public PlayerDTO(String id, String password){
		this.id = id;
		this.password = password;
	}
	/**
	 * 회원가입
	 * */
	public PlayerDTO( String name, String id, String password, String birthdate) {
		this.name = name;
		this.id = id;
		this.password = password;
		this.birthdate = birthdate;
	}
	
	public PlayerDTO(int playSq, String name, String id, String password, String birthdate, String url,
			String introduction,String bgUrl) {
		super();
		this.playSq = playSq;
		this.name = name;
		this.id = id;
		this.password = password;
		this.birthdate = birthdate;
		this.url = url;
		this.introduction = introduction;
		this.bgUrl = bgUrl;
	}

	public int getPlaySq() {
		return playSq;
	}
	public void setPlaySq(int playSq) {
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

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getBgUrl() {
		return bgUrl;
	}

	public void setBgUrl(String bgUrl) {
		this.bgUrl = bgUrl;
	}

	@Override
	public String toString() {
		return "PlayerDTO [playSq=" + playSq + ", name=" + name + ", id=" + id + ", password=" + password
				+ ", birthdate=" + birthdate + ", url=" + url + ", introduction=" + introduction + ", bgUrl=" + bgUrl
				+ "]";
	}

	
	
	
	
}
