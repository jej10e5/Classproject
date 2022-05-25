package lecture;

import java.util.List;

import lecde.LecdeDataBean;
import lecmem.LecmemDataBean;

import tutee.TuteeDataBean;
import tuteelec.TuteeLecDataBean;
import lecturede.LectureDeDataBean;
import review.ReviewDataBean;
import tutor.TutorDataBean;
public interface LectureDao {
	public int createClass(LectureDataBean dto);
	public int deleteMember( String id );
	
	
	public int insertMember( LecmemDataBean dto );
	public int insertTutee(TuteeDataBean dto);
	
	public int check(String id,String passwd);
	public int check(String id);
	public LecmemDataBean getMember(String id);

	public TutorDataBean getTutor(String id);
	public int modifyTutor(TutorDataBean dto);
	public int insertTutor(TutorDataBean dto);
	public int tutorCheck(String id);
	public LectureDataBean getLecture(int lec_num);
	public List<LectureDeDataBean> getClassList();

	public LecdeDataBean getLecde(int lec_num);
	public int calcMonth(int lec_num);
	public int calcMaxCost(LecdeDataBean dto,int month);
	public int calcDays(int lec_num);
	
	public int getCreateTutor(String id);
	public int getLecNum();
	
	public int modifyReview(ReviewDataBean dto);
	public int insertReview(ReviewDataBean dto);
	public ReviewDataBean getReview(ReviewDataBean dto); //튜티 테이블에 리뷰넘버 넣을떄 사용하는 메서드 
	public ReviewDataBean getRe(int re_num); // 리뷰 수정할떄 사용하는 메서드
	
	public int finClass(int lec_num);
	public int createClass2(LecdeDataBean dto);
	
	public int insertRenum(TuteeDataBean dtt);
	public List<LectureDeDataBean> getTutorClass(String id);
	public List<TuteeLecDataBean> getTuteeClass(String id);
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
	public int modifyTutorPro(TutorDataBean dto);


}
