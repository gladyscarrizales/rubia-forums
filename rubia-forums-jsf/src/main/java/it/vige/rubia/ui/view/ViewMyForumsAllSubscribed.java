/******************************************************************************
 * Vige, Home of Professional Open Source Copyright 2010, Vige, and           *
 * individual contributors by the @authors tag. See the copyright.txt in the  *
 * distribution for a full listing of individual contributors.                *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may    *
 * not use this file except in compliance with the License. You may obtain    *
 * a copy of the License at http://www.apache.org/licenses/LICENSE-2.0        *
 * Unless required by applicable law or agreed to in writing, software        *
 * distributed under the License is distributed on an "AS IS" BASIS,          *
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   *
 * See the License for the specific language governing permissions and        *
 * limitations under the License.                                             *
 ******************************************************************************/
package it.vige.rubia.ui.view;

import static it.vige.rubia.PortalUtil.getUser;
import static it.vige.rubia.ui.JSFUtil.getRequestParameter;
import static it.vige.rubia.ui.JSFUtil.handleException;

import java.util.Collection;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.inject.Inject;
import javax.inject.Named;
import javax.interceptor.Interceptors;

import it.vige.rubia.ForumsModule;
import it.vige.rubia.auth.AuthorizationListener;
import it.vige.rubia.auth.SecureActionForum;
import it.vige.rubia.auth.UserModule;
import it.vige.rubia.model.Topic;
import it.vige.rubia.model.Watch;
import it.vige.rubia.ui.action.PreferenceController;

@Named("myForumsAll")
public class ViewMyForumsAllSubscribed extends ViewMyForumsBase {

	/**
	 * 
	 */
	private static final long serialVersionUID = -722807880085740058L;
	@EJB
	private ForumsModule forumsModule;
	@EJB
	private UserModule userModule;
	// user preference controller
	@Inject
	private PreferenceController userPreferences;

	private int topicId;
	private Watch watch;
	private Map<Object, Object> topicWatches;

	@PostConstruct
	public void execute() {
		try {
			super.execute();
			String t = getRequestParameter(p_topicId);
			if (t != null && t.trim().length() > 0) {
				topicId = Integer.parseInt(t);
			} else {
				topicId = -1;
			}
			if (topicId != -1) {
				watch = forumsModule.findTopicWatchByUserAndTopic(getUser(userModule), topicId);
			}
		} catch (Exception e) {
			handleException(e);
			topicId = -1;
			watch = null;
		}
	}

	// ------------user
	// preferences-------------------------------------------------------------------------------------------------------------
	/**
	 * @return Returns the userPreferences.
	 */
	public PreferenceController getUserPreferences() {
		return userPreferences;
	}

	/**
	 * @param userPreferences
	 *            The userPreferences to set.
	 */
	public void setUserPreferences(PreferenceController userPreferences) {
		this.userPreferences = userPreferences;
	}

	/**
	 * 
	 */
	public Watch getWatch() {
		return watch;
	}

	/**
	 * 
	 */
	public void setWatch(Watch watch) {
		this.watch = watch;
	}

	/**
	 * 
	 */
	public int getTopicId() {
		return topicId;
	}

	/**
	 * 
	 */
	public void setTopicId(int topicId) {
		this.topicId = topicId;
	}

	/**
	 * 
	 */
	@SecureActionForum
	@Interceptors(AuthorizationListener.class)
	public Collection<Topic> getWatchedTopics() {
		if (watchedTopics == null) {
			try {
				// get the forumInstanceId where this forum should be added
				int forumInstanceId = userPreferences.getForumInstanceId();
				watchedTopics = forumsModule.findTopicWatchedByUser(getUser(userModule), forumInstanceId);

			} catch (Exception e) {
				handleException(e);
			}
		}
		return watchedTopics;
	}

	/**
	 * 
	 */
	@SecureActionForum
	@Interceptors(AuthorizationListener.class)
	public Map<Object, Object> getTopicWatches() {
		if (topicWatches == null) {
			try {
				// get the forumInstanceId where this forum should be added
				int forumInstanceId = userPreferences.getForumInstanceId();
				topicWatches = forumsModule.findTopicWatches(getUser(userModule), forumInstanceId);

			} catch (Exception e) {
				handleException(e);
			}
		}
		return topicWatches;
	}

	/**
	 * 
	 */
	public void setWatchedTopics(Collection<Topic> watchedTopics) {
		this.watchedTopics = watchedTopics;
	}

	protected ForumsModule getMyForumsModule() throws Exception {
		return forumsModule;
	}

	// -------- Business logic
	// ----------------------------------------------------------------------------------------------------------------

}
