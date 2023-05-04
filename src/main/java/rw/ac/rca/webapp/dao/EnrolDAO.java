/**
 * 
 */
package rw.ac.rca.webapp.dao;

import rw.ac.rca.webapp.orm.Enrol;

import java.util.List;

/**
 * @author Aphrodice Rwagaju
 *
 */
public interface EnrolDAO {
	
	public Enrol saveEnrol(Enrol enrol);
	public Enrol updateEnrol(Enrol enrol);
	public Enrol saveOrUpdateEnrol(Enrol enrol);
	public boolean deleteEnrol(Enrol enrol);
	public Enrol getEnrolById(int EnrolId);
	public List<Enrol> getAllEnrols();
	
}
