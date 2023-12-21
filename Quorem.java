package sample;

import java.util.Scanner;

public class Quorem 
{
	public static void main(String[] args) 
    {
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter the numbers ");
        System.out.println("Enter the first number: ");
        int num1=sc.nextInt();  
        System.out.println("Enter the second number: ");
        int num2=sc.nextInt(); 
        int quotient = num1 / num2;
        int remainder = num1 % num2;
        System.out.println("After division the quotient and remainder are:");
        //Print the Quotient 
        System.out.println("The quotient is: " + quotient);
        System.out.println("The remainder is: " + remainder);
    }
}