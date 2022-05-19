package lecture;

import lecmem.LecmemDataBean;
import tutor.TutorDataBean;
public interface LectureDao {
	public int createClass(LectureDataBean dto);
	public int insertMember( LecmemDataBean dto );
	public int check(String id,String passwd);
	public int check(String id);
	public LecmemDataBean getMember(String id);
	public TutorDataBean getTutor(String id);
	public int modifyTutor(TutorDataBean dto);
	public int insertTutor(TutorDataBean dto);
	public int tutorCheck(String id);
}
