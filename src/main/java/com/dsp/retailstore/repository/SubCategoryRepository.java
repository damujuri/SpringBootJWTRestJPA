package com.dsp.retailstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.dsp.retailstore.model.SubCategory;

/**
 * 
 * @author damujuri
 *
 */
public interface SubCategoryRepository extends CrudRepository<SubCategory, Long> {

	@Query("SELECT sc FROM SubCategory sc  WHERE sc.category.categoryId = :categoryId "
			+ " and sc.category.department.departmentId = :departmentId "
			+ " and sc.category.department.location.locationId = :locationId")
	List<SubCategory> getSubCategoriesByCategoryIdDeptIdAndLocId(@Param("locationId") Long locationId,
			@Param("departmentId") Long departmentId, @Param("categoryId") Long categoryId);

}