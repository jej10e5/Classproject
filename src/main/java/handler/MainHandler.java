package handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lecture.LectureDao;
import lecture.LectureDataBean;
@Controller
public class MainHandler implements CommandHandler {
	@Resource
	private LectureDao lectureDao;
	@RequestMapping("/mainForm")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		List<LectureDataBean> dtos = lectureDao.getClassList();
		request.setAttribute("dtos", dtos);
		return new ModelAndView("class365/mainForm"); 
	}
}
