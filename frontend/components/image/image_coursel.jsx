
var React = require('react');
var ImageActions = require('../../actions/image_actions');
var ImageStore = require('../../stores/image_store');




module.exports = React.createClass({

  getInitialState(){
    return { images: []};
  },

  componentDidMount(){
    this.ImageStoreListener = ImageStore.addListener(this._onChange);
    ImageActions.fetchImages();
  },

  componentWillUnmount(){
    this.ImageStoreListener.remove();
  },

  _onChange(){
    this.setState({images: ImageStore.all()})
  },

  render(){
    var randomNumber = Math.floor(Math.random() * this.state.images.length - 1) + 1;
    var image = this.state.images[randomNumber];

    return (
      <div className="image-carousel-container">
        <img className="coursel-image" src={image}/>
      </div>
    )
  }

});
