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
public class RefundRequestHandler implements CommandHandler{
	@Resource
	private LectureDao lectureDao;
	@RequestMapping("refundRequest")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = (String)request.getSession().getAttribute("memid");
		//신청버튼을 눌러서 강의정보가 넘어올때
		if(request.getParameter("lec_num")!=null&&request.getParameter("lec_num")!="") {
			int lec_num=Integer.parseInt(request.getParameter("lec_num"));
			RefundDataBean dto = new RefundDataBean();
			dto.setId(id);
			dto.setLec_num(lec_num);
			//이미 신청접수가 되어있는지 확인
			if(lectureDao.checkMemRefund(dto)==0) {//0>>접수가 안되어있음
				int check=lectureDao.insertRefund(dto); 
				request.setAttribute("check", check);
				List<RefundDataBean> dtos=lectureDao.getMemberRefund(id);
				request.setAttribute("dtos", dtos);
				return new ModelAndView("class365/refundRequest");
			}else {//1>>접수가 되어있음
				int check=0;
				request.setAttribute("check", check);
				List<RefundDataBean> dtos=lectureDao.getMemberRefund(id);
				request.setAttribute("dtos", dtos);
				return new ModelAndView("class365/refundRequest");
			}
		}else {//신청버튼을 누른게 아닌 mypage에서 취소현황을 눌렀을때
			List<RefundDataBean> dtos=lectureDao.getMemberRefund(id);
			request.setAttribute("dtos", dtos);
			
			
			return new ModelAndView("class365/refundRequest");
		}

		
	}
}
