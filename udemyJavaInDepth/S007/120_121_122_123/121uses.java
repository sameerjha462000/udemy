package JAVA_IN_DEPTH;

public class Main {

	@SuppressWarnings("unused")
	public static void main(String[] args) {
		/**
		 * We have already discussed valueOf() and typeValue() methods
		 */
		
		/**
		 * parseType() methods
		 */
		
		int i = Integer.parseInt("123");
		long l = Long.parseLong("24");
		boolean b = Boolean.parseBoolean("true");
		
		
		/**
		 * We also have utility methods
		 */
		
		System.out.println(Character.isDigit('3'));
		System.out.println(Character.isUpperCase('a'));
		System.out.println(Character.isLetter('3'));
		System.out.println(Character.isLetterOrDigit('T'));
		System.out.println(Double.isNaN(0.0/0.0));
		
		/**
		 * All the wrapper classes have toString() method
		 */
		
		String integerAsString = Integer.toString(123);
		
		System.out.println(integerAsString);
		
		
	}

}
