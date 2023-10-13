package ff;

class Brackets{
	/**
	 * If we do not make this method synchronized then we can get inconsistent results
	 * 
	 * However, If we mark it as synchronized then only one thread would be able to access at a single point in time
	 */
	synchronized void generate(int code) {
		for(int i = 1;i <= 10;i++) {
			if(i <= 5) {
				System.out.print("[");
			}else {
				System.out.print("]");
			}
		}
		if(code == 0)
			System.out.println("0");
		else {
			System.out.println("1");
		}
	}
}
public class Main{
	
	public static void main(String... args) throws InterruptedException {
		Brackets b = new Brackets();
		
		new Thread(new Runnable() {

			@Override
			public void run() {
				// TODO Auto-generated method stub
				for(int i = 1;i<=5;i++) {
					b.generate(0);
				}
			}
			
		}).start();
		
		
		new Thread(new Runnable() {

			@Override
			public void run() {
				// TODO Auto-generated method stub
				for(int i = 1;i<=5;i++) {
					b.generate(1);
				}
			}
			
		}).start();
	}
}


/**
 * But what happens when we make a method synchronized ? 
 * 
 * Every object has a 2 parts -- synchronized part and non synchronized part
 * When we apply the keyword before a method then that method gets locked. Now when a thread comes to access
 * that method it would acquire the key to go into the synchronized area and would lock the method from inside
 * due to which if any other thread comes to access the synchronized then that thread would have to wait until
 * the thread having the key finishes its current task.
 */



/** 
 * Basically what I have understood is that using the synchronized keyword before a method places a lock on 
 * that method and this lock is different for each individual instance of the class. Due to which if two thread
 * try to access the synchronized method of the same object, then the second thread would have to wait until and
 * unless the first thread finishes it's task. But let us suppose we create 2 instances of the same class and try
 * to access them from two different threads. For Example := let's say we have b1 and b2 as objects and t1 and t2 as threads and 
 * t1 is trying to access b1's synchronized method and t2 is trying to access b2's synchronized method, then we 
 * might get inconsistent result as both the threads are working simultaneously.
 */


