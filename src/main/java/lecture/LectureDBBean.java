package lecture;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import lecde.LecdeDataBean;
import lecmem.LecmemDataBean;
import lecturede.LectureDeDataBean;
import tutor.TutorDataBean;

public class LectureDBBean implements LectureDao{
	@Override
	public int insertMember( LecmemDataBean dto ) {		
		return SqlMapClient.getSession().insert( "Lecture.insertMember", dto );
	}
	@Override
	public int createClass(LectureDataBean dto) {
		return SqlMapClient.getSession().
				insert("Lecture.insertClass",dto);
	}
	public int check(String id) {			
		int count = SqlMapClient.getSession().selectOne("Lecture.check",id);
		int result = 0;
		if(count !=0) {
			result = 1;
		} else {
		 result = 0;	
		}
	return result;
	}
	
	public int tutorCheck(String id) {			
		int count = SqlMapClient.getSession().selectOne("Lecture.tutorCheck",id);
		int result = 0;
		if(count !=0) {
			result = 1;
		} else {
		 result = 0;	
		}
	return result;
	}
	
	
	
	@Override
	public int check(String id, String passwd) {
		int count = check(id);
		int result = 0;
		if(count != 0) {
			LecmemDataBean dto = getMember(id);
			if(dto.getPasswd().equals(passwd)) {
				result = 1;
			}else {
				result = 0;
			}
		}	else {
			
			result = -1;
			
		}	
		return result;
	
	}
	
	@Override

	public int deleteMember(String id) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	public int calcMonth(int lec_num) {	
		LecdeDataBean dto = getLecde(lec_num);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		int month =0;

		try {
			Date bdate = sdf.parse(dto.getBe());
			Date  fdate = sdf.parse(dto.getFin());
			
			

			long diff = fdate.getTime()-bdate.getTime();
			long diffDays = diff / (24 * 60 * 60 * 1000) ;
			long difMonth = (diffDays+1)/30;
			
			month =(int)difMonth;
			return month;
		} catch (ParseException e) {
			e.printStackTrace();
		}
	
		return month;
	}// 

	public LecmemDataBean getMember(String id) {	
		return SqlMapClient.getSession().selectOne("Lecture.getMember",id);	
	  }

	public TutorDataBean getTutor(String id) {
		return SqlMapClient.getSession().selectOne("Lecture.getTutor",id);
	}
	@Override
	public int modifyTutor(TutorDataBean dto) {
		return SqlMapClient.getSession().update("Lecture.modifyTutor",dto);
	}

	@Override
	public int insertTutor(TutorDataBean dto) {
		return SqlMapClient.getSession().insert("Lecture.insertTutor",dto);
	}
	@Override
	public List<LectureDataBean> getClassList() {
		// TODO Auto-generated method stub
		return SqlMapClient.getSession().selectList("Lecture.getClassList");
	}
	@Override

	public LectureDataBean getLecture(int lec_num) {
		return SqlMapClient.getSession().selectOne("Lecture.getLecture",lec_num);
	}
	@Override
	public LecdeDataBean getLecde(int lec_num) {
		return SqlMapClient.getSession().selectOne("Lecture.getLecde",lec_num);
	}
	


	public int getCreateTutor(String id) {
		return SqlMapClient.getSession().selectOne("Lecture.getTutorClassCount",id);
	}
	

	@Override
	public int getLecNum() {
		// TODO Auto-generated method stub
		return SqlMapClient.getSession().selectOne("Lecture.getLecNum");
	}
	@Override
	public int createClass2(LecdeDataBean dto) {
		// TODO Auto-generated method stub
		return SqlMapClient.getSession().insert("Lecture.insertClass2",dto);
	}
	@Override

	public int calcMaxCost(LecdeDataBean dto, int month) {
		int price = dto.getPri();
		int m_cost = price*month;
				
		return m_cost;
	}
	public int finClass(int lec_num) {
		// TODO Auto-generated method stub
		return SqlMapClient.getSession().update("Lecture.updateFinClass",lec_num);

	}
	@Override
	public List<LectureDeDataBean> getTutorClass(String id) { 
		return SqlMapClient.getSession().selectList("Lecture.getTutorClass",id);
	}
	@Override
	public LectureDataBean getOriginClass(int lec_num) {
		return SqlMapClient.getSession().selectOne("Lecture.getOriginClass",lec_num);
	}
	@Override
	public int modifyClass(LectureDataBean dto) {
		return SqlMapClient.getSession().update("Lecture.updateClass",dto);
	}
	@Override
	public int modifyClassImg(LectureDataBean dto) {
		// TODO Auto-generated method stub
		return SqlMapClient.getSession().update("Lecture.updateClassImg",dto);
	}
	@Override
	public int modifyClassThumb(LectureDataBean dto) {
		// TODO Auto-generated method stub
		return  SqlMapClient.getSession().update("Lecture.updateClassThumb",dto);
	}
	@Override
	public LecdeDataBean getOriginClassde(int lec_num) {
		return SqlMapClient.getSession().selectOne("Lecture.getOriginClassde",lec_num);
	}
	@Override
	public int modifyClassde(LecdeDataBean dto) {
		return SqlMapClient.getSession().update("Lecture.updateClassDe",dto);
	}
	@Override
	public int checkOriginClassde(int lec_num) {
		return SqlMapClient.getSession().selectOne("Lecture.checkOriginClassde",lec_num);
	}

}
