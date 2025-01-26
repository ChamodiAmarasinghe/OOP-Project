package it22553164;

class PermanentEmployee extends Employee {

	private double basicSl;
	private double commission;
	
	public PermanentEmployee(int id, String name, double basicSl) {
		super(id, name);
		this.basicSl = basicSl;
		this.commission = 0.15 * basicSl;
		
    
	}
	
	public double calculateNetSalary() {
		double Netsalary = basicSl + commission;
		return basicSl + commission;
		
	}
	
	public void display() {
		System.out.println("basic salaary: " +basicSl);
		System.out.println("commission: " +commission);
	
		
	}
}
