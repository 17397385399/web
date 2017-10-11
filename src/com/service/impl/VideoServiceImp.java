package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.entity.Video;
import com.mapper.VideoMapper;
import com.service.VideoService;

public class VideoServiceImp implements VideoService{
	
	@Autowired
	private VideoMapper videomapper;

	@Override
	public List<Video> findVideoNewsList(Video video) throws Exception {
		// TODO Auto-generated method stub
		return videomapper.findVideoNewsList(video);
	}
	
	@Override
	public List<Video> findVideoList(Video video) throws Exception {
		// TODO Auto-generated method stub
		return videomapper.findVideoList(video);
	}

	@Override
	public String selectVideoCount() {
		// TODO Auto-generated method stub
		Video video=new Video();
		return videomapper.selectVideoCount(video);
	}

}
