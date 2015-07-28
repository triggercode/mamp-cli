Config = require '../Config.coffee'

module.exports = class CommandAdd
  constructor: (argv) ->
    targetDir = process.cwd()
    shortcut = argv["_"][1]
    config = new Config
    config.add shortcut, targetDir