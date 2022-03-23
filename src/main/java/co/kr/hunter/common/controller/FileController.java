package co.kr.hunter.common.controller;

import java.io.File;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import co.kr.hunter.common.service.FileService;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class FileController {
	
	@Autowired
	private FileService fileService;
	
    /**
     * 유사식별 리스트
     * @return
     */	
	@RequestMapping("/filedownload")
    public void downloadFile(FileVo fileVo, HttpServletRequest request, HttpServletResponse response) throws Exception {
        
		FileVo file = fileService.fileDownload(fileVo);
        
        File downloadFile = new File(file.getFilePath());
        
        byte fileByte[] = FileUtils.readFileToByteArray(downloadFile);
        
        response.setContentType("application/octet-stream");
        response.setContentLength(fileByte.length);
        
        response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(file.getFileNm(),"UTF-8") +"\";");
        response.setHeader("Content-Transfer-Encoding", "binary");
        
        response.getOutputStream().write(fileByte);
        response.getOutputStream().flush();
        response.getOutputStream().close();
        
    }

	
}
