package handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lecture.LectureDao;
import refund.RefundDataBean;

@Controller
public class AdminRefundHandler implements CommandHandler{
	@Resource
	private LectureDao lectureDao;
	@RequestMapping("adminMainForm")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<RefundDataBean> dtos=lectureDao.getRefundList();
		request.setAttribute("dtos", dtos);
		return new ModelAndView("/class365/adminMainForm");
	}
}
