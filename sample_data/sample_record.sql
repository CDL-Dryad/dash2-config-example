/* This data import is meant to work with dashv2 tag v0.1.22.  It would include data for the
   DataCite schema.  While it might work with later versions, it might need updates to
   work with a later database schema if it was changed significantly.
*/

INSERT INTO `stash_engine_identifiers` (`id`, `identifier`, `identifier_type`, `created_at`, `updated_at`)
VALUES
  (510, '10.5072/FK2SF2SH9B', 'DOI', '2016-11-29 00:47:00', '2016-11-29 00:47:00');

INSERT INTO `stash_engine_resources` (`id`, `user_id`, `current_resource_state_id`, `created_at`, `updated_at`, `has_geolocation`, `download_uri`, `identifier_id`, `update_uri`)
VALUES
  (525, 94, 1050, '2016-11-29 00:44:16', '2016-11-29 00:47:35', 1, 'http://merritt-dev.cdlib.org/d/ark%3A%2F99999%2Ffk45q5643n', 510, 'http://sword-aws-dev.cdlib.org:39001/mrtsword/edit/dash_ucb/doi%3A10.5072%2FFK2SF2SH9B');

INSERT INTO `stash_engine_versions` (`id`, `version`, `zip_filename`, `resource_id`, `created_at`, `updated_at`)
VALUES
  (508, 1, '525_archive.zip', 525, '2016-11-29 00:47:35', '2016-11-29 00:47:35');

INSERT INTO `stash_engine_users` (`id`, `first_name`, `last_name`, `email`, `uid`, `provider`, `oauth_token`, `created_at`, `updated_at`, `tenant_id`, `orcid`)
VALUES
  (94, 'Scott', 'Fisher', 'scott.fisher@ucop.edu', 'scott.fisher-ucb@ucop.edu', 'developer', NULL, '2016-10-06 20:37:29', '2016-10-06 20:37:29', 'ucb', 0);

INSERT INTO `stash_engine_submission_logs` (`id`, `resource_id`, `archive_response`, `created_at`, `updated_at`, `archive_submission_request`)
VALUES
  (10, 525, 'Success', '2016-11-29 00:47:35', '2016-11-29 00:47:35', 'Submitting /Users/scottfisher/workspace/dashv2/uploads/525_archive.zip for \'A Case for Reinforcement Learning\' (doi:10.5072/FK2SF2SH9B) at 2016-11-28 16:47:00 -0800: collection_uri: http://uc3-mrtsword-dev.cdlib.org:39001/mrtsword/collection/dash_ucb,');

INSERT INTO `stash_engine_resource_usages` (`id`, `resource_id`, `downloads`, `views`)
VALUES
  (37, 525, 0, 6);

INSERT INTO `stash_engine_file_uploads` (`id`, `upload_file_name`, `upload_content_type`, `upload_file_size`, `resource_id`, `upload_updated_at`, `created_at`, `updated_at`, `temp_file_path`, `file_state`)
VALUES
  (2067, X'6D793F4361742E747874', 'text/plain', 6, 525, '2016-11-29 00:46:35', '2016-11-29 00:46:35', '2016-11-29 00:46:35', X'2F55736572732F73636F74746669736865722F776F726B73706163652F6461736876322F75706C6F6164732F3532352F6D793F4361742E747874', 'created');

INSERT INTO `dcs_titles` (`id`, `title`, `title_type`, `resource_id`, `created_at`, `updated_at`)
VALUES
  (519, 'A Case for Reinforcement Learning', NULL, 525, '2016-11-29 00:44:36', '2016-11-29 00:44:36');

INSERT INTO `dcs_subjects` (`id`, `subject`, `subject_scheme`, `scheme_URI`, `created_at`, `updated_at`)
VALUES
  (18, 'snow depth', 'LTER Controlled Vocabulary', 'http://vocab.lternet.edu', '2016-11-08 20:12:40', '2016-11-08 20:12:40');

INSERT INTO `dcs_subjects_stash_engine_resources` (`id`, `resource_id`, `subject_id`, `created_at`, `updated_at`)
VALUES
  (2155, 525, 18, '2016-11-29 00:45:16', '2016-11-29 00:45:16');

INSERT INTO `dcs_rights` (`id`, `rights`, `rights_uri`, `resource_id`, `created_at`, `updated_at`)
VALUES
  (525, 'Creative Commons Attribution 4.0 International (CC BY 4.0)', 'https://creativecommons.org/licenses/by/4.0/', 525, '2016-11-29 00:44:18', '2016-11-29 00:44:18');

INSERT INTO `dcs_resource_types` (`id`, `resource_type_general`, `resource_type`, `resource_id`, `created_at`, `updated_at`)
VALUES
  (525, 'dataset', 'dataset', 525, '2016-11-29 00:44:18', '2016-11-29 00:44:18');

