'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var ThingSchema = new Schema({
  name: String,
  info: String,
  options:[{
      name: String,
      votes: Number
    }],
  comments:[{
      comment: String,
      posted_by: String,
    }],
  active: Boolean
});

module.exports = mongoose.model('Thing', ThingSchema);
