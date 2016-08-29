var React = require('react');
var ImageStore = require('../../stores/image_store');
var ImageActions = require('../../actions/image_actions');
var hashHistory = require('react-router').hashHistory;



var EditImage = React.createClass({

  getInitialState(){
    var image = ImageStore.find(this.props.params.id);
    if (image){
      return({
        title: image.title,
        description: image.description,
        url: image.image_url,
        album: image.album,
        imageType: "Photography"
      })
    }
  },

  componentDidMount(){
    this.imageListener = ImageStore.addListener(this.handleChange);
    ImageActions.fetchImage(this.props.params.id);
  },

  componentWillUnmount(){
    this.imageListener.remove();
  },

  updateTitle(e){
    this.setState({ title: e.target.value});
  },

  updateImageType(e){
    this.setState({ imageType: e.target.value});
  },

  updateDescription(e){
    this.setState({ description: e.target.value});
  },

  // handleChange(){
  //   var image = ImageStore.find(this.props.params.id);
  //     this.setState({
  //       title: image.title,
  //       description: image.description,
  //       url: image.image_url,
  //       album: image.album,
  //       imageType: image.imageType
  //     })
  // },
  handleChange: function() {
    var potentialImage = ImageStore.find(this.props.params.id);
    var image = potentialImage ? potentialImage : {};
    this.setState({
      title: image.title,
      description: image.description,
      url: image.image_url,
      imageType: image.imageType});
  },

  handleSubmit(e){
    e.preventDefault(e);
    var id = this.props.params.id;
    var imageData = {
      title: this.state.title,
      description: this.state.description,
      imate_type: this.state.imageType,
      id: id
    }
    ImageActions.updateImage(imageData);
    // hashHistory.push('/image/' + id);
    // hashHistory.push('/');
  },

  rootToHome(){
    hashHistory.push('/');
  },

  rootToImage(){
    hashHistory.push('/image/' + this.props.params.id);
  },


  render(){

    return (
      <div className="image-edit-form">
        <form className="form" onSubmit={this.handleSubmit}>
          <h1 className="edit-form-title">EDIT IMAGE</h1>
          <br/><br/>
          <input type="text"
            onChange={this.updateTitle}
            placeholder="TITLE"
            className="edit-title"/>

          <br/><br/>

        <input
          type="textarea"
          className="edit-description"
          onChange={this.updateDescription}
          placeholder="DESCRIPTION"
          />

        <br/><br/><br/>

        <input className="edit-submit" type="submit" value="SAVE"></input>

        </form>
        <div className="root-to-buttons">
          <a onClick={this.rootToHome}>return to Home</a>
          <span> | </span>
          <a onClick={this.rootToImage}>back to Image</a>
        </div>

      </div>
    )
  }

});

module.exports = EditImage;
