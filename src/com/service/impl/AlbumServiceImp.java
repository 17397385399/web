package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.entity.Album;
import com.entity.AlbumDto;
import com.mapper.AlbumMapper;
import com.service.AlbumService;

public class AlbumServiceImp implements AlbumService{
	
	@Autowired
	private AlbumMapper albummapper;

	@Override
	public List<Album> selectAlbumList(AlbumDto albumDto) throws Exception {
		// TODO Auto-generated method stub
		return albummapper.selectAlbumList(albumDto);
	}

	@Override
	public int total() {
		// TODO Auto-generated method stub
		return albummapper.total();
	}

}
