# mamp-cli

### What is it?

A command line interface for working with [MAMP](https://www.mamp.info/de/). It can start and stop your MAMP, but also easily switch the document root so that you can switch projects easily by using a favorite list.

### Warning

Please __backup your httpd.conf__ file of your MAMP before using this script. It can be found here:

    /Applications/MAMP/conf/apache/httpd.conf

### Requirements

- MAMP (tested with 3.0.7.3)
- Node.js

### How it works

- it uses the MAMP bash scripts in /Applications/MAMP/bin to start and stop the server
- it overwrites the httpd.conf to change the document root
- it creates a ~/.mamp-cli file to track a favorite list of document roots

### Installation

    $ npm install -g mamp-cli

Depending on your setup you might need __sudo__ in front of this command.

### Usage

Use this to print the help:

    $ mamp

### Available Commands

    $ mamp start
    // start the server

    $ mamp stop
    // stop the server

    $ mamp restart
    // restart the Apache, run with sudo

    $ mamp list
    // list your favorite shortcuts

    $ mamp add <shortcut>
    // add the current directory to your favorites

    $ mamp remove <shortcut>
    // remove a shortcut

    $ mamp switch <shortcut|path>
    // switch the document root to the one of your shortcuts or directly pass a path

    $ mamp cwd
    // set the current working directory as document root

### Version History

##### 0.1.0

- added `mamp restart` that runs `apachectl -k graceful` in background (run with sudo)

##### 0.0.9

- updated `mamp add` command to log error if `<shortcut>` argument is missing. (@jrmykolyn)

##### 0.0.8

- added the possibility to pass a path to `mamp switch`

##### 0.0.7

- added the command `mamp cwd` to set the current working directory as document root

##### 0.0.6

- Bugfix, thanks to PR from @cnrk

##### 0.0.5

- coffee-script does not need to installed globally any morem


##### 0.0.4

- added git repo to package.json
- mamp switch: set delay time to 10 secs instead of 5 secs
- started this version history

##### 0.0.3

- npm settings

##### 0.0.2

- npm settings

##### 0.0.1

- initial commit

### License

See file LICENSE
