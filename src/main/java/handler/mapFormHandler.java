package handler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lecde.LecdeDataBean;
import lecture.LectureDao;
import lecturede.LectureDeDataBean;
import map.MapDataBean;

@Controller
public class mapFormHandler implements CommandHandler{
	@Resource
	private LectureDao lectureDao;
	@RequestMapping("mapForm")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<MapDataBean> dtos=lectureDao.getClassMapList();
		//List<LecdeDataBean> dtos = lectureDao.getClassDeList();
		request.setAttribute("dtos", dtos);
		return new ModelAndView("class365/mapForm");
		
	}
}
