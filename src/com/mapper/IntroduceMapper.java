package com.mapper;

import com.entity.Introduce;

public interface IntroduceMapper {
	Introduce findIntroduce(Introduce introduce);
	
	void insertIntroduce(Introduce introduce);
	void updateIntroduce(Introduce introduce);

}