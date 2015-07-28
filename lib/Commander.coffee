_ = require 'lodash'
fs = require 'fs'
path = require 'path'
printHelp = require './PrintHelp'

module.exports = class Commander

  constructor: (@commands, @argv) ->
    if @commands.length == 0
      console.error "\n!!! Error: No arguments supplied. !!!\n"
      printHelp()
      process.exit(1)

  execCommand: ->
    commandClasses = @requireCommands()
    command = @commands[0]
    commandClassName = "Command#{_.capitalize(command)}"
    new commandClasses[commandClassName](@argv)

  requireCommands: ->
    commandClasses = {}
    for cmd in fs.readdirSync(__dirname + '/commands/')
      className = path.basename cmd, '.coffee'
      commandClasses[className] = require "./commands/#{cmd}"
    return commandClasses