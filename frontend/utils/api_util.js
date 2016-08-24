

module.exports = {

  fetchImages(cb){
    $.ajax({
      url: "api/images",
      type: "GET",
      success: cb
    })
  },

  createPost(image, cb){
    $.ajax({
      url: "api/images",
      type: "POST",
      data: {image: image},
      success: cb
    })
  }

}
