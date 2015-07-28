Config = require '../Config.coffee'

module.exports = class CommandRemove
  constructor: (argv) ->
    shortcut = argv["_"][1]
    config = new Config
    config.remove shortcut