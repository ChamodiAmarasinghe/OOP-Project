package it22553164;

import java.util.Scanner;

public class product {
	private int ProductId;
	private String pname;
	private double price;
	private int Quantity;
	
    public product() {
		
	}
    
	public product(int productId, String pname, double price, int quantity) {
		super();
		ProductId = productId;
		this.pname = pname;
		this.price = price;
		Quantity = quantity;
	}
	
	public void read() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("ProductId" );
		this.ProductId = scanner.nextInt();
		System.out.println("ProductName" );
		this.pname = scanner.nextLine();
		System.out.println("ProductPrice" );
		this.price = scanner.nextDouble();
		System.out.println("quantity" );
		this.Quantity = scanner.nextInt();
    scanner.close();
	}
	public void Display() {	
		System.out.println("ProductId" +ProductId );
		System.out.println("ProductName" +pname );
		System.out.println("ProductPrice" +price);
		System.out.println("quantity" +Quantity);
		
		
	}
	
	
	}
	


