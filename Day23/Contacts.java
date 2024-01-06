package sample;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.Scanner;

public class Contacts {

	public static void main(String[] args) {
	List<Addressbook> address=Arrays.asList(new Addressbook("virat","kohli","pune","mah"),
			                                new Addressbook("akash","xyz","mumbai","mah"),
			                                new Addressbook("Vijay","abcd","benglore","karnatak"),
			                                new Addressbook("anand","bakshi","banglore","karnatak")
			);
	System.out.println("All contacts are");
	address.forEach(System.out::println);
	long counts=address.stream().count();
	System.out.println("number of count=" +counts);
	Scanner sc = new Scanner(System.in);
    System.out.print("\nEnter the name to search: ");
    String searchname = sc.nextLine();
    Optional<Addressbook> search = address.stream()
            .filter(addressbook -> searchname.equalsIgnoreCase(""))
            .findFirst();
    if (search.isPresent())
    {
        System.out.println("\nName found: " + search.get());
    } 
    else 
    {
        System.out.println("\nName '" + searchname + "' not found.");
    }
    sc.close();
    
    

	
	}

}
