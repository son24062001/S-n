import java.io.FileInputStream;
import java.util.Scanner;

public class SoNguyenTo {
	public static boolean Prime(int n) {
		int count = 0;
		for (int i = 1; i <= n; i++) {
			if (n % i == 0) {
				count += 1;
			}
		}
		if (count == 2) {
			return true;
		} else
			return false;

	}

	public static void main(String args[]) throws Exception {
		System.setIn(new FileInputStream("C:\\Users\\SnC\\Desktop\\Môn học kì 2 21-22\\STP/input.txt"));
		Scanner sc = new Scanner(System.in);
		int t = sc.nextInt();
		for (int i = 1; i <= t; i++) {
			int m = sc.nextInt();
			int n = sc.nextInt();
			int[] arr = new int[n - m];
			int c = 0;
			for (int j = m; j <= n; j++) {
				if(Prime(j)) {
					System.out.println(j);
				}
				
			}
			System.out.println("\n");
		}
	}
}
