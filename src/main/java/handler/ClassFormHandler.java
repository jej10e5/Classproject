package handler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lecde.LecdeDataBean;
import lecmem.LecmemDataBean;
import lecture.LectureDao;
import lecture.LectureDataBean;
import tutor.TutorDataBean;

@Controller
public class ClassFormHandler implements CommandHandler{
	@Resource 
	LectureDao lectureDao;
	
	@RequestMapping("/classForm")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int lec_num = Integer.parseInt(request.getParameter("lec_num"));
		LectureDataBean dto= lectureDao.getLecture(lec_num);
		LecdeDataBean dcd = lectureDao.getLecde(lec_num);
		String id = dto.getId();
		TutorDataBean dtt = lectureDao.getTutor(id);
		LecmemDataBean dtl = lectureDao.getMember(id);
		
		//int month = lectureDao.calcMonth(lec_num);
		
		
		request.setAttribute("dto", dto);
		request.setAttribute("dtt", dtt);
		request.setAttribute("dtl", dtl);
		request.setAttribute("dcd", dcd);
		//request.setAttribute("month", month);
		return new ModelAndView("class365/classForm");
	}

}

