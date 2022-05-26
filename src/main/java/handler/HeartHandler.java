package handler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import leclike.LeclikeDataBean;
import lecture.LectureDao;

@Controller
public class HeartHandler{
	@Resource
	private LectureDao lectureDao;
	@RequestMapping("heart.do")
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int check=Integer.parseInt(request.getParameter("heart"));
		int lec_num=Integer.parseInt(request.getParameter("lec_num"));
		String id=request.getParameter("id");
		LeclikeDataBean dto = new LeclikeDataBean();
		dto.setId(id);
		dto.setLec_num(lec_num);
		if(check==0) {
			lectureDao.insertHeart(dto);
			return new ModelAndView("/class365/solidheart");
		}else {
			lectureDao.deleteHeart(dto);
			return new ModelAndView("/class365/emptyheart");
		}

	}
	
}
