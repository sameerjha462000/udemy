package ff;

interface Lambda{
	void demo();
}
public class Main{
	
	public static void main(String... args) {
		/**
		 * This could be little confusing
		 */
		Lambda l = new Lambda() {

			@Override
			public void demo() {
				System.out.println("Statement 1");
			}
			
		};
		
		l.demo();
		
		
		Lambda l2 = ()->System.out.println("Statement 2");
		
		l2.demo();
		
		Lambda l3 = ()->{
			System.out.println("Statement 3");
			System.out.println("Statement 4");
		};
		
		l3.demo();
		
		Lambda l4 = ()->{System.out.println("Statement 5");};
		
		l4.demo();
		
		
		Lambda l5 = (()->System.out.println("Statement 6"));
		l5.demo();
		
		Lambda l6 = (()->{System.out.println("Statament 7");});
		l6.demo();
	}
}
