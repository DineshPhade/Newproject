package sample;

import java.util.Scanner;

public class Vowelss {

	public static void main(String[] args) {
		 Scanner sc = new Scanner(System.in);
		  System.out.print("Enter a string: ");
		  String userInput = sc.nextLine();
			int vowelCount = 0;
			for (char ch : userInput.toLowerCase().toCharArray()) {
				if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
					vowelCount++;
				}}
			System.out.println("Number of vowels: " + vowelCount);
			sc.close();
		}}


	        
	      