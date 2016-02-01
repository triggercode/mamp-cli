# TODO:
# - work more with promises, e.g. while starting and stopping
# - error handling of e.g. shortcuts are not yet defined

argv = require('minimist')(process.argv.slice(2))
Commander = require './Commander'

commander = new Commander argv['_'], argv
commander.execCommand()
