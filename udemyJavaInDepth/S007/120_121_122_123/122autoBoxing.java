package JAVA_IN_DEPTH;

public class Main {

	@SuppressWarnings({ "unused", "removal" })
	public static void main(String[] args) {
		/**
		 * AutoBoxing -- This feature was introduced in JAVA 5
		 * 
		 * The java compiler automatically boxes the primitive
		 */
		
		Integer boxed = 25; // same as Integer i = new Integer(25); -- This is called auto-boxing
		
		/**
		 * JAVA compiler also does auto-unboxing for us
		 */
		
		int prim = new Integer(25); // same as int prim = (new Integer(25)).intValue();
		System.out.println(prim);
		
		
		/**
		 * Autoboxing does not work with arrays
		 */
		
		// Integer[] nums = new int[5]; // Illegal -- compiler error
		
		/**
		 * We can perform same operations on Integers as on primitives
		 */
		
		boxed++; // unboxes then increments
		boxed = boxed * 3; // unboxes and then multiplies by 3
		
		System.out.println(boxed);
		
	}

}
