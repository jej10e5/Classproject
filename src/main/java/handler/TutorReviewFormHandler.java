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
import tutor.TutorDataBean;

@Controller
public class TutorReviewFormHandler implements CommandHandler{

	@Resource
	LectureDao lectureDao;
	
	
	@RequestMapping("/tutorReviewForm")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = (String)request.getSession().getAttribute("memid");		
		LectureDataBean	dlo = lectureDao.getLectureId(id);
		TutorDataBean sibal = lectureDao.getTutor(id);
		
		int lec_num= dlo.getLec_num();
		String pro = sibal.getPro();
		List<ReviewDataBean> dtos =lectureDao.getTutorReview(lec_num); 
		
		
		request.setAttribute("tutorpro", pro);
		request.setAttribute("tutorid", id);
		request.setAttribute("dtos", dtos);
		return new ModelAndView("class365/tutorReviewForm");
	}

}
