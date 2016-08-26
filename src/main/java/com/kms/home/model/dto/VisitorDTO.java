package com.kms.home.model.dto;

public class VisitorDTO {
	private int visitorSq;
	private int playSq;
	private String subject;
	private String content;
	private String time;
	private PlayerDTO playerDTO;
	
	public VisitorDTO() {}
	
	public VisitorDTO(int visitorSq, int playSq, String subject, String content, String time) {
		super();
		this.visitorSq = visitorSq;
		this.playSq = playSq;
		this.subject = subject;
		this.content = content;
		this.time = time;
	}


	public int getVisitorSq() {
		return visitorSq;
	}
	public void setVisitorSq(int visitorSq) {
		this.visitorSq = visitorSq;
	}
	public int getPlaySq() {
		return playSq;
	}
	public void setPlaySq(int playSq) {
		this.playSq = playSq;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	public PlayerDTO getPlayerDTO() {
		return playerDTO;
	}

	public void setPlayerDTO(PlayerDTO playerDTO) {
		this.playerDTO = playerDTO;
	}

	@Override
	public String toString() {
		return "VisitorDTO [visitorSq=" + visitorSq + ", playSq=" + playSq + ", subject=" + subject + ", content="
				+ content + ", time=" + time + ", playerDTO=" + playerDTO + "]";
	}

	
}
