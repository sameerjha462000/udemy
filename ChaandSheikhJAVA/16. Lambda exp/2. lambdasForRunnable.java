package ff;

interface Lambda{
	void demo();
}
public class Main{
	
	public static void main(String... args) {
		/**
		 * Lambda expressions are used in case of functional Interfaces?
		 * 
		 * But what are functional interfaces? 
		 *  -- The interface which have only method to implement
		 *  -- For example, the Lambda interface here is functional interface
		 */
		
		/**
		 * Runnable interface also has only one method -- run(){for this see the documentation}
		 * Which means that Runnable interface is also a functional interface
		 */
		
		/**
		 * Without using lambda expression for Runnable interface
		 */
		Thread t1 = new Thread(new Runnable() {
			
			@Override
			public void run() {
				System.out.println("t1");
			}
		});
		t1.start();
		
		
		/**
		 * Now let us create a thread using lambda expression for Runnable interface
		 */
		
		Thread t2 = new Thread(()->System.out.println("t2"));
		t2.start();
		
		Thread t3 = new Thread(()->{
			System.out.println("t3");
			System.out.println("t3 again");
				
		});
		t3.start();
		
		Thread t4 = new Thread(()->{System.out.println("t4");});
		t4.start();
		
		Thread t5 = new Thread((()->System.out.println("t5")));
		t5.start();
		
		Thread t6 = new Thread((()->{System.out.println("t6");}));
		t6.start();
		
	}
}





