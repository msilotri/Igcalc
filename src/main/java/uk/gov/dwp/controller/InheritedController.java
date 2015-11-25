package uk.gov.dwp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import uk.gov.dwp.model.CustomerDetails;
import uk.gov.dwp.model.InheritedDetails;

/**
 * Handles requests for ESP calculations
 * @author samba.mitra
 *
 */
@Controller
@SessionAttributes({ "inheritedDetails", "customerDetails" })
public class InheritedController {

	private static final Logger logger = LoggerFactory.getLogger(InheritedController.class);

	@ModelAttribute("inheritedDetails")
	public InheritedDetails populateInheritedDetails() {
		return new InheritedDetails();
	}

	@RequestMapping(value = "/admin/inherited_calculation", method = RequestMethod.GET)
	public String showEspCalculation(@ModelAttribute("inheritedDetails") InheritedDetails inheritedDetails,
			@ModelAttribute("customerDetails") CustomerDetails customerDetails) {
		logger.info("Displaying the Inherited Calculation page...");
		return "inherited_calculation";
	}

	@RequestMapping(value = "/admin/select_calculation_inherited", method = RequestMethod.POST)
	public String submitEspDetails(@ModelAttribute("inheritedDetails") InheritedDetails inheritedDetails) {
		logger.info("Inherited Details captured : " + inheritedDetails);
		return "redirect:/admin/select_calculation";
	}
}
