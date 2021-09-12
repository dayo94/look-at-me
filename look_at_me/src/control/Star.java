package control;

import java.util.Scanner;

public class Star {

	public static void main(String[] args) {
 
 
        System.out.println("숫자를 입력하세요.");
 
        int n;
 
        Scanner scan = new Scanner(System.in);
 
        n = scan.nextInt();
 
        int arr[][] = new int[n][n];

        int x = 0;
        int y = 0;
 
        int num = 1;
 
        int f = n;

        for (int i = 0; i < 2 * n - 1; i++) {
            switch (i % 4) {
            case 0: // 오른쪽 이동
                for (int k = 0; k < f; k++) {
                    arr[y][x] = num;
                    x++;
                    num++;
                }

                x--;
                y++;
 
                f--;
                break;
 
            case 1:
                for (int k = 0; k < f; k++) {
                    arr[y][x] = num;
                    y++;
                    num++;
                }
 
                y--;
                x--;
 
                break;
 
            case 2:
            	for (int k = 0; k < f; k++) {
                    arr[y][x] = num;
                    x--;
                    num++;
                }
 
                x++;
                y--;
 
                f--;
 
                break;
 
            case 3: 
            	for (int k = 0; k < f; k++) {
                    arr[y][x] = num;
                    y--;
                    num++;
                }
 
                y++;
                x++;
 
                break;
 
            }
 
        }
        
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                
                System.out.printf("%3d", arr[i][j]);
                
            }
            System.out.println();
        }
 
    }
 
}