package com.service;

import java.util.List;

import com.entity.Album;
import com.entity.AlbumDto;

public interface AlbumService {
	public List<Album> selectAlbumList(AlbumDto albumDto) throws Exception;
	public int total();
}
