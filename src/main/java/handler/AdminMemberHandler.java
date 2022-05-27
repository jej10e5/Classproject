package handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lecmem.LecmemDataBean;
import lecture.LectureDao;
import mem.MemDataBean;

@Controller
public class AdminMemberHandler implements CommandHandler{
	@Resource
	private LectureDao lectureDao;
	@RequestMapping("adminMember")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<MemDataBean> dtos=lectureDao.getMemberAll();
		request.setAttribute("dtos", dtos);
		return new ModelAndView("/class365/adminMember");
	}
}
