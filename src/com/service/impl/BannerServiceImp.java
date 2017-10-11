package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.entity.Banner;
import com.mapper.BannerMapper;
import com.service.BannerService;

public class BannerServiceImp implements BannerService{
	
	@Autowired
	private BannerMapper bannermapper;

	@Override
	public List<Banner> findBannerNewsList(Banner banner) throws Exception {
		// TODO Auto-generated method stub
		return bannermapper.findBannerNewsList(banner);
	}

}
