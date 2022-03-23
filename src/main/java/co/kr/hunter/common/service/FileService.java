package co.kr.hunter.common.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.hunter.common.mapper.CommonMapper;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class FileService {

	@Autowired
	private CommonMapper commonMapper;
	
    /**
     * 유사식별 리스트
     * @return
     */	
	public FileVo fileDownload(FileVo fileVo) {
		return commonMapper.fileDownload(fileVo);
	}
	  
}
