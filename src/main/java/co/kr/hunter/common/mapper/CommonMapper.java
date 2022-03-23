package co.kr.hunter.common.mapper;

import org.springframework.stereotype.Repository;

import co.kr.hunter.common.vo.FileVo;

@Repository
public interface CommonMapper {

	FileVo fileDownload(FileVo fileVo);


}
