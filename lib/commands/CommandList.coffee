Config = require '../Config.coffee'

module.exports = class CommandList
  constructor: () ->
    config = new Config
    data = config.fetch()
    console.log "\nShortcut\tDirectory"
    console.log "========\t========="
    for k,v of data
      console.log "#{k} \t\t#{v}"
    console.log "\n"