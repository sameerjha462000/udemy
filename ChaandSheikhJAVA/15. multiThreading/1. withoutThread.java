package ff;

class MyCounter{
	private int threadNo;
	
	public MyCounter(int threadNo) {
		this.threadNo = threadNo;
	}
	
	public void countMe() {
		for(int i = 1;i<=9;i++) {
			System.out.println("i : " + i + " threadNo : " + threadNo);
		}
	}
}
public class Main{
	public static void main(String... args) {
		MyCounter counterOne = new MyCounter(1);
		MyCounter counterTwo = new MyCounter(2);
		
		counterOne.countMe();
		System.out.println("*********************");
		counterTwo.countMe();
	}
}