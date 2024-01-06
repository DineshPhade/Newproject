package sample;

public class Addressbook {
	
	private String firstname;
	private String lastname;
	private String state;
	private String city;
	
	public Addressbook(String firstname,String lastname,String state,String city)
	{
	this.firstname=firstname;
	this.lastname=lastname;
	this.state=state;
	this.city=city;
	}
	
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	public String toString() {
        return "Addressbook{" +
                "firstname='" + firstname + '\'' +
                ", lastname='" + lastname + '\'' +
                ", state='"+ state + '\'' +
                ", city='" + city + + '\'' +
                '}';
	

}
}