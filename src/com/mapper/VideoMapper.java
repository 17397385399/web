package com.mapper;

import com.entity.Video;

import java.util.List;

public interface VideoMapper {

	List<Video> findVideoList(Video video);

	List<Video> findVideoNewsList(Video video);

	String selectVideoCount(Video video);
}