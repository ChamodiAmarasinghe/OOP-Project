package paymentMng;

public class Model {
    private int id;
    private String name;
    private String address;
    private String phone;
    private String email;
    private String holder;
    private String cardnumber;
    private String expdate;
    private String cvv;
    
    
	public Model(int id, String name, String address, String phone, String email, String holder, String cardnumber,
			String expdate, String cvv) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.holder = holder;
		this.cardnumber = cardnumber;
		this.expdate = expdate;
		this.cvv = cvv;
	}
    
	
	public Model(String name, String address, String phone, String email, String holder, String cardnumber,
			String expdate, String cvv) {
		super();
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.holder = holder;
		this.cardnumber = cardnumber;
		this.expdate = expdate;
		this.cvv = cvv;
	}


	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getAddress() {
		return address;
	}


	public String getPhone() {
		return phone;
	}


	public String getEmail() {
		return email;
	}


	public String getHolder() {
		return holder;
	}


	public String getCardnumber() {
		return cardnumber;
	}


	public String getExpdate() {
		return expdate;
	}


	public String getCvv() {
		return cvv;
	}


	public void setId(int id) {
		this.id = id;
	}


	public void setName(String name) {
		this.name = name;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public void setHolder(String holder) {
		this.holder = holder;
	}


	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}


	public void setExpdate(String expdate) {
		this.expdate = expdate;
	}


	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
    
    
	
    
}
