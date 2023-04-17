## About

WP Engine Coding Standards for WordPress

If [WordPress Coding Standards](https://make.wordpress.org/core/handbook/best-practices/coding-standards/) offer a baseline for developers to use when contributing to or extending WordPress, think of WP Engine Coding Standards as an additional layer of best practices that:

- help developers achieve greater consistency within their themes and plugins
- assist developers in meeting the requirements of a WP Engine Solution Partner
- ensure that all software listed in the WP Engine Solution Center is of the highest quality
- offer users maximum performance and security benefits when using those themes and plugins in a modern hosting environment (PHP 7+)

The information included here walks you through the process of installing and using WP Engine Coding Standards to lint your code.

## Requirements

WP Engine Coding Standards (WPECS) uses [Composer](https://getcomposer.org/) to install these main dependencies:

* [PHP_Codesniffer (PHPCS)](https://github.com/squizlabs/PHP_CodeSniffer)
* [WordPress Coding Standards](https://github.com/WordPress/WordPress-Coding-Standards)
* [PHPCompatibilityWP](https://github.com/PHPCompatibility/PHPCompatibilityWP).

If you're using Homebrew on Mac, you can install Composer with: `brew install composer`. Otherwise, follow the official installation instructions for Composer.

## Installation

### Global installation

1. Clone the repository and install the dependencies:

```bash
git clone git@github.com:wpengine/wpengine-coding-standards.git
cd wpengine-coding-standards
composer install
```

2. Link your coding standards to your `phpcs` installation:

```bash
phpcs --config-set installed_paths /path/to/wp-engine-coding-standards
```

### Install as a dependency

You can also install the coding standards as a dependency in your local project. Here's how

1. Add the following repository to your composer.json

```json
"repositories": [
    {
      "type": "git",
      "url": "https://github.com/wpengine/wpengine-coding-standards.git"
    }
  ]
```

2. Manually add the following to `require-dev` in composer.json

```json
"wpengine/wpengine-coding-standards": "dev-master"
```

3. Run `composer install` or `composer update` to ensure your project is configured.

4. You can now use `WP-Engine` or `WP-Engine-Strict` in any IDE that uses the local phpcs. If you already have a phpcs.xml in your project, simply add the following to it:

```xml
 <rule ref="WP-Engine-Strict"/>
 ```

### Alternative Install (wpecs command)

Clone or download this repository. From terminal, navigate to the download location and install WPECS globally with the following command:

    make install

You will then be able to run WPECS from any directory.

Running `make install` will install WPECS dependencies and register coding standards with PHPCS.

* Note you might need to manually move the binaries to your path, or properly set path, if make fails.

## Usage

### Command line

Run the `phpcs` command line tool on a given file or directory, for example:

```bash
phpcs --standard=WP-Engine wp-load.php
```

**WP-Engine Coding Standard**

_The required standard for secure WordPress development._

`wpecs .`

**WP-Engine-Strict Coding Standard**

_The recommend standard for WP Engine authored plugins._

`wpecs --standard="WP-Engine-Strict" .`

### Using PHPCS and WP Engine Coding Standards from within your IDE

While the following is based on the parent WordPress Coding Standards, simply swap out the ruleset you need for `WP-Engine` or `WP-Engine-Strict` as appropriate.

* **PhpStorm** : Please see "[PHP Code Sniffer with WordPress Coding Standards Integration](https://confluence.jetbrains.com/display/PhpStorm/WordPress+Development+using+PhpStorm#WordPressDevelopmentusingPhpStorm-PHPCodeSnifferwithWordPressCodingStandardsIntegrationinPhpStorm)" in the PhpStorm documentation.
* **Sublime Text** : Please see "[Setting up WPCS to work in Sublime Text](https://github.com/WordPress/WordPress-Coding-Standards/wiki/Setting-up-WPCS-to-work-in-Sublime-Text)" in the wiki.
* **Atom**: Please see "[Setting up WPCS to work in Atom](https://github.com/WordPress/WordPress-Coding-Standards/wiki/Setting-up-WPCS-to-work-in-Atom)" in the wiki.
* **Visual Studio**: Please see "[Setting up PHP CodeSniffer in Visual Studio Code](https://tommcfarlin.com/php-codesniffer-in-visual-studio-code/)", a tutorial by Tom McFarlin.
* **Eclipse with XAMPP**: Please see "[Setting up WPCS when using Eclipse with XAMPP](https://github.com/WordPress/WordPress-Coding-Standards/wiki/How-to-use-WPCS-with-Eclipse-and-XAMPP)" in the wiki.

### Alternative usage (wpecs)

USAGE: wpecs [--strict] [phpcs-options] <path>
<wpecs> Run the specified path against the WP Engine Coding Standards
<wpecbf> Attempt to fix sniffs against the WP Engine Strict Coding Standards

## Results

For help understanding errors or warnings and suggestions for troubleshooting specific issues, please refer to the full [WP Engine Coding Standards Documentation](https://github.com/wpengine/wpengine-coding-standards/wiki).

### Contributor License Agreement

All external contributors to WP Engine products must have a signed Contributor License Agreement (CLA) in place before the contribution may be accepted into any WP Engine codebase.

1. [Submit your name and email](https://wpeng.in/cla/)
2. 📝 Sign the CLA emailed to you
3. 📥 Receive copy of signed CLA

❤️ Thank you for helping us fulfill our legal obligations in order to continue empowering builders through headless WordPress.