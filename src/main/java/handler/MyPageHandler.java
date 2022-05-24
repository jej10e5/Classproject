package handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lecture.LectureDao;
import lecturede.LectureDeDataBean;
@Controller
public class MyPageHandler implements CommandHandler {
	@Resource
	private LectureDao lectureDao;
	@RequestMapping("/myPage")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String id=(String) request.getSession().getAttribute("memid");
		List<LectureDeDataBean> dtos = lectureDao.getTuteeClassList(id);
		request.setAttribute("dtos", dtos);
		return new ModelAndView("class365/myPage");
	}
}
