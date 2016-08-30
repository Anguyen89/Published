"use strict";

var AppDispatcher = require('../dispatcher/dispatcher');
var SessionConstants = require('../constants/session_constants');
var ApiUtil = require('../utils/api_util');
var UserConstants = require('../constants/user_constants');
var ErrorConstants = require('../constants/error_constants');

var SessionActions = {

	fetchCurrentUser: function() {
    ApiUtil.fetchCurrentUser(this.receiveCurrentUser);
	},

	signup: function(loginData) {
		ApiUtil.signup(loginData, this.receiveCurrentUser);
	},

	login: function(loginData) {
		ApiUtil.login(loginData, this.receiveCurrentUser);
	},

	logout: function() {
		ApiUtil.logout(this.removeCurrentUser);
	},

	fetchUserProfile: function(id) {
		ApiUtil.fetchUserProfile(id, this.receiveUserProfile);
	},

	editUserProfile: function(userData) {
		ApiUtil.editUserProfile(userData);
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
		console.log("dispatch user profile");
    AppDispatcher.dispatch({
      actionType: UserConstants.RECEIVE_USER,
      user: user
    });
  }
};



module.exports = SessionActions;
