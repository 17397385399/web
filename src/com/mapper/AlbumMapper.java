package com.mapper;

import com.entity.Album;
import com.entity.AlbumDto;

import java.util.List;

public interface AlbumMapper {
	List<Album> selectAlbumList(AlbumDto albumDto);

	int total();
}