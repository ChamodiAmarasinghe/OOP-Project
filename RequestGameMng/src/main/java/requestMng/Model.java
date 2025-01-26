package requestMng;

public class Model {
    private int id;
    private String cate;
    private String name;
    private String quan;
    private String date;
    
    
	public Model(int id, String cate, String name, String quan, String date) {
		super();
		this.id = id;
		this.cate = cate;
		this.name = name;
		this.quan = quan;
		this.date = date;
	}


	public Model(String cate, String name, String quan, String date) {
		super();
		this.cate = cate;
		this.name = name;
		this.quan = quan;
		this.date = date;
	}


	public int getId() {
		return id;
	}


	public String getCate() {
		return cate;
	}


	public String getName() {
		return name;
	}


	public String getQuan() {
		return quan;
	}


	public String getDate() {
		return date;
	}


	public void setId(int id) {
		this.id = id;
	}


	public void setCate(String cate) {
		this.cate = cate;
	}


	public void setName(String name) {
		this.name = name;
	}


	public void setQuan(String quan) {
		this.quan = quan;
	}


	public void setDate(String date) {
		this.date = date;
	}
    
	
    
	

	
	

	
    
}
