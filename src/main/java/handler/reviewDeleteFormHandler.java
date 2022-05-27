package handler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lecture.LectureDao;
import review.ReviewDataBean;

@Controller
public class reviewDeleteFormHandler implements CommandHandler{

	@Resource
	LectureDao lectureDao;	
	
	@RequestMapping("/reviewDeleteForm")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int re_num= Integer.parseInt(request.getParameter("re_num"));
		 ReviewDataBean  dto =lectureDao.getRe(re_num);		
		 int gr = dto.getGr();
		 
		int rs = 0;
		lectureDao.deleteReview(gr);		
		rs =lectureDao.resetTuteeReviewNum(re_num);
		
		request.setAttribute("rs", rs);
		return new ModelAndView("class365/reviewDeleteForm");
	}

}
