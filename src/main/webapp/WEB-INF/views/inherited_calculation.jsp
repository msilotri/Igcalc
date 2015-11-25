<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:import url="includes/layout.jsp"></c:import>

<main id="content" role="main">

	<div class="phase-banner-alpha">
		<p>
			<strong class="phase-tag">ALPHA</strong> <span>This is a new
				service.</span>
		</p>
	</div>
	
	<h1 class="heading-xlarge">Inherited Components Calculation</h1>
	<div class="grid-row">
		<form:form action="select_calculation_inherited" method="post" modelAttribute="inheritedDetails">
			<div>
				<fieldset class="form-group">
					<legend class="visuallyhidden">Rules to apply</legend>
					<label class="form-label-bold">Rules to apply</label>
					<label class="form-label">Customer SPa</label>
					<form:input class="form-control" path="customerSpaDate" />
					<label class="form-label">Spouse/Civil Partner SPa</label>
					<form:input class="form-control" path="partnerSpaDate" />
					<label class="form-label">Date of Marriage</label>
					<form:input class="form-control" path="dateOfMarriage" />
				</fieldset>

				<fieldset class="form-group">
					<legend class="visuallyhidden">Deferral lump sum requested</legend>
					<label class="form-label inline">Deferral lump sum requested</label>
					<form:select class="form-control" path="deferralLumpSum">
						<form:option value="Yes">Yes</form:option>
						<form:option value="No">No</form:option>
						<form:option value="N/A">N/A</form:option>
					</form:select>
				</fieldset>

				<fieldset class="form-group">
					<legend class="visuallyhidden">Spouse/CP Components at Date of Death</legend>
					<label class="form-label-bold">Spouse/CP Components at Date of Death</label>
					<label class="form-label">Tax Year</label>
					<form:input class="form-control" path="taxYear" title="This should be in the format yy/yy" />
					<label class="form-label">Protected Payment</label>
					<form:input class="form-control numberWithDecimal" path="protectedPayment" />
					<label class="form-label">SP Top UP / ESP</label>
					<form:input class="form-control numberWithDecimal" path="spTopUp" />
					<label class="form-label">Pre 97 AP (Net)</label>
					<form:input class="form-control numberWithDecimal" path="pre97Ap" />
					<label class="form-label">Post 97 AP</label>
					<form:input class="form-control numberWithDecimal" path="post97Ap" />
					<label class="form-label">Post 02 AP</label>
					<form:input class="form-control numberWithDecimal" path="post02Ap" />
					<label class="form-label">Pre 97 AP (Gross)</label>
					<form:input class="form-control numberWithDecimal" path="pre97ApGross" />
					<label class="form-label">Pre 88 GMP</label>
					<form:input class="form-control numberWithDecimal" path="pre88Gmp" />
					<label class="form-label">Pre 88 Non GMP</label>
					<form:input class="form-control numberWithDecimal" path="pre88NonGmp" />
					<label class="form-label">Post 88 GMP</label>
					<form:input class="form-control numberWithDecimal" path="post88Gmp" />
					<label class="form-label">Post 88 Non GMP</label>
					<form:input class="form-control numberWithDecimal" path="post88NonGmp" />
					<label class="form-label">GRB</label>
					<form:input class="form-control numberWithDecimal" path="grb" />
					<label class="form-label">Pre 2002 AP ESP</label>
					<form:input class="form-control numberWithDecimal" path="pre2002ApEsp" />
					<label class="form-label">Post  2002 AP ESP</label>
					<form:input class="form-control numberWithDecimal" path="post2002ApEsp" />
					<label class="form-label">GRB ESP</label>
					<form:input class="form-control numberWithDecimal" path="grbEsp" />
					<label class="form-label">BP ESP</label>
					<form:input class="form-control numberWithDecimal" path="bpEsp" />
				</fieldset>

				<fieldset class="form-group">
					<legend class="visuallyhidden">Re-valued Spouse/CP Components at Customer's Date of Entitlement</legend>
					<label class="form-label-bold">Re-valued Spouse/CP Components at Customer's Date of Entitlement</label>
					<label class="form-label">Tax Year</label>
					<form:input class="form-control" path="taxYearRevalued" title="This should be in the format yy/yy" />
					<label class="form-label">Protected Payment</label>
					<form:input class="form-control" path="protectedPaymentRevalued" />
					<label class="form-label">SP Top UP / ESP</label>
					<form:input class="form-control" path="spTopUpRevalued" />
					<label class="form-label">Pre 97 AP (Net)</label>
					<form:input class="form-control" path="pre97ApRevalued" />
					<label class="form-label">Post 97 AP</label>
					<form:input class="form-control" path="post97ApRevalued" />
					<label class="form-label">Post 02 AP</label>
					<form:input class="form-control" path="post02ApRevalued" />
					<label class="form-label">Pre 97 AP (Gross)</label>
					<form:input class="form-control" path="pre97ApGrossRevalued" />
					<label class="form-label">Pre 88 GMP</label>
					<form:input class="form-control" path="pre88GmpRevalued" />
					<label class="form-label">Pre 88 Non GMP</label>
					<form:input class="form-control" path="pre88NonGmpRevalued" />
					<label class="form-label">Post 88 GMP</label>
					<form:input class="form-control" path="post88GmpRevalued" />
					<label class="form-label">Post 88 Non GMP</label>
					<form:input class="form-control" path="post88NonGmpRevalued" />
					<label class="form-label">GRB</label>
					<form:input class="form-control" path="grbRevalued" />
					<label class="form-label">Pre 2002 AP ESP</label>
					<form:input class="form-control" path="pre2002ApEspRevalued" />
					<label class="form-label">Post  2002 AP ESP</label>
					<form:input class="form-control" path="post2002ApEspRevalued" />
					<label class="form-label">GRB ESP</label>
					<form:input class="form-control" path="grbEspRevalued" />
					<label class="form-label">BP ESP</label>
					<form:input class="form-control" path="bpEspRevalued" />
				</fieldset>

				<fieldset class="form-group">
					<legend class="visuallyhidden">Payable Amount at Customer's Date of Entitlement</legend>
					<label class="form-label-bold">Payable Amount at Customer's Date of Entitlement</label>
					<label class="form-label">Protected Payment (Inh)</label>
					<form:input class="form-control" path="protectedPaymentInh" />
					<label class="form-label">SP Top UP / ESP (Inh)</label>
					<form:input class="form-control" path="spTopupInh" />
					<label class="form-label">AP (Inh)</label>
					<form:input class="form-control" path="apInh" />
					<label class="form-label">GRB (Inh)</label>
					<form:input class="form-control" path="grbInh" />
					<label class="form-label">AP ESP (Inh)</label>
					<form:input class="form-control" path="apEspInh" />
					<label class="form-label">GRB ESP (Inh)</label>
					<form:input class="form-control" path="grbEspInh" />
					<label class="form-label">BP ESP (Inh)</label>
					<form:input class="form-control" path="bpEspInh" />
				</fieldset>

				<fieldset class="form-group">
					<legend class="visuallyhidden">Total</legend>
					<label class="form-label">Total</label>
					<form:input class="form-control" path="total" />
				</fieldset>

				<input type="submit" id="inheritedNextBtn" name="inheritedNextBtn" class="button" alt="Continue" value="Continue" />
			</div>
		</form:form>
	</div>
</main>

<c:import url="includes/footer.jsp"></c:import>