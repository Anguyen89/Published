var React = require('react');
var ImageActions = require('../actions/image_actions');



var Upload = React.createClass({
  upload: function(e){
    e.preventDefault();

    cloudinary.openUploadWidget(window.cloudinary_options,
    function (error, images) {
      if (error, images){
        var picture = { image_url: images[0].url};
        ImageActions.createPost(picture);
      }
    });
  },

  render: function(){
    return (
      <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Aiga_uparrow_inv.svg/500px-Aiga_uparrow_inv.svg.png"
        onClick={this.upload}
        className="upload-icon">
      </img>
    );
  }
});

module.exports = Upload;