INSERT INTO `dcs_related_identifiers` (`id`, `related_identifier`, `related_identifier_type`, `relation_type`, `related_metadata_scheme`, `scheme_URI`, `scheme_type`, `resource_id`, `created_at`, `updated_at`)
VALUES
  (353, 'http://example.com', 'url', 'cites', NULL, NULL, NULL, 525, '2016-11-29 00:45:47', '2016-11-29 00:45:47');

INSERT INTO `dcs_publishers` (`id`, `publisher`, `resource_id`, `created_at`, `updated_at`)
VALUES
  (525, 'UC Berkeley', 525, '2016-11-29 00:44:18', '2016-11-29 00:44:18');

INSERT INTO `dcs_publication_years` (`id`, `publication_year`, `resource_id`, `created_at`, `updated_at`)
VALUES
  (518, '2016', 525, '2016-11-29 00:46:57', '2016-11-29 00:46:57');

INSERT INTO `dcs_geo_location_points` (`id`, `latitude`, `longitude`, `created_at`, `updated_at`)
VALUES
  (169, 37.772744, -122.193062, '2016-11-29 00:45:56', '2016-11-29 00:45:56'),
  (170, 37.596824, -122.210541, '2016-11-29 00:46:01', '2016-11-29 00:46:13');

INSERT INTO `dcs_geo_location_places` (`id`, `geo_location_place`, `created_at`, `updated_at`)
VALUES
  (264, 'Oakland, CA, USA', '2016-11-29 00:45:56', '2016-11-29 00:45:56');

INSERT INTO `dcs_geo_location_boxes` (`id`, `sw_latitude`, `ne_latitude`, `sw_longitude`, `ne_longitude`, `created_at`, `updated_at`)
VALUES
  (278, 37.632226, 37.885255, -122.355881, -122.114672, '2016-11-29 00:45:56', '2016-11-29 00:45:56'),
  (279, 37.482487, 37.547844, -122.187195, -122.032013, '2016-11-29 00:46:21', '2016-11-29 00:46:21');

INSERT INTO `dcs_geo_locations` (`id`, `place_id`, `point_id`, `box_id`, `created_at`, `updated_at`, `resource_id`)
VALUES
  (355, 264, 169, 278, '2016-11-29 00:45:56', '2016-11-29 00:45:56', 525),
  (356, NULL, 170, NULL, '2016-11-29 00:46:01', '2016-11-29 00:46:01', 525),
  (357, NULL, NULL, 279, '2016-11-29 00:46:21', '2016-11-29 00:46:21', 525);

INSERT INTO `dcs_descriptions` (`id`, `description`, `description_type`, `resource_id`, `created_at`, `updated_at`)
VALUES
  (800, 'Cryptographers agree that Bayesian epistemologies are an interesting new topic in the field of operating systems, and cyberneticists concur. After years of important research into write-back caches, we confirm the investigation of systems that would make improving DNS a real possibility. We introduce a novel heuristic for the emulation of Boolean logic, which we call Refer.', 'abstract', 525, '2016-11-29 00:44:18', '2016-11-29 00:44:29'),
  (801, 'Collected carefully.', 'methods', 525, '2016-11-29 00:44:18', '2016-11-29 00:45:29'),
  (802, 'Use carefully.', 'other', 525, '2016-11-29 00:44:18', '2016-11-29 00:45:36');

INSERT INTO `dcs_creators` (`id`, `creator_first_name`, `creator_last_name`, `name_identifier_id`, `resource_id`, `created_at`, `updated_at`)
VALUES
  (969, 'Scott', 'Fisher', NULL, 525, '2016-11-29 00:44:37', '2016-11-29 00:44:38');

INSERT INTO `dcs_contributors` (`id`, `contributor_name`, `contributor_type`, `name_identifier_id`, `resource_id`, `created_at`, `updated_at`, `award_number`)
VALUES
  (536, 'Museums Association', 'funder', NULL, 525, '2016-11-29 00:45:01', '2016-11-29 00:45:06', 'mag3875');

INSERT INTO `dcs_affiliations` (`id`, `short_name`, `long_name`, `abbreviation`, `created_at`, `updated_at`)
VALUES
  (66, 'UC Office of the President', 'University of California, Office of the President', 'UCOP', '2016-10-06 20:44:55', '2016-10-06 20:44:55');

INSERT INTO `dcs_affiliations_creators` (`id`, `affiliation_id`, `creator_id`, `created_at`, `updated_at`)
VALUES
  (187, 66, 969, '2016-11-29 00:44:54', '2016-11-29 00:44:54');
