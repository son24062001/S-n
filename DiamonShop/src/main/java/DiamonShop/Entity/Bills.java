package DiamonShop.Entity;

public class Bills {
	private long id;
	private String user;
	private String phone;
	private String display_name;
	private String address;
	
	private String note;

	public Bills() {
		super();
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDisplay_name() {
		return display_name;
	}

	public void setDisplay_name(String display_name) {
		this.display_name = display_name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String adress) {
		this.address = adress;
	}

	

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

}
