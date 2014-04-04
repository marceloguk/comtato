<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'comtato');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'H)7T#Iu|iaf1|9a6!0:Zt$vLlyZ9U!3:H_mRA+.ua+9.j669JR_388dmMPpk8~A-');
define('SECURE_AUTH_KEY',  '@ln%6H>,t/n=3h2a$P=1zU(/?flHzZ;S)}jcIK`[J4n= /hL9.lLmv$+81vkPvFo');
define('LOGGED_IN_KEY',    '^q{!nHIDV,NysKLx+;i|uy^}^]Sq?+|$xNH-4@+vlGLYn!4e%fBgP|&y#JPVyL*O');
define('NONCE_KEY',        'aP5,x^ZT1j4c4A:,xU+),+ [8<pBaxhc(P/-*O/6zp0/4u/G E_YwEGjGZV;I|21');
define('AUTH_SALT',        '6-(c@u*F>j3*PzH+&^>u.na((/H?]jJ:#*;WB!bNi(Y@R}.l*?k[h+QP0zj*9% N');
define('SECURE_AUTH_SALT', ' X}&t/wyh1sH5>/b~`q_pt7}J@|y/1{79&34R?D!x-SBMH:C=b@ALDsKO;&:X%?)');
define('LOGGED_IN_SALT',   '%-/(3o)=_Eco>ai~!eE;uU7,:{HLVdOv-VO*R42!&wn.<{#i?KfDT<nyX[4n?w$t');
define('NONCE_SALT',       '>@2Yo;C$<u`)|7PXpo%1#AX-Z9peKS-}QT}!GyZ>KE>X]Qd+|y4W6mH~.8Y3]=-H');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

