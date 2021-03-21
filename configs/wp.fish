complete -c wp -x -n '__fish_use_subcommand' -a admin --description 'Open /wp-admin/ in a browser.'
complete -c wp -x -n '__fish_use_subcommand' -a cache --description 'Adds, removes, fetches, and flushes the WP Object Cache object.'
complete -c wp -x -n '__fish_use_subcommand' -a cap --description 'Adds, removes, and lists capabilities of a user role.'
complete -c wp -x -n '__fish_use_subcommand' -a cli --description 'Reviews current WP-CLI info, checks for updates, or views defined aliases.'
complete -c wp -x -n '__fish_use_subcommand' -a comment --description 'Creates, updates, deletes, and moderates comments.'
complete -c wp -x -n '__fish_use_subcommand' -a config --description 'Generates and reads the wp-config.php file.'
complete -c wp -x -n '__fish_use_subcommand' -a core --description 'Downloads, installs, updates, and manages a WordPress installation.'
complete -c wp -x -n '__fish_use_subcommand' -a cron --description 'Tests, runs, and deletes WP-Cron events; manages WP-Cron schedules.'
complete -c wp -x -n '__fish_use_subcommand' -a db --description 'Performs basic database operations using credentials stored in wp-config.php.'
complete -c wp -x -n '__fish_use_subcommand' -a dist-archive --description 'Create a distribution archive based on a project’s .distignore file.'
complete -c wp -x -n '__fish_use_subcommand' -a embed --description 'Inspects oEmbed providers, clears embed cache, and more.'
complete -c wp -x -n '__fish_use_subcommand' -a eval --description 'Executes arbitrary PHP code.'
complete -c wp -x -n '__fish_use_subcommand' -a eval-file --description 'Loads and executes a PHP file.'
complete -c wp -x -n '__fish_use_subcommand' -a export --description 'Exports WordPress content to a WXR file.'
complete -c wp -x -n '__fish_use_subcommand' -a find --description 'Find WordPress installations on the filesystem.'
complete -c wp -x -n '__fish_use_subcommand' -a help --description 'Gets help on WP-CLI, or on a specific command.'
complete -c wp -x -n '__fish_use_subcommand' -a i18n --description 'Provides internationalization tools for WordPress projects.'
complete -c wp -x -n '__fish_use_subcommand' -a import --description 'Imports content from a given WXR file.'
complete -c wp -x -n '__fish_use_subcommand' -a language --description 'Installs, activates, and manages language packs.'
complete -c wp -x -n '__fish_use_subcommand' -a maintenance-mode --description 'Activates, deactivates or checks the status of the maintenance mode of a site.'
complete -c wp -x -n '__fish_use_subcommand' -a media --description 'Imports files as attachments, regenerates thumbnails, or lists registered image sizes.'
complete -c wp -x -n '__fish_use_subcommand' -a menu --description 'Lists, creates, assigns, and deletes the active theme’s navigation menus.'
complete -c wp -x -n '__fish_use_subcommand' -a network --description 'Perform network-wide operations.'
complete -c wp -x -n '__fish_use_subcommand' -a option --description 'Retrieves and sets site options, including plugin and WordPress settings.'
complete -c wp -x -n '__fish_use_subcommand' -a package --description 'Lists, installs, and removes WP-CLI packages.'
complete -c wp -x -n '__fish_use_subcommand' -a plugin --description 'Manages plugins, including installs, activations, and updates.'
complete -c wp -x -n '__fish_use_subcommand' -a post --description 'Manages posts, content, and meta.'
complete -c wp -x -n '__fish_use_subcommand' -a post-type --description 'Retrieves details on the site’s registered post types.'
complete -c wp -x -n '__fish_use_subcommand' -a profile
complete -c wp -x -n '__fish_use_subcommand' -a rewrite --description 'Lists or flushes the site’s rewrite rules, updates the permalink structure.'
complete -c wp -x -n '__fish_use_subcommand' -a role --description 'Manages user roles, including creating new roles and resetting to defaults.'
complete -c wp -x -n '__fish_use_subcommand' -a scaffold --description 'Generates code for post types, taxonomies, plugins, child themes, etc.'

