package it22553164;

public class TemporaryEmp extends Employee {
	private int OtHrs;
	private double OtRate;
	private double minWage;
	
	
	public TemporaryEmp(int otHrs, double otRate, double minWage) {
		super();
		OtHrs = otHrs;
		OtRate = otRate;
		this.minWage = 1500;
		
	}
	public double calculateNetSalary() {
		return minWage + OtRate;
		
	}
	public void display() {
        super.display();
        System.out.println("OT Hours: " + OtHrs);
        System.out.println("OT Rate: " + OtRate);
        System.out.println("Minimum Wage: " + minWage);
	}
	
	

}
