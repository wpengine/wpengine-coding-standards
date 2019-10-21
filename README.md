## About

WP Engine Coding Standards for WordPress

## Requirements

## Installation

You can install WPECS globally with the following command:

    make install

You will then be able to run WPECS from the any directory:

    USAGE: wpecs [--strict] [phpcs-options] <path>    
    <wpecs> Run the specified path against the WP Engine Coding Standards
    <wpecbf> Attempt to fix sniffs against the WP Engine Strict Coding Standards

    Try using 'wpecbf' to fix the sniff violations automatically.

## Usage

    **WP-Engine Coding Standard**

    _The required standard for secure WordPress development._

    `wpecs .`

    **WP-Engine-Strict Coding Standard**

    _The recommend standard for WP-Engine authored plugins._

    `wpecs --standard="WP-Engine-Strict" .`
