package lecture;

import lecmem.LecmemDataBean;
public interface LectureDao {
	public int createClass(LectureDataBean dto);
	public int insertMember( LecmemDataBean dto );
	public int check(String id,String passwd);
	public int check(String id);
	public LecmemDataBean getMember(String id);
}
