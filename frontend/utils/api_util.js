

module.exports = {

  fetchImages(cb){
    $.ajax({
      url: "api/images",
      type: "GET",
      success: cb
    })
  },

  fetchImage(id, cb){
    $.ajax({
      url: "api/images/" + id,
      type: "GET",
      success: cb
    })
  },

  updateImage(image, cb){
    $.ajax({
      url: "api/images/" + image.id,
      type: "PATCH",
      data: {image: image},
      success: cb
    })
  },

  deleteImage(image, cb){
    $.ajax({
      url: "api/images/" + image.id,
      type: "DELETE",
      success: cb
    })

  },

  fetchUserProfile(id, cb){
    $.ajax({
      url: "api/users/" + id,
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

  logout(cb){
    $.ajax({
      url: "api/session",
      type: "DELETE",
      success: cb
    })
  },

  signup(user, cb){
    $.ajax({
      url: "api/users",
      type: "POST",
      data: {user: user},
      success: cb
    })
  }

}
