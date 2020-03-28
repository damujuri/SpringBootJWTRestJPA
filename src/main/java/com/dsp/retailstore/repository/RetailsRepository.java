package com.dsp.retailstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.dsp.retailstore.model.Retail;

/**
 * 
 * @author damujuri
 *
 */
public interface RetailsRepository extends CrudRepository<Retail, Long> {

	@Query("SELECT r FROM Retail r  WHERE r.location.locationId = :locationId "
			+ " and r.department.departmentId = :departmentId  and r.category.categoryId = :categoryId"
			+ " and r.subCategory.subCategoryId = :subCategoryId")
	List<Retail> getSkuData(@Param("locationId") Long locationId, @Param("departmentId") Long departmentId,
			@Param("categoryId") Long categoryId, @Param("subCategoryId") Long subCategoryId);

}