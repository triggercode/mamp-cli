# mamp-cli

### What is it?

A command line interface for working with [MAMP](https://www.mamp.info/de/). It can start and stop your MAMP, but also easily switch the document root so that you can switch projects easily by using a favorite list.

### Warning

Please __backup your httpd.conf__ file of your MAMP before using this script. It can be found here:

    /Applications/MAMP/conf/apache/httpd.conf

### Requirements

- MAMP (tested with 3.0.7.3)
- Node.js
- Coffee-Script ($ npm install -g coffee-script)

### How it works

- it uses the MAMP bash scripts in /Applications/MAMP/bin to start and stop the server
- it overwrites the httpd.conf to change the document root
- it creates a ~/.mamp-cli file to track a favorite list of document roots

### Installation

1. clone this project
2. $ npm run setup

The setup script will install all needed modules and __create a symlink__ to the script under ~/bin/mamp .

### Usage

Use this to print the help:

    $ mamp

### Available Commands

    $ mamp start
    // start the server

    $ mamp stop
    // stop the server

    $ mamp list
    // list your favorite shortcuts

    $ mamp add <shortcut>
    // add the current directory to your favorites

    $ mamp remove <shortcut>
    // remove a shortcut

    $ mamp switch <shortcut>
    // switch the document root to the one of your shortcuts

### License

The MIT License (MIT)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