complete -c wp -x -n '__fish_use_subcommand' -a search-replace --description 'Search/replace strings in the database.'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --dry-run --description 'Run the entire search/replace operation and show report, but don’t save changes to the database.'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --network --description 'Search/replace through all the tables registered to $wpdb in a multisite install.'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --all-tables-with-prefix --description 'Enable replacement on any tables that match the table prefix even if not registered on $wpdb.'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --all-tables --description '--export[=<file>] Enable replacement on ALL tables in the database, regardless of the prefix, and even if not registered on $wpdb. Overrides –network and –all-tables-with-prefix.'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --export --description '--export_insert_size=<rows> Write transformed data as SQL file instead of saving replacements to the database. If <file> is not supplied, will output to STDOUT.'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --export_insert_size --description '--skip-tables=<tables> Define number of rows in single INSERT statement when doing SQL export. You might want to change this depending on your database configuration (e.g. if you need to do fewer queries). Default: 50'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --skip-tables --description '--skip-columns=<columns> Do not perform the replacement on specific tables. Use commas to specify multiple tables. Wildcards are supported, e.g. "wp_*options" or "wp_post*".'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --skip-columns --description '--include-columns=<columns> Do not perform the replacement on specific columns. Use commas to specify multiple columns.'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --include-columns --description 'Perform the replacement on specific columns. Use commas to specify multiple columns.'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --precise --description 'Force the use of PHP (instead of SQL) which is more thorough, but slower.'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --recurse-objects --description 'Enable recursing into objects to replace strings. Defaults to true; pass –no-recurse-objects to disable.'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --verbose --description 'Prints rows to the console as they’re updated.'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --regex --description '--regex-flags=<regex-flags> Runs the search using a regular expression (without delimiters). Warning: search-replace will take about 15-20x longer when using –regex.'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --regex-flags --description '--regex-delimiter=<regex-delimiter> Pass PCRE modifiers to regex search-replace (e.g. ‘i’ for case-insensitivity).'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --regex-delimiter --description '--regex-limit=<regex-limit> The delimiter to use for the regex. It must be escaped if it appears in the search string. The default value is the result of chr(1).'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --regex-limit --description '--format=<format> The maximum possible replacements for the regex per row (or per unserialized data bit per row). Defaults to -1 (no limit).'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --format --description 'Render output in a particular format.'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --report --description 'Produce report. Defaults to true.'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --report-changed-only --description '--log[=<file>] Report changed fields only. Defaults to false, unless logging, when it defaults to true.'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --log --description '--before_context=<num> Log the items changed. If <file> is not supplied or is “-“, will output to STDOUT. Warning: causes a significant slow down, similar or worse to enabling –precise or –regex.'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --before_context --description '--after_context=<num> For logging, number of characters to display before the old match and the new replacement. Default 40. Ignored if not logging.'
complete -c wp -x -n '__fish_seen_subcommand_from search-replace' -a --after_context --description 'For logging, number of characters to display after the old match and the new replacement. Default 40. Ignored if not logging.'

complete -c wp -x -n '__fish_use_subcommand' -a server --description 'Launches PHP’s built-in web server for a specific WordPress installation.'
complete -c wp -x -n '__fish_use_subcommand' -a shell --description 'Opens an interactive PHP console for running and testing PHP code.'
complete -c wp -x -n '__fish_use_subcommand' -a sidebar --description 'Lists registered sidebars.'
complete -c wp -x -n '__fish_use_subcommand' -a site --description 'Creates, deletes, empties, moderates, and lists one or more sites on a multisite installation.'
complete -c wp -x -n '__fish_use_subcommand' -a super-admin --description 'Lists, adds, or removes super admin users on a multisite installation.'
complete -c wp -x -n '__fish_use_subcommand' -a taxonomy --description 'Retrieves information about registered taxonomies.'
complete -c wp -x -n '__fish_use_subcommand' -a term --description 'Manages taxonomy terms and term meta, with create, delete, and list commands.'
complete -c wp -x -n '__fish_use_subcommand' -a theme --description 'Manages themes, including installs, activations, and updates.'
complete -c wp -x -n '__fish_use_subcommand' -a transient --description 'Adds, gets, and deletes entries in the WordPress Transient Cache.'
complete -c wp -x -n '__fish_use_subcommand' -a user --description 'Manages users, along with their roles, capabilities, and meta.'
complete -c wp -x -n '__fish_use_subcommand' -a widget --description 'Manages widgets, including adding and moving them within sidebars.'
