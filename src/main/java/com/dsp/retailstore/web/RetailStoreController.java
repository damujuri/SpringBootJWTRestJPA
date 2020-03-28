package com.dsp.retailstore.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dsp.retailstore.model.Category;
import com.dsp.retailstore.model.Department;
import com.dsp.retailstore.model.Location;
import com.dsp.retailstore.model.Retail;
import com.dsp.retailstore.model.SubCategory;
import com.dsp.retailstore.service.RetailService;

/**
 * 
 * @author damujuri
 *
 */
@Controller
@RequestMapping("/api/v1")
public class RetailStoreController {

	@Autowired
	RetailService service;

	@RequestMapping("/location")
	public String getLocations(Model model) {
		List<Location> list = service.getLocations();
		model.addAttribute("locations", list);
		return "list-locations";
	}

	@RequestMapping("/location/{locationId}/department")
	public String getDepartmentsByLoationId(Model model, @PathVariable("locationId") Long locationId) throws Exception {

		List<Department> list = service.getDepartmentsByLocId(locationId);
		model.addAttribute("departments", list);
		return "list-departments";
	}

	@RequestMapping("/location/{locationId}/department/{departmentId}/category")
	public String getCategoriesByDeptIdAndLocId(Model model, @PathVariable("locationId") Long locationId,
			@PathVariable("departmentId") Long departmentId) throws Exception {

		List<Category> list = service.getCategoriesByDeptAndLocIds(locationId, departmentId);
		model.addAttribute("categories", list);
		return "list-categories";
	}

	@GetMapping("/location/{locationId}/department/{departmentId}/category/{categoryId}/subcategory")
	public String getSubCategoriesByCategoryIdAndDeptIdAndLocId(Model model,
			@PathVariable("locationId") Long locationId, @PathVariable("departmentId") Long departmentId,
			@PathVariable("categoryId") Long categoryId) throws Exception {

		List<SubCategory> list = service.getSubCategoriesByCategoryIdDeptIdAndLocId(locationId, departmentId,
				categoryId);
		model.addAttribute("subcategories", list);
		return "list-sub-categories";
	}

	@GetMapping("/location/{locationId}/department/{departmentId}/category/{categoryId}/subcategory/{subCategoryId}")
	public String getSubCategoryByCategoryAndDepartmentAndLocation(Model model,
			@PathVariable("locationId") Long locationId, @PathVariable("departmentId") Long departmentId,
			@PathVariable("categoryId") Long categoryId, @PathVariable("subCategoryId") Long subCategoryId)
			throws Exception {

		List<Retail> list = service.getSubCategoryByCategoryDepartmentAndLocationIds(locationId, departmentId,
				categoryId, subCategoryId);

		model.addAttribute("skudata", list);

		return "list-sku-data";
	}

}
