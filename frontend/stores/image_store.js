

var AppDispatcher = require('../dispatcher/dispatcher');
var ImageConstants = require('../constants/image_constants');
var hashHistory = require('react-router').hashHistory;

var Store = require('flux/utils').Store;

var ImageStore = new Store(AppDispatcher);


var _images = {};


var resetImages = function(images){
  _images = {};
  images.forEach(function(image){
    _images[image.id] = image;
  });

};

var addImage = function(image){
  console.log('adding image to store');
  _images[image.id] = image;
};

var removeImage = function(image){
  delete _images[image.id];
  hashHistory.push('/');
};

ImageStore.all = function() {
  var images = [];
  for (var id in _images) {
    images.push(_images[id]);
  }
  return images;
};

ImageStore.find = function(id) {
  return _images[id];
};


ImageStore.__onDispatch = function(payload){
  console.log("inside the dispatcher");
  switch(payload.actionType){
    case ImageConstants.RECEIVE_IMAGES:
      resetImages(payload.images);
      this.__emitChange();
      break;
    case ImageConstants.RECEIVE_IMAGE:
      addImage(payload.image);
      this.__emitChange();
      break;
    case ImageConstants.DELETE_IMAGE:
      removeImage(payload.image);
      this.__emitChange();
  }
};

module.exports = ImageStore;
