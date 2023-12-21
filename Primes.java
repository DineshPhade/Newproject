package sample;

import java.util.Scanner; 
public class Primes
{ 
	public static void main(String args[]) 
	{  
		int count=0;
        System.out.println("Enter a number ");
        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt();
        for(int i=1;i<=n;i++)
        {
        	if(n%i==0)
        	{
        		count++;
        		}}
        if(count==2)
    System.out.println("it is prime number ");
else
System.out.println("Not a prime number ");	        
}}