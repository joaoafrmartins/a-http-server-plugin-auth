Router = require 'a-http-server-router'

module.exports = class Endpoint extends Router

  config: "#{__dirname}/config"

  "/signin":

    method: "get"

    route: (req, res, next) ->

      res.setHeader 'Content-Type', 'application/json'

      res.end JSON.stringify

        "method" : "signin"

  "/signout":

    method: "get"

    route: (req, res, next) ->

      res.setHeader 'Content-Type', 'application/json'

      res.end JSON.stringify

        "method" : "signout"
