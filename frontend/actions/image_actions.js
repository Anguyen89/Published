
var ApiUtil = require('../utils/api_util');
var AppDispatcher = require('../dispatcher/dispatcher');

var ImageActions = {

  fetchImages(){
    ApiUtil.fetchImages(this.receiveImages)
  },

  receiveImages(images){
    AppDispatcher.disptatch({
      actionType: ImageConstants.receiveImages
      images: images
    })
  }
};

module.exports = ImageActions;
