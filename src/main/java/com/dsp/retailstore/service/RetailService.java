package com.dsp.retailstore.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dsp.retailstore.model.Category;
import com.dsp.retailstore.model.Department;
import com.dsp.retailstore.model.Location;
import com.dsp.retailstore.model.Retail;
import com.dsp.retailstore.model.SubCategory;
import com.dsp.retailstore.repository.CategoryRepository;
import com.dsp.retailstore.repository.DepartmentRepository;
import com.dsp.retailstore.repository.LocationRepository;
import com.dsp.retailstore.repository.RetailsRepository;
import com.dsp.retailstore.repository.SubCategoryRepository;

/**
 * 
 * @author damujuri
 *
 */
@Service
public class RetailService {

	@Autowired
	LocationRepository locRepository;

	@Autowired
	DepartmentRepository deptRepository;

	@Autowired
	CategoryRepository categoryRepository;

	@Autowired
	SubCategoryRepository subCategoryrepository;

	@Autowired
	RetailsRepository retailRepository;

	public List<Location> getLocations() {
		List<Location> result = (List<Location>) locRepository.findAll();
		if (result.size() > 0) {
			return result;
		} else {
			return new ArrayList<Location>();
		}
	}

	public List<Department> getDepartmentsByLocId(Long locationId) {
		return deptRepository.findDepartmentsByLocId(locationId);
	}

	public List<Category> getCategoriesByDeptAndLocIds(Long locationId, Long departmentId) {
		return categoryRepository.findCategoriesByDeptIdAndLocId(locationId, departmentId);
	}

	public List<SubCategory> getSubCategoriesByCategoryIdDeptIdAndLocId(Long locationId, Long departmentId,
			Long categoryId) {

		return subCategoryrepository.getSubCategoriesByCategoryIdDeptIdAndLocId(locationId, departmentId, categoryId);
	}

	public List<Retail> getSubCategoryByCategoryDepartmentAndLocationIds(Long locationId, Long departmentId,
			Long categoryId, Long subCategoryId) {

		return retailRepository.getSkuData(locationId, departmentId, categoryId, subCategoryId);

	
	}

}