import java.io.FileInputStream;
import java.util.Scanner;

public class AddRev  {
	public static void main(String args[]) throws  Exception{
		System.setIn(new FileInputStream("C:\\Users\\SnC\\Desktop\\Môn học kì 2 21-22\\STP/input.txt"));
		Scanner sc = new Scanner(System.in);
		int t = sc.nextInt();
		for(int i=1; i<=t; i++) {
			int n = sc.nextInt();
			int x = sc.nextInt();
			int y = sc.nextInt();
			for(int j=1; j<=n; j++) {
				if(j % x == 0 && j % y != 0) {
					System.out.print(j + " ");
					
				}
			}
			System.out.print("\n");
		}
	}
	
}
