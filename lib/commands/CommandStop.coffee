exec = require('child-process-promise').exec

module.exports = class CommandStop
  constructor: ->
    exec "/Applications/MAMP/bin/stop.sh"
    .then (result) ->
      console.log "-> MAMP stopped"
    .fail (err) ->
      console.error "Error: MAMP could not be stopped."
      console.error err