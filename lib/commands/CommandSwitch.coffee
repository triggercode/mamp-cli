fs = require 'fs'
Config = require '../Config.coffee'
CommandStop = require './CommandStop'
CommandStart = require './CommandStart'

module.exports = class CommandSwitch
  constructor: (argv) ->
    # stop the server
    new CommandStop
    # get the httpd conf path
    pathToHttpdConf = '/Applications/MAMP/conf/apache/httpd.conf'
    # get the path to the webroot from the config
    newShortcut = argv["_"][1]
    config = new Config
    newTargetDir = config.get(newShortcut)

    # read the httpdconf
    httpdConf = fs.readFileSync pathToHttpdConf, 'utf8'

    # get the current document root
    res = /DocumentRoot "(.*)"/g
      .exec httpdConf
    webroot = res[1]
    # replace the current with the new document root
    newHttpdConf = httpdConf.replace ///#{webroot}///g, newTargetDir
    # write the new httpdconf
    fs.writeFileSync pathToHttpdConf, newHttpdConf
    # restart MAMP, small loading indicator
    setInterval ->
      console.log "."
    , 1000
    setTimeout ->
      new CommandStart
    , 5000