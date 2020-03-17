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

Clone or download this repository. From terminal, navigate to the download location and install WPECS globally with the following command:

    make install

You will then be able to run WPECS from any directory.

Running `make install` will install WPECS dependencies and register coding standards with PHPCS.

## Usage

    USAGE: wpecs [--strict] [phpcs-options] <path>    
    <wpecs> Run the specified path against the WP Engine Coding Standards
    <wpecbf> Attempt to fix sniffs against the WP Engine Strict Coding Standards

**WP-Engine Coding Standard**

_The required standard for secure WordPress development._

`wpecs .`

**WP-Engine-Strict Coding Standard**

_The recommend standard for WP Engine authored plugins._

`wpecs --standard="WP-Engine-Strict" .`

Since WPECS is a collection of custom rulesets, you can still use regular [PHP_CodeSniffer commands](https://github.com/squizlabs/PHP_CodeSniffer/wiki/Usage).

## Results

When you run WP Engine Coding Standards against your PHP file(s) or against a project directory, it will generate two reports:

* Summary report of PHP Code Sniffer violations (`report-summary.txt`)
* Verbose report of PHP Code Sniffer violations (`report-full.txt`)

The summary provides an overview of how many total sniff violations were detected, while the detailed review highlights specific lines of code (by file) where errors or warnings were detected and what the issues are.

For help understanding errors or warnings and suggestions for troubleshooting specific issues, please refer to the full [WP Engine Coding Standards Documentation](https://github.com/wpengine/wpengine-coding-standards/wiki).
