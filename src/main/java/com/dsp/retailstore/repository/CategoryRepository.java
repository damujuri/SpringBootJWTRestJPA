package com.dsp.retailstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.dsp.retailstore.model.Category;

/**
 * 
 * @author damujuri
 *
 */
public interface CategoryRepository extends CrudRepository<Category, Long> {

	@Query("SELECT c FROM Category c WHERE c.department.departmentId = :departmentId and c.department.location.locationId = :locationId")
	List<Category> findCategoriesByDeptIdAndLocId(@Param("locationId") Long locationId,
			@Param("departmentId") Long departmentId);

}