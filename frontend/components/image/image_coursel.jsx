var React = require('react');
var ImageAction = require('../../actions/image_actions');



module.exports = React.createClass({

  getInitialState(){
    return { images: []};
  },

  componentDidMount(){
    this.ImageStoreListener = ImageStore.addListener(this._onChange);
    ImageActions.fetchImages();
  },

  _onChange(){
    this.setState({images: ImageStore.all()})
  },

  nextImage(){
    this.forceUpdate();
  },

  render(){
    var randomNumber = Math.floor(Math.random() * this.state.images.length) + 1;
    var image = this.state.images[randomNumber];

    return (
      <div >
        <img className="coursel-image" onClick={this.nextImage} src={image}></img>
      </div>
    )
  }

});

// var React = require('react');
// var ImageAction = require('../../actions/image_actions');
// var Carousel = require('nuka-carousel');
//
//
//
// module.exports = React.createClass({
//
//   mixins: [Carousel.ControllerMixin],
//
//   getInitialState(){
//     return { images: []};
//   },
//
//   componentDidMount(){
//     this.ImageStoreListener = ImageStore.addListener(this._onChange);
//     ImageActions.fetchImages();
//   },
//
//   _onChange(){
//     this.setState({images: ImageStore.all()})
//   },
//
//   render(){
//
//     var images = this.state.images.map(function(image){
//       return (
//         <div>
//           <img src={image}></img>
//         </div>
//       )
//     });
//
//        return (
//          <Carousel>
//            {images}
//          </Carousel>
//        )
//   }
//
//
// });
