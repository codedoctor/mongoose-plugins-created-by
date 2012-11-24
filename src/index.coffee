mongoose = require "mongoose"
_ = require 'underscore'

MediaLinkType =
  duration: Number
  height: Number
  width: Number
  url: String

ActorType =
  actorId:
    type: String
    required : true
  displayName:
    type: String
    match: /.{0,100}/
  image :
    type: MediaLinkType


exports.createdBy = (schema, options) ->
  options = {} unless options
  _.defaults options, isRequired : false

  unless options.defaultActor
    options.defaultActor = () -> null

  schema.add
    createdBy:
      type :  ActorType #mongoose.Schema.Types.Mixed #
      default : options.defaultActor
      required : options.isRequired

