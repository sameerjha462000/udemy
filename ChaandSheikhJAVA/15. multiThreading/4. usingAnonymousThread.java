package ff;

public class Main{
	public static void main(String... args) {
		/**
		 * Using anonymous instance of thread class
		 */
		long startTime = System.currentTimeMillis();

		// Anonymous Thread implementing Runnable Interface(This is the same as lambda expression)
		new Thread(new Runnable() {

			@Override
			public void run() {
				for(int i = 1;i<=9;i++) {
					try {
						Thread.sleep(500);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					System.out.println("i : "+ i);
				}
			}
			
		}).start();
		
		Thread t2 = new Thread(new Runnable() {

			@Override
			public void run() {
				// TODO Auto-generated method stub
				for(int j = 1;j<=9;j++) {
					try {
						Thread.sleep(500);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					System.out.println("j : "+j);;
				}
				
			}
			
		});

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














