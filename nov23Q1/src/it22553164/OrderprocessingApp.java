package it22553164;

public class OrderprocessingApp {

	public static void main(String[] args) {
		
		product p1 = new product();
		p1.read();
		product p2 = new product();
		p2.read();
		product p3 = new product();
		p3.read();
		product p4 = new product();
		p4.read();
		
		
		order o1 = new order(001,"taro",24);
		order o2 = new order(002,"chamodi",25);
		
		o1.AddProduct(p1);
		o1.AddProduct(p2);
		
		o2.AddProduct(p3);
		o2.AddProduct(p4);
		
		System.out.println("order 1 details" );
		o1.ProcessOrder();
		System.out.println("order 2 details" );
		o2.ProcessOrder();
		
		

	}

}
