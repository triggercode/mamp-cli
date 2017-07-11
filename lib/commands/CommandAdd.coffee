Config = require '../Config.coffee'

module.exports = class CommandAdd
  constructor: (argv) ->
    targetDir = process.cwd()
    shortcut = argv["_"][1]

    if shortcut
      config = new Config
      config.add shortcut, targetDir
    else
      console.error "Error: Missing argument <shortcut>\r"
      console.error "Please ensure that your use of the 'add' command looks like this:\r"
      console.error "mamp add <shortcut>"
