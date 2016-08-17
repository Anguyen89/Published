var AppDispatcher = require('../dispatcher/dispatcher');
var ImageConstants = require('../constants/image_constants');

var Store = require('flux/utils').Store;

var ImageStore = new Store(AppDispatcher);


var _images = [];



var resetImages = function(images){
  _images = images.map(function(image){
    return image.image_url;
  });
};

ImageStore.all = function(){
  return _images;
},


ImageStore.__onDispatch = function(payload){
  switch(payload.actionType){
    case ImageConstants.RECEIVE_IMAGES:
      resetImages(payload.images);
      this.__emitChange();
  }
};

module.exports = ImageStore;
