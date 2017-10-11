package com.service;

import java.util.List;

import com.entity.Photos;
import com.entity.PhotosDto;


public interface PhotosService {
	public List<Photos> findPhotos(Photos photos) throws Exception;
	public String selectPhotosCount();
	public List<Photos> findPhotosList(PhotosDto photosDto) throws Exception;
	public int total(String albumid);
}
