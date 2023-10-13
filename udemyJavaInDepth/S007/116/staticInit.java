package codes;

import java.util.HashMap;

/**
 * static initializer block is used to initialize those static variables whose initialization takes more than 1 line
 */

class Example{
	int ff;
	int ss;
	static int count;
	static HashMap<String,Integer> hm = new HashMap<>();
	
	static {
		/**
		 * Here we needed to populate the static HashMap hm with some default values which was only possible in SI block
		 */
		hm.put("India", 130);
		hm.put("China", 200);
		System.out.println("I have been called");
	}
	
	
	public static void print() {
		
	}
}

class Main{
	public static void main(String... args)
	{
		/**(VVImp)
		 * One more thing to keep in mind is that static block is executed as soon as a static member of the class is called or an instance of the class is created.
		 */
		Example.print();
	}
}









