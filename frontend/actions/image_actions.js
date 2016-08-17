
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
  }
};
