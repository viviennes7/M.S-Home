package com.kms.home.model.dto;

public class PortfolioDTO {
	private int portfolioSq;
	private int playerSq;
	private String subject;
	private String strapline1;
	private String strapline2;
	private String strapline3;
	private String strapline4;
	private String strapline5;
	private String content;
	private String img;
	private String file;
	
	public PortfolioDTO() {}
	
	
	
	public PortfolioDTO(String subject, String strapline1, String strapline2, String strapline3, String strapline4,
			String strapline5, String content, String img, String file) {
		super();
		this.subject = subject;
		this.strapline1 = strapline1;
		this.strapline2 = strapline2;
		this.strapline3 = strapline3;
		this.strapline4 = strapline4;
		this.strapline5 = strapline5;
		this.content = content;
		this.img = img;
		this.file = file;
	}



	public PortfolioDTO(int portfolioSq, int playerSq, String subject, String strapline1, String strapline2,
			String strapline3, String strapline4, String strapline5, String content, String img, String file) {
		super();
		this.portfolioSq = portfolioSq;
		this.playerSq = playerSq;
		this.subject = subject;
		this.strapline1 = strapline1;
		this.strapline2 = strapline2;
		this.strapline3 = strapline3;
		this.strapline4 = strapline4;
		this.strapline5 = strapline5;
		this.content = content;
		this.img = img;
		this.file = file;
	}


	public int getPortfolioSq() {
		return portfolioSq;
	}
	public void setPortfolioSq(int portfolioSq) {
		this.portfolioSq = portfolioSq;
	}
	public int getPlayerSq() {
		return playerSq;
	}
	public void setPlayerSq(int playerSq) {
		this.playerSq = playerSq;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getStrapline1() {
		return strapline1;
	}
	public void setStrapline1(String strapline1) {
		this.strapline1 = strapline1;
	}
	public String getStrapline2() {
		return strapline2;
	}
	public void setStrapline2(String strapline2) {
		this.strapline2 = strapline2;
	}
	public String getStrapline3() {
		return strapline3;
	}
	public void setStrapline3(String strapline3) {
		this.strapline3 = strapline3;
	}
	public String getStrapline4() {
		return strapline4;
	}
	public void setStrapline4(String strapline4) {
		this.strapline4 = strapline4;
	}
	public String getStrapline5() {
		return strapline5;
	}
	public void setStrapline5(String strapline5) {
		this.strapline5 = strapline5;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	
	@Override
	public String toString() {
		return "PortfolioDTO [portfolioSq=" + portfolioSq + ", playerSq=" + playerSq + ", subject=" + subject
				+ ", strapline1=" + strapline1 + ", strapline2=" + strapline2 + ", strapline3=" + strapline3
				+ ", strapline4=" + strapline4 + ", strapline5=" + strapline5 + ", content=" + content + ", img=" + img
				+ ", file=" + file + "]";
	}
	
	
	
	
}
