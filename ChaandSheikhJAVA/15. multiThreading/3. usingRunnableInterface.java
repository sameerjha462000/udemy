package ff;

class MyCounter implements Runnable{
	
	private int threadNo;
	
	public MyCounter(int threadNo) {
		this.threadNo = threadNo;
	}
	
	void countMe() {
		for(int i = 1;i<=9;i++) {
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("i : "+ i + " threadNo : " + threadNo);
			
		}
	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		countMe();
	}
	
}
public class Main{
	public static void main(String... args) {
		/**
		 * There are two ways of creating a thread in JAVA, these are 
		 * A. Extending the Thread class
		 * B. Implementing the Runnable Interface
		 * 
		 * 
		 * The better way is to use create a thread using the Runnable Inteface(why?)
		 * 
		 * 	-- The reason for this is that in JAVA if we extend the Thread class then we would not be able to inherit from any other class which is a serious drawback
		 * 	-- whereas if we use the Runnable interface then we would still be able to implement other interfaces
		 * 
		 * Using Runnable interface We need to pass the instance of the class (Which implements the Runnable Interface to the constructor of the Thread class)
		 */
		
		long startTime = System.currentTimeMillis();
		Thread t1 = new Thread(new MyCounter(1));
		t1.start();
		
		Thread t2 = new Thread(new MyCounter(2));
		t2.start();
		try {
			Thread.sleep(5000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		long endTime = System.currentTimeMillis();
		
		System.out.println(endTime - startTime);
		
	}
}