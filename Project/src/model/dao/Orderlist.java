package model.dao;

public class Orderlist {
	String img;
	String gname;
	String color;
	int price;
	int odate;
	int amt;
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getOdate() {
		return odate;
	}
	public void setOdate(int odate) {
		this.odate = odate;
	}
	public int getAmt() {
		return amt;
	}
	public void setAmt(int amt) {
		this.amt = amt;
	}
	@Override
	public String toString() {
		return "Orderlist [img=" + img + ", gname=" + gname + ", color="
				+ color + ", price=" + price + ", odate=" + odate + ", amt="
				+ amt + "]";
	}
	public Orderlist(){};
	public Orderlist(String img, String gname, String color, int price,
			int odate, int amt) {
		super();
		this.img = img;
		this.gname = gname;
		this.color = color;
		this.price = price;
		this.odate = odate;
		this.amt = amt;
	}
	
	
}
