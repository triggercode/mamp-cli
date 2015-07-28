fs = require 'fs'

getUserHome = ->
  process.env[if process.platform == 'win32' then 'USERPROFILE' else 'HOME']

module.exports = class Config
  constructor: ->
    @configFile = "#{getUserHome()}/.mamp-cli"
  
  add: (shortcut, targetDir)  ->
    fs.stat @configFile, (err) =>
      config = {}
      if err == null
        config = @readConfig()
      config[shortcut] = targetDir
      @writeConfig config

  get: (shortcut) ->
    config = @readConfig()
    return config[shortcut]

  fetch: ->
    return @readConfig()

  remove: (shortcut) ->
    config = @readConfig()
    delete config[shortcut]
    @writeConfig(config)

  readConfig: () ->
    config = fs.readFileSync @configFile, 'utf8'
    return JSON.parse config

  writeConfig: (config) ->
    fs.writeFileSync @configFile, JSON.stringify(config)