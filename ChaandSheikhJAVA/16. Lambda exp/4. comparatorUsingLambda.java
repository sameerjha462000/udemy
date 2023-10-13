package ff;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Comparable interface
 */
class Data{
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
	
}

public class Main{
	
	public static void main(String... args) {
		List<Data> list = new ArrayList<>();
		
		list.add(new Data("Jacob oooo")); // 6
		list.add(new Data("Bhoomika Jha")); // 5
		list.add(new Data("Sameer iiii")); // 7
		list.add(new Data("Abhishek")); // 3
		
		System.out.println(list);
		
		Collections.sort(list, (Data o1, Data o2)->{
			int v1 = vowelsCount(o1.getName());
			int v2 = vowelsCount(o2.getName());
			return v1 - v2;
		});
		
		System.out.println(list);
	}

	private static int vowelsCount(String name) {
		name = name.toLowerCase();
		
		int count = 0 ;
		
		for(int i = 0;i < name.length();i++) {
			char ch = name.charAt(i);
			
			if(ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u')
				count++;
		}
		
		return count;
	}
}
