package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.entity.Photos;
import com.entity.PhotosDto;
import com.mapper.PhotosMapper;
import com.service.PhotosService;
import com.util.Page;

public class PhotosServiceImp implements PhotosService{
	
	@Autowired
	private PhotosMapper photosMapper;

	@Override
	public List<Photos> findPhotos(Photos photos) throws Exception {
		// TODO Auto-generated method stub
		return photosMapper.findPhotos(photos);
	}

	@Override
	public String selectPhotosCount() {
		// TODO Auto-generated method stub
		Photos photos=new Photos();
		return photosMapper.selectPhotosCount(photos);
	}

	@Override
	public List<Photos> findPhotosList(PhotosDto photosDto) throws Exception {
		// TODO Auto-generated method stub
		return photosMapper.findPhotosList(photosDto);
	}

	@Override
	public int total(String albumid) {
		// TODO Auto-generated method stub
		return photosMapper.total(albumid);
	}
}
