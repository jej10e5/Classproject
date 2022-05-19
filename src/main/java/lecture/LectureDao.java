package lecture;

public interface LectureDao {
	public int createClass(LectureDataBean dto);
	public int check( String id );
	public int check( String id, String passwd );
	public int deleteMember( String id );
}
