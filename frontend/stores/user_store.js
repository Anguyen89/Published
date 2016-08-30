var Dispatcher = require('../dispatcher/dispatcher.js');
var Store = require('flux/utils').Store;
var UserConstants = require('../constants/user_constants');

var UserStore = new Store(Dispatcher);


var _user = {};





var updateUser = function(user){
  _user = user;
};

UserStore.userProfile = function(){
  return _user;
};


UserStore.__onDispatch = function(payload){
  switch(payload.actionType){
    case(UserConstants.RECEIVE_USER):
    updateUser(payload.user);
      this.__emitChange();
    break;
  }
};


module.exports = UserStore;
