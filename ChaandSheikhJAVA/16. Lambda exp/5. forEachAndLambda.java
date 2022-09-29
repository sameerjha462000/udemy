package ff;

import java.util.ArrayList;
import java.util.List;

public class Main{
	
	public static void main(String... args) {
		/**
		 * for each loop and lambda expression
		 */
		
		List<Integer> list = new ArrayList<>();
		
		list.add(5);
		list.add(54);
		list.add(7);
		list.add(51);
		list.add(45);
		list.add(59);
		
		/**
		 * forEach method is void type4
		 * 
		 * In forEach we do not need to mention the data type
		 */
		
		/**
		 * Another point that one must keep in mind is that in lambda expressions we cannot modify the value of
		 * a local variable 
		 * i.e,
		 * the value which is local must be final or effectively final
		 */
		
		/**
		 * This is the reason we were not able to increment count inside the lambda expression but we were
		 * able to use count2 inside forEach as it was effectively final since it was not modified after being declared. 
		 */
		
		int count2 = 90;
		// int count = 0;
		list.forEach(i -> {
			if(i >= 10) {
				// count++;
				System.out.println("count2 : " + count2);
				System.out.println("i : " + i);
			}
				
		});
		
		
		
	}
	
}
