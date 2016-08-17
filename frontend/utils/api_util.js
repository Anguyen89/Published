

module.exports = {

  fetchImages(cb){
    $.ajax({
      url: "api/images",
      type: "GET",
      success: cb
    })
  }
  
}
