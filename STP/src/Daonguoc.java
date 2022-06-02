import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Daonguoc {
	public static int Reverse(int t) {
		int reversed = 0;
		while(t != 0) {
			   int digit = t % 10;
			   reversed = reversed * 10 + digit;
			   t /= 10;
			}
		return reversed;
	}
	public static void main(String args[]) throws Exception {
		System.setIn(new FileInputStream("C:\\Users\\SnC\\Desktop\\Môn học kì 2 21-22\\STP/input.txt"));
		Scanner sc = new Scanner(System.in);
		int t = sc.nextInt();
		for(int i = 1; i<=t; i++) {
			int num1 = sc.nextInt();
			int num2 = sc.nextInt();
			int sum1 = Reverse(num1) + Reverse(num2);
			int re_sum = Reverse(sum1);
			System.out.println(re_sum);
		}
		
	}
}
