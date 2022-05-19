package lecture;

import lecmem.LecmemDataBean;

public interface LectureDao {
	public int createClass(LectureDataBean dto);
	public int insertMember( LecmemDataBean dto );
}
