package ff;

public class Main{
	/**
	 * This code would produce an inconsistent output for counter as it is simultaneously being modified by two threads
	 * 
	 * for this we use synchronization which we would see later
	 */
	public static int counter = 0;
	
	public static void main(String... args) throws InterruptedException {
		Thread t1 = new Thread(new Runnable() {

			@Override
			public void run() {
				// TODO Auto-generated method stub
				for(int i = 0;i<1000;i++) {
					Main.counter++;
				}
				System.out.println("1 over");
				
			}
			
		});
		
		Thread t2 = new Thread(new Runnable() {
			
			@Override
			public void run() {
				for(int j = 0;j<1000;j++) {
					Main.counter++;
				}
				System.out.println("2 over");
			}
		});
		
		t1.start();
		t2.start();
		
		Thread.sleep(2000);
		
		System.out.print(Main.counter);
	}
}






