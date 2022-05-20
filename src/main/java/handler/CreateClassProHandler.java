package handler;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.media.jai.JAI;
import javax.media.jai.RenderedOp;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import lecture.LectureDao;
import lecture.LectureDataBean;

@Controller
public class CreateClassProHandler implements CommandHandler{
	@Resource
	private LectureDao lectureDao;
	@RequestMapping("/createClassPro1")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String id = (String)request.getSession().getAttribute("memid");		
		LectureDataBean dto = new LectureDataBean();

		String path= request.getSession().getServletContext().getRealPath("/classImage");
		new File( path ).mkdir();

		
		MultipartRequest multi = new MultipartRequest(
				request, path, 1024*1024*5, "utf-8", new DefaultFileRenamePolicy());
			
		String sub = multi.getParameter("lec_sub");
		String con = multi.getParameter("lec_con");
		String intr = multi.getParameter("lec_intr");
		String category = multi.getParameter("category");
		String imgname = multi.getFilesystemName("img");
		String thumbname=multi.getFilesystemName("thumb");
		//origin_name������ �ʿ� ��� ����.
		dto.setId(id);
		dto.setSub(sub);
		dto.setCon(con);
		dto.setIntr(intr);
		dto.setCate(category);
		dto.setImg(imgname);
		dto.setThu(thumbname);
		
		int result = lectureDao.createClass(dto);
		request.setAttribute("result", result);
		
		return new ModelAndView("class365/createClassPro1");
	}
	
}
