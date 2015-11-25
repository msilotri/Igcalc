package uk.gov.dwp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import uk.gov.dwp.model.Post75EuRaDetails;
import uk.gov.dwp.model.Post75UsaDetails;
import uk.gov.dwp.model.Pre75Details;

/**
 * Generates Pdf
 * @author samba.mitra
 *
 */
@Controller
public class PdfController {

	@RequestMapping(value = "/admin/generatePdf", method = RequestMethod.GET)
	public String generatePDF(Model model, HttpSession session) {

		// Retrieve data from session
		Pre75Details pre75EuDetails = session.getAttribute("pre75EuDetails") != null
				? (Pre75Details) session.getAttribute("pre75EuDetails") : new Pre75Details();
		Post75EuRaDetails post75EuDetails = session.getAttribute("post75EuDetails") != null
				? (Post75EuRaDetails) session.getAttribute("post75EuDetails") : new Post75EuRaDetails();
		Post75EuRaDetails post16EuDetails = session.getAttribute("post16EuDetails") != null
				? (Post75EuRaDetails) session.getAttribute("post16EuDetails") : new Post75EuRaDetails();
		Pre75Details pre75RaDetails = session.getAttribute("pre75RaDetails") != null
				? (Pre75Details) session.getAttribute("pre75RaDetails") : new Pre75Details();
		Post75EuRaDetails post75RaDetails = session.getAttribute("post75RaDetails") != null
				? (Post75EuRaDetails) session.getAttribute("post75RaDetails") : new Post75EuRaDetails();
		Post75EuRaDetails post16RaDetails = session.getAttribute("post16RaDetails") != null
				? (Post75EuRaDetails) session.getAttribute("post16RaDetails") : new Post75EuRaDetails();
		Pre75Details pre75UsaDetails = session.getAttribute("pre75UsaDetails") != null
				? (Pre75Details) session.getAttribute("pre75UsaDetails") : new Pre75Details();
		Post75UsaDetails post75UsaDetails = session.getAttribute("post75UsaDetails") != null
				? (Post75UsaDetails) session.getAttribute("post75UsaDetails") : new Post75UsaDetails();
		Post75UsaDetails post16UsaDetails = session.getAttribute("post16UsaDetails") != null
				? (Post75UsaDetails) session.getAttribute("post16UsaDetails") : new Post75UsaDetails();

		// Add all the details to model for Pdf generation
		model.addAttribute("pre75EuDetails", pre75EuDetails);
		model.addAttribute("post75EuDetails", post75EuDetails);
		model.addAttribute("post16EuDetails", post16EuDetails);
		model.addAttribute("pre75RaDetails", pre75RaDetails);
		model.addAttribute("post75RaDetails", post75RaDetails);
		model.addAttribute("post16RaDetails", post16RaDetails);
		model.addAttribute("pre75UsaDetails", pre75UsaDetails);
		model.addAttribute("post75UsaDetails", post75UsaDetails);
		model.addAttribute("post16UsaDetails", post16UsaDetails);

		return "pdfView";
	}
}
