import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class SumProduct {
	public static void main(String args[]) throws Exception {
		System.setIn(new FileInputStream("C:\\Users\\SnC\\Desktop\\Môn học kì 2 21-22\\STP/input.txt"));
		Scanner sc = new Scanner(System.in);
		int t= sc.nextInt();
		for(int i=1; i<=t; i++) {
			int n = sc.nextInt();
			int sum = 0;
			for(int j=1; j<=n; j++) {
				sum += j*(n/j);
			}
			System.out.println(sum);
		}
	}
	
	
}
