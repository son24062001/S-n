import java.io.FileInputStream;
import java.util.Scanner;

public class Bcdaisy {
	public static void main(String args[]) throws Exception {
		System.setIn(new FileInputStream("C:\\Users\\SnC\\Desktop\\Môn học kì 2 21-22\\STP/input.txt"));
		Scanner sc = new Scanner(System.in);
		int t,c,j;
		int m = sc.nextInt();
		int n = sc.nextInt();
		int[] a = new int[m];
		a[0] = 1;
		int[] b = new int [m];
		for(int i=1; i<m; i++) {
			a[i] = a[i-1]+  1;
		}
		for(int i = 1; i <= n; i++) {
			int x = sc.nextInt();
			int y = sc.nextInt();
			if(x == 1 || y == 1) {
				for(c= j = 0; j<m; j++) {
					if(a[j] != x && a[j] != y) {
						b[c] = a[j] ;
						c++;
						
					}
				}
			}
		}
		for(int i = 0; i<m; i++) {
			System.out.println(b[i]);
		}
	}
}
