package lecture;

import java.util.List;

import lecde.LecdeDataBean;
import lecmem.LecmemDataBean;
import lecturede.LectureDeDataBean;
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

	public List<LectureDeDataBean> getTutorClass(String id);
	public LectureDataBean getOriginClass(int lec_num);
	public int modifyClass(LectureDataBean dto);
	public int modifyClassImg(LectureDataBean dto);
	public int modifyClassThumb(LectureDataBean dto);
	public LecdeDataBean getOriginClassde(int lec_num);
	public int modifyClassde(LecdeDataBean dto);
	public int checkOriginClassde(int lec_num);
	public int deleteClass(int lec_num);
	public int inactiveClass(int lec_num);

	public int modifyMember( LecmemDataBean dto );



}
