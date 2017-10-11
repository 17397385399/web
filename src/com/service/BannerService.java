package com.service;

import java.util.List;

import com.entity.Banner;

public interface BannerService {
	public List<Banner> findBannerNewsList(Banner banner) throws Exception;
}
