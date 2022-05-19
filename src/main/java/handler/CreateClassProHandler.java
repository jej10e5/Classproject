package handler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
		String id = "aaa";
		LectureDataBean dto = new LectureDataBean();
		dto.setId(id);
		dto.setSub(request.getParameter("lec_sub"));
		dto.setCon(request.getParameter("lec_con"));
		dto.setIntr(request.getParameter("lec_intr"));
		dto.setCate(request.getParameter("category"));
		dto.setImg("img1.png");
		dto.setThu("bear1.png");
		int result = lectureDao.createClass(dto);
		request.setAttribute("result", result);
		return new ModelAndView("class365/createClassPro1");
	}
	
}
