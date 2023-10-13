package codes;

/**
 * Math class is a utility class
 * 
 * All the methods in the Math class are static.
 * Also, We cannot create an instance of Math class
 */
public class Main{
	public static void main(String[] args) {
		// Math m = new Math(); // This is illegal
		mathDemo();
	}
	
	
	private static void mathDemo() {
		// Lottery [1,100]
		double random = Math.random(); // returns a double value in [0.0,1.0)
		
		int winner = (int)(random * 100) + 1;
		
		
		
		System.out.println(random);
		System.out.println(winner);
		
		
		/**
		 * Math.round() has two versions
		 * 
		 * 	-- long Math.round(double); // both are 8 bytes
		 * 	-- int Math.round(float); // both are 4 bytes
		 *  -- Math.round() returns the nearest integral value
		 *  
		 */
		long roundOne = Math.round(24.45);
		int roundTwo = Math.round(24.5f);
		
		
		System.out.println(roundOne); // 24
		System.out.println(roundTwo); // 25
		
		/**
		 * Math.ceil() has only one version
		 * 
		 * 	-- double Math.ceil(double)
		 * 	-- It returns the nearest double value which is greater than or equal to the value.
		 * 
		 */
		
		double ceilOne = Math.ceil(24.45);
		double ceilTwo = Math.ceil(25.0);
		
		System.out.println(ceilOne); // 25.0
		System.out.println(ceilTwo); // 25.0
		
		
		/**
		 * Math.floor() has only one version
		 * 
		 * -- double Math.floor(double)
		 * -- It returns the nearest double value which is smaller than or equal to the value.
		 * 
		 */
		
		
		
		
		double floorOne = Math.floor(24.45);
		double floorTwo = Math.floor(25.0);
		
		System.out.println(floorOne); // 24.0
		System.out.println(floorTwo); // 25.0
		
		
		
		/**
		 * Math.max() has 4 versions
		 * 
		 *	-- int Math.max(int,int)
		 *	-- float Math.max(float,float)
		 *	-- double Math.max(double,double)
		 *	-- long Math.max(long,long)
		 *
		 */
		
		
		double max = Math.max(24.45,78.87);
		System.out.println(max);
		
		/**
		 * Math.abs() has 4 versions
		 * 
		 * -- int Math.abs(int)
		 * -- float Math.abs(float)
		 * -- double Math.abs(double)
		 * -- long Math.abs(long)
		 * 
		 */
		
		float abs = Math.abs(-67.89f);
		System.out.println(abs);
		
		
		/**
		 * Math.pow() has only one version
		 * 
		 * -- double Math.pow(double,double)
		 */
		
		double pow = Math.pow(4.0,5.0);
		System.out.println(pow);
		
		/**
		 * Math.sqrt() has only one version
		 * 
		 * -- double Math.sqrt(double)
		 * -- It gives NaN iff (value == NaN || value < 0.0)
		 * 
		 */
		
		double sqrt = Math.sqrt(-84);
		System.out.println(sqrt); // NaN
		
		
		
		
	}
}
