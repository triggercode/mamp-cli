Config = require '../Config.coffee'
changeDir = require '../utils/changeDir'

CommandStop = require './CommandStop'
CommandStart = require './CommandStart'

module.exports = class CommandCwd
  constructor: (argv) ->
    CommandStop = require './CommandStop'
    # stop the server
    changeDir process.cwd()
    # restart MAMP, small loading indicator
    setInterval ->
      console.log "."
    , 1000
    setTimeout ->
      new CommandStart
    , 10000
