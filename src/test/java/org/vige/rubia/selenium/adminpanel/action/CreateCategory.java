package org.vige.rubia.selenium.adminpanel.action;

import static org.jboss.test.selenium.locator.LocatorFactory.jq;

import java.util.ResourceBundle;

import org.jboss.test.selenium.framework.AjaxSelenium;
import org.jboss.test.selenium.locator.JQueryLocator;

public class CreateCategory {

	public static final JQueryLocator ADMIN_PANEL_LINK = jq("[value='"
			+ ResourceBundle.getBundle("ResourceJSF").getString("Admin_panel")
			+ "']");
	public static final JQueryLocator CREATE_CATEGORY_LINK = jq("[href^='/magazzino/search/search_receipt']");
	public static final JQueryLocator RESULT_CREATE_CATEGORY = jq("[id='receiptSelectionForm:noReceiptMsg']");

	public static String createCategory(AjaxSelenium selenium,
			String categoryName) {
		selenium.click(ADMIN_PANEL_LINK);
		selenium.waitForPageToLoad();
		String message = selenium.getText(RESULT_CREATE_CATEGORY);
		return message;
	}
}