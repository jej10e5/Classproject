package lecture;

import java.util.List;

import lecde.LecdeDataBean;
import lecmem.LecmemDataBean;
import tutor.TutorDataBean;
public interface LectureDao {
	public int createClass(LectureDataBean dto);
	public int deleteMember( String id );

	public int insertMember( LecmemDataBean dto );
	public int check(String id,String passwd);
	public int check(String id);
	public LecmemDataBean getMember(String id);

	public TutorDataBean getTutor(String id);
	public int modifyTutor(TutorDataBean dto);
	public int insertTutor(TutorDataBean dto);
	public int tutorCheck(String id);
	public LectureDataBean getLecture(int lec_num);
	public List<LectureDataBean> getClassList();

	public LecdeDataBean getLecde(int lec_num);
	public int calcMonth(int lec_num);
	public int calcMaxCost(LecdeDataBean dto,int month);
	
	public int getCreateTutor(String id);
	public int getLecNum();
	
	public int finClass(int lec_num);
	public int createClass2(LecdeDataBean dto);
	public int modifyMember( LecmemDataBean dto );
	public String findId(String tel);
}
