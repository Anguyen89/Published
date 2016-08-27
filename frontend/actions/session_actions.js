"use strict";

var AppDispatcher = require('../dispatcher/dispatcher');
var SessionConstants = require('../constants/session_constants');
var SessionApiUtil = require('../utils/api_util');
var UserConstants = require('../constants/user_constants');
var ErrorConstants = require('../constants/error_constants');

var SessionActions = {

	fetchCurrentUser: function() {
    SessionApiUtil.fetchCurrentUser(this.receiveCurrentUser);
	},

	signup: function(loginData) {
		SessionApiUtil.create(loginData, this.receiveCurrentUser);
	},

	login: function(loginData) {
		SessionApiUtil.login(loginData, this.receiveCurrentUser);
	},

	logout: function() {
		SessionApiUtil.logout(this.remvoveCurrentUser);
	},

	fetchUserProfile: function(id) {
		SessionApiUtil.fetchUserProfile(id, this.receiveUserProfile);
	},

	editUserProfile: function(userData) {
		SessionApiUtil.editUserProfile(userData);
	},
  receiveCurrentUser: function(user){
    AppDispatcher.dispatch({
      actionType: UserConstants.LOGIN,
      user: user
    });
  },

  handleError: function(error) {
    AppDispatcher.dispatch({
      actionType: ErrorConstants.ERROR,
      errors: error.responseJSON.errors
    });
  },

  removeCurrentUser: function(){
    AppDispatcher.dispatch({
      actionType: UserConstants.LOGOUT,
    });
  },

  receiveUserProfile: function(user) {
    AppDispatcher.dispatch({
      actionType: UserConstants.RECEIVE_USER,
      user: user
    });
  }
};



module.exports = SessionActions;
