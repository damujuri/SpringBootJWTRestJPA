package com.dsp.retailstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.dsp.retailstore.model.Department;

/**
 * 
 * @author damujuri
 *
 */
public interface DepartmentRepository extends CrudRepository<Department, Long> {

	@Query("SELECT d FROM Department d WHERE d.location.locationId = :locationId")
	public List<Department> findDepartmentsByLocId(@Param("locationId") Long locationId);

}