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


###
The createdBy method adds a field to a schema to store the userId of the user who created this object.
Please note that there are two versions supported. The original used the concept of an actor object,
but it turned out to be overkill. The new one is simpler, it just addes a createdByUserId field of type ObjectId

To run with the old version: Do nothing.
To run with the new version: set options.v to 2
To not keep both fields: set options.keepV1 to false
###
exports.createdBy = (schema, options = {}) ->
  _.defaults options, 
    isRequired: false
    v: 1
    keepV1 : true

  if options.v is 1 || options.keepV1
    options.defaultActor = null unless options.defaultActor

    schema.add
      createdBy:
        type :  ActorType #mongoose.Schema.Types.Mixed #
        default : options.defaultActor
        required : options.isRequired

  if options.v > 1
    defaultUserId = null
    defaultUserId = new mongoose.Types.ObjectId options.defaultUserId.toString() if options.defaultUserId

    schema.add
      createdByUserId:
        type: mongoose.Schema.ObjectId
        require: options.isRequired
        default: defaultUserId

