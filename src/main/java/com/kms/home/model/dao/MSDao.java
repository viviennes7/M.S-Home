package com.kms.home.model.dao;

import com.kms.home.model.dto.PlayerDTO;
public interface MSDao {
	public int join(PlayerDTO dto);
	
	public PlayerDTO login(PlayerDTO dto);
	
	public PlayerDTO setting(int playSq);
	
	public int profileUpdate(PlayerDTO dto);
}
