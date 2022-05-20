package lecture;

import java.util.List;

import lecmem.LecmemDataBean;
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
	public int getCreateTutor(String id) {
		return SqlMapClient.getSession().selectOne("Lecture.getTutorClassCount",id);
	}
}
