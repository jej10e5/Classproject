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
public class AdminConfirmHandler implements CommandHandler{
	@Resource
	private LectureDao lectureDao;
	@RequestMapping("adminConfirm")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int sta=4;
		List<LectureDeDataBean> dtos=lectureDao.getClassConfirm();
		request.setAttribute("dtos", dtos);
		return new ModelAndView("/class365/adminConfirm");
	}
}