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
package org.vige.rubia.selenium.adminpanel.test;

import static org.testng.AssertJUnit.assertFalse;
import static org.testng.AssertJUnit.assertTrue;

import java.util.ResourceBundle;

import org.jboss.test.selenium.AbstractTestCase;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;
import org.vige.rubia.selenium.adminpanel.action.CreateForum;
import org.vige.rubia.selenium.adminpanel.action.LockForum;
import org.vige.rubia.selenium.adminpanel.action.Move;
import org.vige.rubia.selenium.adminpanel.action.MoveForum;
import org.vige.rubia.selenium.adminpanel.action.RemoveForum;
import org.vige.rubia.selenium.adminpanel.action.UnlockForum;
import org.vige.rubia.selenium.adminpanel.action.UpdateForum;

/**
 * This class tests receipts functionality of the example.
 * 
 * @author <a href="http://www.vige.it">Luca Stancapiano</a>
 */
public class ForumTest extends AbstractTestCase {

	public final static String CREATED_FORUM_0_MESSAGE = ResourceBundle
			.getBundle("ResourceJSF").getString("Forum_created_0")
			+ "\"First Forum\""
			+ ResourceBundle.getBundle("ResourceJSF").getString(
					"Forum_created_1");
	public final static String CREATED_FORUM_1_MESSAGE = ResourceBundle
			.getBundle("ResourceJSF").getString("Forum_created_0")
			+ "\"Second Forum\""
			+ ResourceBundle.getBundle("ResourceJSF").getString(
					"Forum_created_1");
	public final static String REMOVED_FORUM_0_MESSAGE = ResourceBundle
			.getBundle("ResourceJSF").getString("Forum_deleted_0")
			+ "\"First Forum\""
			+ ResourceBundle.getBundle("ResourceJSF").getString(
					"Forum_deleted_1");
	public final static String REMOVED_FORUM_1_MESSAGE = ResourceBundle
			.getBundle("ResourceJSF").getString("Forum_deleted_0")
			+ "\"Second Forum\""
			+ ResourceBundle.getBundle("ResourceJSF").getString(
					"Forum_deleted_1");
	public final static String LOCKED_FORUM_MESSAGE = ResourceBundle.getBundle(
			"ResourceJSF").getString("Forum_locked");
	public final static String UNLOCKED_FORUM_MESSAGE = ResourceBundle
			.getBundle("ResourceJSF").getString("Forum_unlocked");
	public final static String UPDATED_FORUM_MESSAGE = ResourceBundle
			.getBundle("ResourceJSF").getString("Forum_updated_0")
			+ "\"Third Forum\""
			+ ResourceBundle.getBundle("ResourceJSF").getString(
					"Forum_updated_1");

	@BeforeMethod
	public void setUp() {
		selenium.open(contextPath);
		selenium.waitForPageToLoad();
	}

	@Test
	public void testCreateForum() {
		String message = CreateForum.createForum(selenium, "First Forum",
				"First Description", "First Category");
		assertTrue(message.equals(CREATED_FORUM_0_MESSAGE));
		message = CreateForum.createForum(selenium, "Second Forum",
				"Second Description", "First Category");
		assertTrue(message.equals(CREATED_FORUM_1_MESSAGE));
	}

	@Test
	public void testMoveUpForum() {
		String message = MoveForum.moveForum(selenium, "First Forum", Move.UP);
		assertTrue(message.equals(REMOVED_FORUM_0_MESSAGE));
	}

	@Test
	public void testMoveDownForum() {
		String message = MoveForum
				.moveForum(selenium, "First Forum", Move.DOWN);
		assertTrue(message.equals(REMOVED_FORUM_0_MESSAGE));
	}

	@Test
	public void testLockForum() {
		String message = LockForum.lockForum(selenium, "First Forum");
		assertTrue(message.equals(LOCKED_FORUM_MESSAGE));
	}

	@Test
	public void testUnlockForum() {
		String message = UnlockForum.unlockForum(selenium, "First Forum");
		assertTrue(message.equals(UNLOCKED_FORUM_MESSAGE));
	}

	@Test
	public void testRemoveForum() {
		String message = RemoveForum.removeForum(selenium, "First Forum");
		assertTrue(message.equals(REMOVED_FORUM_0_MESSAGE));
		message = RemoveForum.removeForum(selenium, "Second Forum");
		assertTrue(message.equals(REMOVED_FORUM_1_MESSAGE));
	}

	@Test
	public void testUpdateForum() {
		String message = UpdateForum.updateForum(selenium, "First Forum",
				new String[] { "Third Forum", "Third Description",
						"Second Category" });
		assertTrue(message.equals(UPDATED_FORUM_MESSAGE));
		message = UpdateForum.updateForum(selenium, "Not Existent Forum",
				new String[] { "Third Forum", "Third Description",
						"Second Category" });
		assertFalse(message.equals(UPDATED_FORUM_MESSAGE));
	}
}