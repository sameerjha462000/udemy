package ff;


import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * Comparable interface
 */
class Data implements Comparable<Data>{
	private String name;
	
	public Data(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	
	@Override
	public String toString() {
		return "Data [name=" + name + "]";
	}

	/**
	 * If it returns +ve ===> o1  > o2
	 * If it returns -ve ===> o2  > o1
	 * If it returns 0   ===> o1 == o2
	 */
	@Override
	public int compareTo(Data o) {
		return (this.name).compareTo(o.name);
	}
}

/**
 * Using Comparator interface
 *  -- Also, one thing to keep in mind is that a class can be used to implement only a
 *     single comparator interface.
 */
class comp implements Comparator<Data>{
	
	/**
	 * If it returns +ve ===> o1  > o2
	 * If it returns -ve ===> o2  > o1
	 * If it returns 0   ===> o1 == o2
	 */
	@Override
	public int compare(Data o1, Data o2) {
		int lenOne = o1.getName().length();
		int lenTwo = o2.getName().length();
		
		return lenOne-lenTwo;
	}
	
}

public class Main{
	
	public static void main(String... args) {
		List<Data> list = new ArrayList<>();
		
		list.add(new Data("Jacob oooo")); // 6
		list.add(new Data("Bhoomika Jha")); // 5
		list.add(new Data("Sameer iiii")); // 7
		list.add(new Data("Abhishek")); // 3
		
		System.out.println(list);
		
		Collections.sort(list,new comp());
		
		System.out.println(list);
		
		/**
		 * Now we will do sorting on the basis of vowels in the word
		 */
		
		Collections.sort(list,new Comparator<Data>(){

			@Override
			public int compare(Data o1, Data o2) {
				int v1 = countVowels(o1.getName());
				int v2 = countVowels(o2.getName());
				
				return v1-v2;
			}
			
		});
		
		System.out.println(list);
		
	}
	
	private static int countVowels(String str) {
		str = str.toLowerCase();
		int ans = 0;
		
		for(int i = 0;i<str.length();i++) {
			char ch = str.charAt(i);
			
			if(ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u')
				ans++;
		}
		
		return ans;
	}
}
