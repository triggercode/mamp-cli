fs = require 'fs'

module.exports = changeDir = (newTargetDir) ->
  # get the httpd conf path
  pathToHttpdConf = '/Applications/MAMP/conf/apache/httpd.conf'
  # read the httpdconf
  httpdConf = fs.readFileSync pathToHttpdConf, 'utf8'
  # get the current document root
  res = /DocumentRoot "(.*)"/g
    .exec httpdConf
  webroot = res[1]
  # replace the current with the new document root
  newHttpdConf = httpdConf.replace ///#{webroot}///g, newTargetDir
  # write the new httpdconf
  fs.writeFileSync pathToHttpdConf, newHttpdConf
