package com.human.java.AIService;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.human.java.AiDAO.AiDao;
import com.human.java.RcpVO.RcpVO;

@Service("AiSer")
public class AiSerImpl implements AiSer {

	@Inject
	AiDao aiDao;

	@Override
	public List<RcpVO> Ai_recipe(RcpVO rcpvo) {
		return aiDao.Ai_recipe(rcpvo);
		
	}

	@Override
	public String countrcp() {
		// TODO Auto-generated method stub
		return aiDao.countrcp();
	}

	@Override
	public String upload_pic(MultipartFile file) {
		String command = "C:\\ProgramData\\Anaconda3\\python.exe";  // 명령어
	    String arg1 = "C:\\jython\\jython.py"; // 인자
	    String inputStr = file.getOriginalFilename(); // 업로드해서 가져오는 사진 이미지
	    
	    ProcessBuilder builder = new ProcessBuilder(command, arg1, inputStr);
	    
	    Process process;
		try {
//			builder.redirectOutput(ProcessBuilder.Redirect.INHERIT);
			builder.redirectError(ProcessBuilder.Redirect.INHERIT);
//			builder.redirectInput(ProcessBuilder.Redirect.INHERIT);
			String outputStr; 
			process = builder.start();
			BufferedReader input = new BufferedReader(new InputStreamReader(process.getInputStream()));
            while((outputStr=input.readLine())!=null)
            {
                // outputStr : 사진 비교해서 나오는 답
                System.out.println("채소이름 : "+outputStr);                
            }
            input.close();
            
			int exitVal = process.waitFor();  // 자식 프로세스가 종료될 때까지 기다림
		    if(exitVal != 0) {
		      // 비정상 종료
		    	System.out.println("비정상종료");
		    }
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return "outputStr";
	}

	@Override
	public Boolean store_image(MultipartFile file) throws Exception {
        Boolean result = Boolean.FALSE;
        try{
        	
            File destination = new File("C:\\jython\\" + file.getOriginalFilename());
            file.transferTo(destination);

            result = Boolean.TRUE;
        }catch (Exception e){
            System.out.println("에러 : " + e.getMessage());
        }finally {
            return result;
        }

	}
}
