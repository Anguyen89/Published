var React = require('react');
var hashHistory = require('react-router').hashHistory;
var ImageActions = require('../../actions/image_actions');

var ImageDetail = React.createClass({

  rootToHome(){
    hashHistory.push('/');
  },

  rootToEdit(){

  },

  deleteImage(){
    ImageActions.deleteImage(this.props.image);
  },

  render(){
    var editDelete;
    if (this.props.user.id === SessionStore.currentUser().id){
      editDelete = (
        <div className="edit-delete">
          <div onClick={this.rootToEdit}>Edit</div>
          <div onClick={this.deleteImage}>Delete</div>
        </div>
      )
    }else {
      editDelete = (
        <div></div>
      )
    }
    return(
      <div className="image-detail">
        <div className="image-title">
          <div>{this.props.image.title}</div>
        </div>
        <div className="image-author">by: {this.props.user.name}</div>
        <div>
          {editDelete}
        </div>
        <a onClick={this.rootToHome} className="image-return">return to Home</a>
      </div>
    )
  }
});

module.exports = ImageDetail;
