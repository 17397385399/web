package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.entity.Introduce;
import com.mapper.IntroduceMapper;
import com.service.IntroduceService;
import com.util.UUIDTool;

public class IntroduceServiceImp implements IntroduceService{
	
	@Autowired
	private IntroduceMapper Introducemapper;

	@Override
	public Introduce findIntroduce(Introduce introduce) throws Exception {
		// TODO Auto-generated method stub
		return Introducemapper.findIntroduce(introduce);
	}

	@Override
	public void updateIntroduce(Introduce introduce) {
		// TODO Auto-generated method stub
		if("".equals(introduce.getId())){
			String id=UUIDTool.getUUID();
			introduce.setId(id);
			Introducemapper.insertIntroduce(introduce);
		}else {
			Introducemapper.updateIntroduce(introduce);
		}
	}

}
