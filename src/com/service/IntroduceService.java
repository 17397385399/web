package com.service;

import com.entity.Introduce;

public interface IntroduceService {
	public Introduce findIntroduce(Introduce introduce) throws Exception;

	public void updateIntroduce(Introduce introduce);
	
}
