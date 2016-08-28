var React = require('react');
var ImageStore = require('../../stores/image_store');
var ImageActions = require('../../actions/image_actions');
var Masonry = require('react-masonry-component');
var Loader = require('react-loader');
var ImageIndexItem = require('./image_index_item');

var ImageFeed = React.createClass({
  getInitialState(){
    return ({images: [], loaded: false});
  },

  componentDidMount(){
    this.ImageStoreListener = ImageStore.addListener(this._onChange);
    ImageActions.fetchImages();
    this.setState({loaded: true});
  },

  componentWillUnmount(){
    this.ImageStoreListener.remove();
  },

  _onChange(){
    this.setState({images: ImageStore.all()})
  },

  render(){
    var images;
    if (this.state.images.length !== 0){
      images = this.state.images.map(function(image){
        return <ImageIndexItem key={image.id} image={image}/>;
      });
    }

    var masonryOptions = {
      isFitWidth: true
    };

    return (
      <div className="image-container">
        <Loader loaded={this.state.loaded}/>
        <Masonry
          className="image-feed"
          elementType={'ul'}
          options={masonryOptions}
          disableImagesLoaded={false}>
          {images}
        </Masonry>

      </div>
    )
  }
});

module.exports = ImageFeed;
