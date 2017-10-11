package com.mapper;

import java.util.List;

import com.entity.Photos;
import com.entity.PhotosDto;

public interface PhotosMapper {

	List<Photos> findPhotos(Photos photos);

	String selectPhotosCount(Photos photos);

	List<Photos> findPhotosList(PhotosDto photosDto);
	
	int total(String albumid);

}