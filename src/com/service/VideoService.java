package com.service;

import java.util.List;

import com.entity.Video;

public interface VideoService {
	public List<Video> findVideoNewsList(Video video) throws Exception;
	public List<Video> findVideoList(Video video) throws Exception;
	public String selectVideoCount();
}
