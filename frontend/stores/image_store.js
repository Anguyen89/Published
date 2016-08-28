

var AppDispatcher = require('../dispatcher/dispatcher');
var ImageConstants = require('../constants/image_constants');

var Store = require('flux/utils').Store;

var ImageStore = new Store(AppDispatcher);


var _images = {};

//need to see why the object cannot be used outside of this. Why do

var resetImages = function(images){
  _images = {};
  images.forEach(function(image){
    _images[image.id] = image;
  });

};

var addImage = function(image){
  _images[image.id] = image;
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
  switch(payload.actionType){
    case ImageConstants.RECEIVE_IMAGES:
      resetImages(payload.images);
      this.__emitChange();
      break;
    case ImageConstants.RECEIVE_IMAGE:
      addImage(payload.image);
      this.__emitChange();
      break;
  }
};

module.exports = ImageStore;
