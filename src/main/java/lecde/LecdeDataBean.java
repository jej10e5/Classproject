package lecde;

import java.sql.Timestamp;

public class LecdeDataBean {
	private int lec_num;
	private int lv;
	private int pri;
	private int cap;
	private String adr;
	private Timestamp be;
	private Timestamp fin;
	public int getLec_num() {
		return lec_num;
	}
	public void setLec_num(int lec_num) {
		this.lec_num = lec_num;
	}
	public int getLv() {
		return lv;
	}
	public void setLv(int lv) {
		this.lv = lv;
	}
	public int getPri() {
		return pri;
	}
	public void setPri(int pri) {
		this.pri = pri;
	}
	public int getCap() {
		return cap;
	}
	public void setCap(int cap) {
		this.cap = cap;
	}
	public String getAdr() {
		return adr;
	}
	public void setAdr(String adr) {
		this.adr = adr;
	}
	public Timestamp getBe() {
		return be;
	}
	public void setBe(Timestamp be) {
		this.be = be;
	}
	public Timestamp getFin() {
		return fin;
	}
	public void setFin(Timestamp fin) {
		this.fin = fin;
	}
	
}
