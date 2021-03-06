-- If you are using Hibernate as the JPA provider, you can use this file to load seed data into the database using SQL statements
-- The portable approach is to use a startup component (such as the @PostConstruct method of a @Startup @Singleton) or observe a lifecycle event fired by Seam Servlet
insert into JBP_FORUMS_INSTANCES (jbp_id, jbp_name) values ('1', 'First Forum Instance');
insert into JBP_FORUMS_CATEGORIES (jbp_id, jbp_order, jbp_title, jbp_forum_instance_id) values ('0', '10', 'Dummy demo category','1');
insert into JBP_FORUMS_FORUMS (jbp_id, jbp_category_id, jbp_description, jbp_name, jbp_order, jbp_topic_count, jbp_post_count, jbp_status) values ('0', '0', 'First description', 'First forum', '10', '0', '0', '0');
insert into JBP_FORUMS_FORUMS (jbp_id, jbp_category_id, jbp_description, jbp_name, jbp_order, jbp_topic_count, jbp_post_count, jbp_status) values ('1', '0', 'Second description', 'Second forum', '20', '0', '0', '0');
insert into ACL (aclID, resource) values ('1', 'it.vige.rubia.auth.ForumsACLResource:acl://accessAdminTool');
insert into ACL (aclID, resource) values ('2', 'it.vige.rubia.auth.ForumsACLResource:acl://viewCategory');
insert into ACL (aclID, resource) values ('3', 'it.vige.rubia.auth.ForumsACLResource:acl://addCategory');
insert into ACL (aclID, resource) values ('4', 'it.vige.rubia.auth.ForumsACLResource:acl://editCategory');
insert into ACL (aclID, resource) values ('5', 'it.vige.rubia.auth.ForumsACLResource:acl://deleteCategory');
insert into ACL (aclID, resource) values ('6', 'it.vige.rubia.auth.ForumsACLResource:acl://viewForum');
insert into ACL (aclID, resource) values ('7', 'it.vige.rubia.auth.ForumsACLResource:acl://addForum');
insert into ACL (aclID, resource) values ('8', 'it.vige.rubia.auth.ForumsACLResource:acl://editForum');
insert into ACL (aclID, resource) values ('9', 'it.vige.rubia.auth.ForumsACLResource:acl://deleteForum');
insert into ACL (aclID, resource) values ('10', 'it.vige.rubia.auth.ForumsACLResource:acl://lockForums');
insert into ACL (aclID, resource) values ('11', 'it.vige.rubia.auth.ForumsACLResource:acl://readCategory');
insert into ACL (aclID, resource) values ('12', 'it.vige.rubia.auth.ForumsACLResource:acl://readForum');
insert into ACL (aclID, resource) values ('13', 'it.vige.rubia.auth.ForumsACLResource:acl://newTopic');
insert into ACL (aclID, resource) values ('14', 'it.vige.rubia.auth.ForumsACLResource:acl://reply');
insert into ACL (aclID, resource) values ('15', 'it.vige.rubia.auth.ForumsACLResource:acl://topicType');
insert into ACL (aclID, resource) values ('16', 'it.vige.rubia.auth.ForumsACLResource:acl://editPost');
insert into ACL (aclID, resource) values ('17', 'it.vige.rubia.auth.ForumsACLResource:acl://deletePost');
insert into ACL (aclID, resource) values ('18', 'it.vige.rubia.auth.ForumsACLResource:acl://managePostAttachments');
insert into ACL (aclID, resource) values ('19', 'it.vige.rubia.auth.ForumsACLResource:acl://votePoll');
insert into ACL (aclID, resource) values ('20', 'it.vige.rubia.auth.ForumsACLResource:acl://managePoll');
insert into ACL (aclID, resource) values ('21', 'it.vige.rubia.auth.ForumsACLResource:acl://moderateForum');
insert into ACL (aclID, resource) values ('22', 'it.vige.rubia.auth.ForumsACLResource:acl://deleteTopics');
insert into ACL (aclID, resource) values ('23', 'it.vige.rubia.auth.ForumsACLResource:acl://moveTopics');
insert into ACL (aclID, resource) values ('24', 'it.vige.rubia.auth.ForumsACLResource:acl://lockTopics');
insert into ACL (aclID, resource) values ('25', 'it.vige.rubia.auth.ForumsACLResource:acl://splitTopic');
insert into ACL (aclID, resource) values ('26', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewCategory:getCategories');
insert into ACL (aclID, resource) values ('27', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewCategory:getForums');
insert into ACL (aclID, resource) values ('28', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewCategory:getForumImageDescriptions');
insert into ACL (aclID, resource) values ('29', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewCategory:getForumImages');
insert into ACL (aclID, resource) values ('30', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewCategory:getRssFeed');
insert into ACL (aclID, resource) values ('31', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewCategory:getAtomFeed');
insert into ACL (aclID, resource) values ('32', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewAdminPanel:getCategories');
insert into ACL (aclID, resource) values ('33', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewAdminPanel:getForums');
insert into ACL (aclID, resource) values ('34', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewForum:getAnnouncements');
insert into ACL (aclID, resource) values ('35', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewForum:getStickyThreads');
insert into ACL (aclID, resource) values ('36', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewForum:getNormalThreads');
insert into ACL (aclID, resource) values ('37', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewForum:getTopicLastPosts');
insert into ACL (aclID, resource) values ('38', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewForum:getRssFeed');
insert into ACL (aclID, resource) values ('39', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewForum:getAtomFeed');
insert into ACL (aclID, resource) values ('40', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewJumpbox:getCategories');
insert into ACL (aclID, resource) values ('41', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewMyForumsAllSubscribed:getWatchedTopics');
insert into ACL (aclID, resource) values ('42', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewMyForumsAllSubscribed:getTopicWatches');
insert into ACL (aclID, resource) values ('43', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewMyForumsEditAllForums:getForumImageDescriptions');
insert into ACL (aclID, resource) values ('44', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewMyForumsEditAllForums:getForumImages');
insert into ACL (aclID, resource) values ('45', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewMyForumsEditAllForums:getForumsLastPosts');
insert into ACL (aclID, resource) values ('46', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewMyForumsEditAllForums:getForumWatches');
insert into ACL (aclID, resource) values ('47', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewMyForumsEditAllForums:getWatchedForums');
insert into ACL (aclID, resource) values ('48', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewMyForumsMain:getWatchedTopics');
insert into ACL (aclID, resource) values ('49', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewMyForumsMain:getWatchedForums');
insert into ACL (aclID, resource) values ('50', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewMyForumsMain:getForumImageDescriptions');
insert into ACL (aclID, resource) values ('51', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewMyForumsMain:getForumImages');
insert into ACL (aclID, resource) values ('52', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewMyForumsMain:getForumsLastPosts');
insert into ACL (aclID, resource) values ('53', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewSummary:getTopics');
insert into ACL (aclID, resource) values ('54', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewTopic:getRssFeed');
insert into ACL (aclID, resource) values ('55', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewTopic:getAtomFeed');
insert into ACL (aclID, resource) values ('56', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewTopic:getTopics');
insert into ACL (aclID, resource) values ('57', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewMyForumsBase:getTopicsLastPosts');
insert into ACL (aclID, resource) values ('58', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewMyForumsBase:execute');
insert into ACL (aclID, resource) values ('59', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.DeletePost:confirmDelete');
insert into ACL (aclID, resource) values ('60', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.EditPost:start');
insert into ACL (aclID, resource) values ('61', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.EditPost:deletePoll');
insert into ACL (aclID, resource) values ('62', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.EditPost:execute');
insert into ACL (aclID, resource) values ('63', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.ForumWatchController:activateWatch');
insert into ACL (aclID, resource) values ('64', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.ForumWatchController:deActivateWatch');
insert into ACL (aclID, resource) values ('65', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.ModeratorAction:deleteTopic');
insert into ACL (aclID, resource) values ('66', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.ModeratorAction:moveTopic');
insert into ACL (aclID, resource) values ('67', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.ModeratorAction:lockTopic');
insert into ACL (aclID, resource) values ('68', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.ModeratorAction:unlockTopic');
insert into ACL (aclID, resource) values ('69', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.ModeratorAction:deleteConfirm');
insert into ACL (aclID, resource) values ('70', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.ModeratorAction:moveConfirm');
insert into ACL (aclID, resource) values ('71', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.NewTopic:start');
insert into ACL (aclID, resource) values ('72', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.NewTopic:execute');
insert into ACL (aclID, resource) values ('73', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.PollController:vote');
insert into ACL (aclID, resource) values ('74', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.PostAction:addOption');
insert into ACL (aclID, resource) values ('75', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.PostAction:setupPoll');
insert into ACL (aclID, resource) values ('76', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.PostAction:deleteOption');
insert into ACL (aclID, resource) values ('77', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.PostAction:updateOption');
insert into ACL (aclID, resource) values ('78', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.PostAction:addAttachment');
insert into ACL (aclID, resource) values ('79', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.PostAction:deleteAttachment');
insert into ACL (aclID, resource) values ('80', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.PostAction:updateAttachment');
insert into ACL (aclID, resource) values ('81', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.ReplyTopic:startQuote');
insert into ACL (aclID, resource) values ('82', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.ReplyTopic:startInstantReplyPreview');
insert into ACL (aclID, resource) values ('83', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.ReplyTopic:executeInstantReply');
insert into ACL (aclID, resource) values ('84', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.SplitTopic:splitAfter');
insert into ACL (aclID, resource) values ('85', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.SplitTopic:splitPosts');
insert into ACL (aclID, resource) values ('86', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.TopicWatchController:activateWatch');
insert into ACL (aclID, resource) values ('87', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.TopicWatchController:deActivateWatch');
insert into ACL (aclID, resource) values ('88', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.AdminController:activateWatch');
insert into ACL (aclID, resource) values ('89', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.action.AdminController:deActivateWatch');
insert into ACL (aclID, resource) values ('90', 'it.vige.rubia.auth.ForumsACLResource:it.vige.rubia.ui.view.ViewMyForumsAllSubscribed:getTopicsLastPosts');
insert into ACL_RESOURCE (id, criteria) values ('acl://editPost', 'param[0].poster.userId.equals(identity.id)');
insert into ACL_RESOURCE (id, criteria) values ('it.vige.rubia.ui.action.EditPost:execute', 'param[0].post.poster.userId.equals(identity.id)');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('1', '2', 'users', '11');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('2', '2', 'users', '12');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('3', '2', 'users', '16');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('5', '2', 'users', '13');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('6', '2', 'users', '14');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('7', '2', 'users', '15');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('8', '2', 'users', '19');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('9', '2', 'users', '26');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('10', '2', 'users', '27');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('11', '2', 'users', '28');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('12', '2', 'users', '29');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('13', '2', 'users', '30');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('14', '2', 'users', '31');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('15', '2', 'users', '32');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('16', '2', 'users', '33');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('17', '2', 'users', '34');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('18', '2', 'users', '35');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('19', '2', 'users', '36');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('20', '2', 'users', '37');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('21', '2', 'users', '38');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('22', '2', 'users', '39');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('23', '2', 'users', '40');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('24', '2', 'users', '41');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('25', '2', 'users', '42');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('26', '2', 'users', '43');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('27', '2', 'users', '44');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('28', '2', 'users', '45');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('29', '2', 'users', '46');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('30', '2', 'users', '47');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('31', '2', 'users', '48');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('32', '2', 'users', '49');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('33', '2', 'users', '50');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('34', '2', 'users', '51');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('35', '2', 'users', '52');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('36', '2', 'users', '53');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('37', '2', 'users', '54');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('38', '2', 'users', '55');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('39', '2', 'users', '56');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('40', '2', 'users', '57');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('41', '2', 'users', '58');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('42', '2', 'users', '60');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('43', '2', 'users', '62');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('44', '2', 'users', '63');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('45', '2', 'users', '64');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('46', '2', 'users', '71');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('47', '2', 'users', '72');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('48', '2', 'users', '73');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('49', '2', 'users', '81');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('50', '2', 'users', '82');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('51', '2', 'users', '83');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('52', '2', 'users', '86');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('53', '2', 'users', '87');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('54', '2', 'guests', '11');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('55', '2', 'guests', '12');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('56', '2', 'guests', '26');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('57', '2', 'guests', '27');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('58', '2', 'guests', '28');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('59', '2', 'guests', '29');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('60', '2', 'guests', '30');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('61', '2', 'guests', '31');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('62', '2', 'guests', '32');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('63', '2', 'guests', '33');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('64', '2', 'guests', '34');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('65', '2', 'guests', '35');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('66', '2', 'guests', '36');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('67', '2', 'guests', '37');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('68', '2', 'guests', '38');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('69', '2', 'guests', '39');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('70', '2', 'guests', '40');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('71', '2', 'guests', '53');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('72', '2', 'guests', '54');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('73', '2', 'guests', '55');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('74', '2', 'guests', '56');
insert into ACL_ENTRY (entryID, bitMask, identityOrRole, acl_aclID) values ('75', '2', 'users', '90');