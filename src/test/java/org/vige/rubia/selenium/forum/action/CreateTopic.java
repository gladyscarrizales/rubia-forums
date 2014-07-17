/*
 * Vige, Home of Professional Open Source
 * Copyright 2010, Vige, and individual contributors
 * by the @authors tag. See the copyright.txt in the distribution for a
 * full listing of individual contributors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.vige.rubia.selenium.forum.action;

import static java.util.ResourceBundle.getBundle;
import static org.openqa.selenium.By.cssSelector;
import static org.openqa.selenium.By.id;
import static org.openqa.selenium.By.linkText;
import static org.openqa.selenium.By.xpath;
import static org.vige.rubia.selenium.forum.action.CreateAttachment.addAttachments;
import static org.vige.rubia.selenium.forum.action.CreatePoll.createOptions;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.vige.rubia.model.Topic;

public class CreateTopic {

	public static final String HOME_LINK = getBundle("ResourceJSF").getString(
			"Home");
	public static final String CREATE_TOPIC_LINK = "//div[@class='actionbuttons']/ul/li/a";
	public static final String SUBJECT_INPUT_TEXT = "post:SubjectInputText";
	public static final String BODY_INPUT_TEXT = "//iframe[contains(@title,'post:message:inp')]";
	public static final String SUBMIT_BUTTON = "post:Submit";

	public static String createTopic(WebDriver driver, Topic topic) {
		WebElement home = driver.findElement(linkText(HOME_LINK));
		home.click();
		WebElement forumEl = driver.findElement(linkText(topic.getForum()
				.getName()));
		forumEl.click();
		WebElement createTopic = driver.findElement(xpath(CREATE_TOPIC_LINK));
		createTopic.click();
		WebElement subjectInput = driver.findElement(id(SUBJECT_INPUT_TEXT));
		subjectInput.sendKeys(topic.getSubject());
		driver.switchTo().frame(driver.findElement(xpath(BODY_INPUT_TEXT)));
		WebElement bodytInput = driver.findElement(cssSelector("body"));
		((JavascriptExecutor) driver).executeScript(
				"arguments[0].innerHTML = '"
						+ topic.getPosts().get(0).getMessage().getText() + "'",
				bodytInput);
		driver.switchTo().defaultContent();
		WebElement topicTypeInput = null;
		topicTypeInput = driver.findElements(xpath("//input[@type='radio']"))
				.get(topic.getType().getValue());
		topicTypeInput.click();
		createOptions(driver, topic.getPoll());
		addAttachments(driver, topic.getPosts().get(0));
		WebElement operationButton = driver.findElement(id(SUBMIT_BUTTON));
		operationButton.click();
		WebElement resultCreateTopic = driver.findElement(linkText(topic
				.getSubject()));
		String updatedTopic = resultCreateTopic.getText();
		return updatedTopic;
	}
}