Endpoint = require './endpoint'

module.exports = class Auth

  constructor: (@server) ->

    { endpoint } = @server.config.plugins.auth

    @server.app.use endpoint, new Endpoint @server

  scopes: ->
