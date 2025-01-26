package it22553164;

public class order {
	private int orderId;
	private String name;
	private String orderDate;
	
	
public void order() {
		
		this.orderId = 0;
		this.name = null;
		this.orderDate = null;
}
	
	public order(int orderId, String name, String orderDate) {
		super();
		this.orderId = orderId;
		this.name = name;
		this.orderDate = orderDate;
	}
	
	public void order() {
		
		this.orderId = 0;
		this.name = null;
		this.orderDate = null;
	}

	public void AddProduct(product p) {
		products.add(p);
	}
	
	
	public void ProcessOrder() {
		System.out.println("order id:" +orderId );
		System.out.println("order name:" +name );
		System.out.println("order orderDate:" +orderDate );
		
	}
	
	
	
	
	
	
	

}
