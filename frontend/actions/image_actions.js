
var ApiUtil = require('../utils/api_util');
var AppDispatcher = require('../dispatcher/dispatcher');
var ImageConstants = require('../constants/image_constants');

module.exports = {

  fetchImages: function(){
    ApiUtil.fetchImages(this.receiveImages);
  },

  fetchImage: function(id){
    ApiUtil.fetchImage(id,this.receiveImage);
  },

  receiveImage: function(image){
    AppDispatcher.dispatch({
      actionType: ImageConstants.RECEIVE_IMAGE,
      image: image
    });
  },

  receiveUpdatedImage: function(image){
    AppDispatcher.dispatch({
      actionType: ImageConstants.UPDATE_IMAGE,
      image: image
    });
  },

  updateImage: function(image){
    ApiUtil.updateImage(image, this.receiveUpdatedImage);
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
    AppDispatcher.dispatch({
      actionType: ImageConstants.DELETE_IMAGE,
      image: image
    });
  },

  createPost: function(image){
    ApiUtil.createPost(image, this.receivePost);
  },

  receivePost: function(image){
    AppDispatcher.dispatch({
      actionType: ImageConstants.RECEIVE_IMAGE,
      image: image
    });
  }
};
