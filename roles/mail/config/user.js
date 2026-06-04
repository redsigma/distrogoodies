user_pref("app.use_without_mail_account", true);
user_pref("mailnews.start_page.enabled", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("extensions.pendingOperations", false);
user_pref("messenger.status.awayWhenIdle", false);
user_pref("messenger.status.reportIdle", false);
user_pref("mail.shell.checkDefaultClient", false);
user_pref("network.cookie.cookieBehavior", 3);
user_pref("offline.startup_state", 4);
user_pref("pref.privacy.disable_button.cookie_exceptions", false);
user_pref("pref.privacy.disable_button.view_cookies", false);

user_pref("mail.minimizeToTray", true);

user_pref("messenger.options.getAttentionOnNewMessages", true);
user_pref("messenger.options.messagesStyle.theme", "simple");
user_pref("messenger.options.messagesStyle.variant", "Dark");
user_pref("security.webauthn.show_ms_settings_link", true);

// use threaded view for grouping mails
user_pref("mailnews.default_view_flags", 64);

// open attachments as a temp file , not direct download
user_pref("mailnews.downloadToTempFile", true);

// dont use built in pdf viewer
user_pref("pdfjs.enabledCache.state", false);

// dont allow OS to search in the mail
user_pref("searchintegration.enable", false);
user_pref("mail.winsearch.firstRunDone", true);

// auto mark spam as read
user_pref("mail.spam.manualMark", true); 
user_pref("mail.spam.markAsReadOnSpam", true);
