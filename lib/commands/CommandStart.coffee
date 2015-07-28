exec = require('child-process-promise').exec

module.exports = class CommandStart
  constructor: (argv) ->
    exec "/Applications/MAMP/bin/start.sh"
    .then ->
      dont = "do_anything"
    .fail (err) ->
      console.error "Error: Mamp could not be started."
      console.error err
    .progress ->
      console.log "-> MAMP started"
      process.exit(0)