

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
  },

  login(user, cb){
    $.ajax({
      url: "api/session",
      type: "POST",
      data: {user: user},
      success: cb
    })
  },

  logout(user, cb){
    $.ajax({
      url: "api/session",
      type: "DELETE"
      success: cb
    })
  }

}
