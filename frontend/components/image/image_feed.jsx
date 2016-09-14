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
        <div className="post-feed-footer">
            <ul className="footer-content">
              <li><a href="https://www.linkedin.com/in/albert-nguyen-52240933"><img src="https://image.freepik.com/free-icon/linkedin-logo_318-50643.png"></img></a></li>
              <li><a href="http://www.albertnguyencodes.com"><img src="http://res.cloudinary.com/dkieltxya/image/upload/v1473876653/headshot_lwnx22.jpg"></img></a></li>
              <li><a href="https://github.com/Anguyen89"><img src="http://image.flaticon.com/icons/svg/23/23957.svg"></img></a></li>
            </ul>
          </div>
      </div>
    )
  }
});

module.exports = ImageFeed;
