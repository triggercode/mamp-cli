exec = require('child-process-promise').exec
isRoot = require 'is-root'

module.exports = class CommandRestart
  constructor: (argv) ->
    if !isRoot()
      console.error 'Error: Need bo be root, use "sudo mamp restart"'
    else
      exec "apachectl -k graceful"
      .then () ->
        dont = "do_anything"
      .catch (err) ->
        console.error "Error: Apache could not be restarted."
        console.error err
      .progress () ->
        console.log "-> Apache restarted"
        process.exit(0)
