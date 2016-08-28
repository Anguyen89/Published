
var React = require('react');
var ImageActions = require('../../actions/image_actions');
var ImageStore = require('../../stores/image_store');




module.exports = React.createClass({

  // getInitialState(){
  //   return { images: []};
  // },
  //
  // componentDidMount(){
  //   this.ImageStoreListener = ImageStore.addListener(this._onChange);
  //   ImageActions.fetchImages();
  // },
  //
  // componentWillUnmount(){
  //   this.ImageStoreListener.remove();
  // },
  //
  // _onChange(){
  //   this.setState({images: ImageStore.all()})
  //
  // },

  render(){
    var images = [
        "https://hd.unsplash.com/photo-1462524500090-89443873e2b4",
        "https://hd.unsplash.com/photo-1451188214936-ec16af5ca155",
        "https://hd.unsplash.com/photo-1468476775582-6bede20f356f",
        "https://hd.unsplash.com/photo-1468245856972-a0333f3f8293",
        "https://hd.unsplash.com/photo-1466046690866-98181611563d",
        "https://hd.unsplash.com/photo-1465284958051-1353268c077d",
        "https://hd.unsplash.com/photo-1465232377925-cce9a9d87843"
    ]
    var randomNumber = Math.floor(Math.random() * images.length - 1) + 1;
    var image = images[randomNumber];
    return (
      <div className="image-carousel-container">
        <img className="coursel-image" src={image}/>
      </div>
    )
  }

});
