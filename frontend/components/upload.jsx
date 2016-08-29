var React = require('react');
var ImageActions = require('../actions/image_actions');
var SessionStore = require('../stores/session_store');



var Upload = React.createClass({
  upload: function(e){
    e.preventDefault();

    cloudinary.openUploadWidget(window.cloudinary_options,
    function (error, images) {
      if (error, images){
        var picture = { image_url: images[0].url, user_id: SessionStore.currentUser().id};
        ImageActions.createPost(picture);
      }
    });
  },

  render: function(){
    return (
      <a
        onClick={this.upload}
        className="upload-icon">
        Upload
      </a>
    );
  }
});

module.exports = Upload;
