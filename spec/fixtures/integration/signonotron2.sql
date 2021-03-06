-- Clean data from database
DELETE FROM `oauth_access_grants`;
DELETE FROM `oauth_access_tokens`;
DELETE FROM `oauth_applications`;
DELETE FROM `supported_permissions`;
DELETE FROM `users`;
DELETE FROM `user_application_permissions`;

-- Setup fixture data
INSERT INTO `oauth_applications` (id, name, uid, secret, redirect_uri, created_at, updated_at, home_uri, description)
              VALUES (1,'GDS_SSO integration test','gds-sso-test','secret','http://www.example-client.com/auth/gds/callback','2012-04-19 13:26:54','2012-04-19 13:26:54', 'http://home.com', 'GDS_SSO integration test');
INSERT INTO `oauth_applications` (id, name, uid, secret, redirect_uri, created_at, updated_at, home_uri, description)
              VALUES (2,'A different appilcation','application-2','different secret','http://www.example-client2.com/auth/gds/callback','2014-07-14-09:07:32','2014-07-14-09:07:32', 'http://www.example-client2.com', '');

INSERT INTO `supported_permissions` (id, application_id, name, created_at, updated_at)
              VALUES (1,1,'signin','2012-04-19 13:26:54','2012-04-19 13:26:54');
INSERT INTO `supported_permissions` (id, application_id, name, created_at, updated_at)
              VALUES (2,2,'signin','2012-04-19 13:26:54','2012-04-19 13:26:54');

INSERT INTO `users` (id, email, encrypted_password, password_salt, created_at, updated_at, confirmed_at, name, uid, role, password_changed_at)
              VALUES (1,'test@example-client.com','bb8e19edbaa1e7721abe0faa5c1663a7685950093b8c7eceb0f2e3889bdea4c5f17ca97820b2c663edf46ea532d1a9baa04b680fc537b4de8a3f376dd28e3ffd','MpLsZ8q1UaAojTa6bTC6','2012-04-19 13:26:54','2012-04-19 13:26:54','2012-04-19 13:26:54','Test User','integration-uid', "normal", NOW());

INSERT INTO `user_application_permissions` (user_id, application_id, supported_permission_id, created_at, updated_at)
              VALUES (1,1,1,'2012-04-19 13:26:54','2012-04-19 13:26:54');
INSERT INTO `user_application_permissions` (user_id, application_id, supported_permission_id, created_at, updated_at)
              VALUES (1,2,2,'2012-04-19 13:26:54','2012-04-19 13:26:54');
