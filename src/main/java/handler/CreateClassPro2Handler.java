package handler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lecture.LectureDao;

@Controller
public class CreateClassPro2Handler implements CommandHandler{
	@Resource
	private LectureDao lectureDao;
	@RequestMapping("/createClassPro2")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		int lec_num = lectureDao.getLecNum();
		request.setAttribute("lec_num", lec_num);
		return new ModelAndView("class365/createClassPro2");
	}
}
