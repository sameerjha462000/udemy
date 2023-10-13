package ff;

import java.io.File;
import java.io.IOException;

public class Main{
	/**
	 * In java we have three types of streams -- output stream, input stream, error stream
	 * Also, these have been automatically created for us. All these streams are attached to the console.
	 * 
	 * System.out -- output stream
	 * System.in  -- input  stream
	 * System.err -- error  stream
	 */
	public static void main(String... args) {
		
		File file = new File("StudyEasy.txt");
		try {
			file.createNewFile();
		} catch (IOException e) {

		}
	}
	
}

