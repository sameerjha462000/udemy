package JAVA_IN_DEPTH;

public class Main {
	
	/**
	 * We have 8 primitive data types in JAVA -- corresponding to each primitive there exist a BOXED DATA TYPE(also called as Wrapper class).
	 * 
	 */
	@SuppressWarnings("unused")
	public static void main(String[] args) {
		/**
		 * The valueOf() method is a factory method to get an instance of the Integer class.
		 * The valueOf() methods return an instance of the Wrapper class and it is always better that we use valueOf method as suggested by official documentation of JAVA(Why?)
		 * 
		 *  -- The reason why it is preferred over Integer i = new Integer(8); is because it uses caching to give us the values, so if the integral value passed in valueOf() is
		 *     >= -127 and < 128 then we can save space and time.
		 *  -- Also, it might be removed in future versions of JAVA.
		 *  
		 */
		Integer boxedInt = Integer.valueOf(89);
		Integer boxedString = Integer.valueOf("123"); // We can also use "Strings" in valueOf() method but would give error if String is non-numeric. For example := "12Abhi"
		
		Boolean boxedBoolean = Boolean.valueOf(false);
		Character boxedCharacter = Character.valueOf('c');
		Float boxedFloat = Float.valueOf(24.5f);
		
		/**
		 * printing them out automatically invokes their toString() method
		 */
		System.out.println(boxedInt);
		System.out.println(boxedString);
		System.out.println(boxedBoolean);
		System.out.println(boxedCharacter);
		System.out.print(boxedFloat);
		
		
		// unwrap -- typeValue()
		int primitiveInt = boxedInt.intValue();
		boolean primitiveBoolean = boxedBoolean.booleanValue();
		char primtiveCharacter = boxedCharacter.charValue();
		float primitiveFloat = boxedFloat.floatValue();
		
		
	}

}
