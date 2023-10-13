package codes;

/**
 * Instance initializer blocks are used when we need to initialize some common variables in all 
 * the ctor's.
 * 
 * Everything which is written in II block gets copied into each of the constructors.
 */
class Pair{
	int first;
	int second;
	
	{	// This is II1
		System.out.println("Instance initializer block One");
	}
	
	{	// This is II2
		System.out.println("Instance initializer block Two");
	}
	
	Pair(){
		// II1
		// II2
		System.out.println("Default ctor");
	}
	
	Pair(int first,int second){
		// II1
		// II2
		System.out.println("Parametrized ctor");
	}
	
	Pair(Pair other){
		// II1
		// II2
		System.out.println("Copy ctor");
	}
}

class Main{
	@SuppressWarnings("unused")
	public static void main(String... args) {
		Pair p = new Pair();
		
		Pair pTwo = new Pair(10,20);
		
		Pair pThree = new Pair(pTwo);
	}
}
