package ff;

class MyCounter extends Thread{
	private int threadNo;
	
	public MyCounter(int threadNo) {
		this.threadNo = threadNo;
	}
	
	@Override
	public void run() {
		countMe();
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
		
		counterOne.run();
		System.out.println("*********************");
		counterTwo.run();
	}
}



































// with sleep method we have





package ff;

class MyCounter extends Thread{
	private int threadNo;
	
	public MyCounter(int threadNo) {
		this.threadNo = threadNo;
	}
	
	@Override
	public void run() {
		countMe();
	}
	public void countMe() {
		for(int i = 1;i<=9;i++) {
			try {
				sleep(1000);
			} catch (InterruptedException e) {
			}
			System.out.println("i : " + i + " threadNo : " + threadNo);
		}
	}
}
public class Main{
	public static void main(String... args) {
		MyCounter counterOne = new MyCounter(1);
		MyCounter counterTwo = new MyCounter(2);
		
		counterOne.run();
		System.out.println("*********************");
		counterTwo.run();
	}
}







// calculating time as well while using run method


package ff;

class MyCounter extends Thread{
	private int threadNo;
	
	public MyCounter(int threadNo) {
		this.threadNo = threadNo;
	}
	
	@Override
	public void run() {
		countMe();
	}
	public void countMe() {
		for(int i = 1;i<=9;i++) {
			try {
				sleep(1000);
			} catch (InterruptedException e) {
			}
			System.out.println("i : " + i + " threadNo : " + threadNo);
		}
	}
}
public class Main{
	public static void main(String... args) {
		MyCounter counterOne = new MyCounter(1);
		MyCounter counterTwo = new MyCounter(2);
		
		long startTime = System.currentTimeMillis();
		counterOne.run();
		System.out.println("*********************");
		counterTwo.run();
		long endTime = System.currentTimeMillis();
		
		System.out.println(endTime - startTime);
	}
}









// Here the time was just above 18 seconds











// final code



package ff;

class MyCounter extends Thread{
	private int threadNo;
	
	public MyCounter(int threadNo) {
		this.threadNo = threadNo;
	}
	
	@Override
	public void run() {
		countMe();
	}
	public void countMe() {
		for(int i = 1;i<=9;i++) {
			try {
				sleep(100);
			} catch (InterruptedException e) {
			}
			System.out.println("i : " + i + " threadNo : " + threadNo);
		}
	}
}
public class Main{
	public static void main(String... args) {
		MyCounter counterOne = new MyCounter(1);
		MyCounter counterTwo = new MyCounter(2);
		
		long startTime = System.currentTimeMillis();
			counterOne.run(); // run method should be called by JVM
			System.out.println("*********************");
			counterTwo.run(); // run method should be called by JVM
		long endTime = System.currentTimeMillis();
		
		System.out.println(endTime - startTime);
	}
}






///  sleep the main thread


package ff;

class MyCounter extends Thread{
	private int threadNo;
	
	public MyCounter(int threadNo) {
		this.threadNo = threadNo;
	}
	
	@Override
	public void run() {
		countMe();
	}
	public void countMe() {
		for(int i = 1;i<=9;i++) {
			try {
				sleep(500);
			} catch (InterruptedException e) {
			}
			System.out.println("i : " + i + " threadNo : " + threadNo);
		}
	}
}
public class Main{
	public static void main(String... args) {
		MyCounter counterOne = new MyCounter(1);
		MyCounter counterTwo = new MyCounter(2);
		
		long startTime = System.currentTimeMillis();
			counterOne.start(); // run method should be called by JVM
			System.out.println("*********************");
			counterTwo.start(); // run method should be called by JVM
			try {
				Thread.sleep(5000);
			} catch (InterruptedException e) {
				// TODO  Auto-generated catch block
				e.printStackTrace();
			}
		long endTime = System.currentTimeMillis();
		
		System.out.println(endTime - startTime);
	}
}







