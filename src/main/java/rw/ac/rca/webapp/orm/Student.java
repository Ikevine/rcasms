 /**
 * 
 */
package rw.ac.rca.webapp.orm;

 import javax.persistence.*;
 import java.util.List;

/**
 * @author Aphrodice Rwagaju
 *
 */
@Entity
public class Student extends Person{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8680703317249517930L;
	private boolean isInternational;
	private boolean isPartTime;
	private boolean isRepeating;
	
	public Student() {
	}
	
	public Student(boolean isInternational, boolean isPartTime, boolean isRepeating) {
		this.isInternational = isInternational;
		this.isPartTime = isPartTime;
		this.isRepeating = isRepeating;
	}
	
	@OneToMany(cascade= CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "student")
	private List<Enrol> enrols;
	
	@ManyToOne
	@JoinColumn(name = "address_id")
	private Address address;
	
	public boolean isInternational() {
		return isInternational;
	}
	public void setInternational(boolean isInternational) {
		this.isInternational = isInternational;
	}
	public boolean isPartTime() {
		return isPartTime;
	}
	public void setPartTime(boolean isPartTime) {
		this.isPartTime = isPartTime;
	}
	
	public List<Enrol> getEnrols() {
   		return enrols;
	}
	public void setEnrollments(List<Enrol> enrols) {
		this.enrols = enrols;
	}
	
	public boolean isRepeating() {
		return isRepeating;
	}
	public void setRepeating(boolean isRepeating) {
		this.isRepeating = isRepeating;
	}
	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

//	@Override
//	String getAllNames() {
//		return getFirstName()+ " "+ getLastName();
//	}
	
}
