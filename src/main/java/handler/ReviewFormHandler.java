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
import review.ReviewDataBean;
import tutee.TuteeDataBean;
import tuteelec.TuteeLecDataBean;

@Controller
public class ReviewFormHandler implements CommandHandler{
	@Resource
	private LectureDao lectureDao;
		
	@RequestMapping("/reviewForm")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = (String)request.getSession().getAttribute("memid");
		
		List<TuteeLecDataBean> dtos = lectureDao.getTuteeClass(id);
		
		
	
		
		request.setAttribute("dtos", dtos);	
		return new ModelAndView("class365/reviewForm");
	}

}
