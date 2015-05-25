Auth = require './auth'

configFn = require 'a-http-server-config-fn'

module.exports = (next) ->

  configFn @config, "#{__dirname}/config"

  Object.defineProperty @, "auth", value: new Auth @

  process.on "a-http-server:shutdown:dettach", () =>

    process.emit "a-http-server:shutdown:dettached", "auth"

  process.emit "a-http-server:shutdown:attach", "auth"

  next null
