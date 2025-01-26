package it22553164;

abstract class Employee {
	protected int id;
	protected String name;
	
	public Employee(int id, String name) {
		this.id = id;
		this.name = name;
		
	}
	
	public void display() {
		 
		System.out.println("id" +id);
		System.out.println("name" +name);
		
	}
	
	public abstract double calculateNetSalary(); 

}