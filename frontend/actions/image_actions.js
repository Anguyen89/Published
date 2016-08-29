
var ApiUtil = require('../utils/api_util');
var AppDispatcher = require('../dispatcher/dispatcher');
var ImageConstants = require('../constants/image_constants');

module.exports = {

  fetchImages: function(){
    ApiUtil.fetchImages(this.receiveImages);
  },

  receiveImages: function(images){
    AppDispatcher.dispatch({
      actionType: ImageConstants.RECEIVE_IMAGES,
      images: images
    });
  },

  deleteImage: function(image){
    ApiUtil.deleteImage(image, this.removeImage);
  },

  removeImage: function(image){
        console.log('dispatch removal to store');
    AppDispatcher.dispatch({
      actionType: ImageConstants.DELETE_IMAGE,
      image: image
    });
  },

  createPost: function(image){
    ApiUtil.createPost(image);
  },

  receivePost: function(image){
    AppDispatcher.dispatch({
      actionType: ImageConstants.RECEIVE_IMAGE,
      image: image
    });
  }
};
