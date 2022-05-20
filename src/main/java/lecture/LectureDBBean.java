package lecture;

import java.util.List;

import lecde.LecdeDataBean;
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
	
	@Override
<<<<<<< HEAD
	public int deleteMember(String id) {
		// TODO Auto-generated method stub
		return 0;
	}
	
=======
	public String classLevel(int Lv) {
		String Level = "";
		if(Lv==1) {
			Level = "�ʱ���";
			
		}else if(Lv==2) {
			Level = "�߱���";
		}else if(Lv==3) {
			Level = "�����";
		}
		
		
		
		return Level;
	}
	
	
	public int calcMonth(int lec_num) {	
		int month = (int)SqlMapClient.getSession().selectOne("Lecture.calcMonth",lec_num);
		
		return month;
	}// fin-be �ؼ� �� ����� ��� �Լ�
>>>>>>> 0204025ece6d2bf237a0f6d27cae6d69c3729e3b
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

}
