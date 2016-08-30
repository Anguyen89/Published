var React = require('react');
var SessionStore = require('../../stores/session_store');
var SessionActions = require('../../actions/session_actions');
var UserStore = require('../../stores/user_store');
var Masonry = require('react-masonry-component');
// var ImageIndexItem = require('../image/image_index_item');

var ProfileFeed = React.createClass({

  getInitialState(){
    return ({ current_user: SessionStore.currentUser(), user: UserStore.userProfile() });
  },

  componentDidMount(){
    this.SessionStoreListener = SessionStore.addListener(this.onChange);
    this.UserStoreListener = UserStore.addListener(this.changeUser);
    SessionActions.fetchUserProfile(parseInt(this.props.params.id));
  },

  changeUser(){
    this.setState({ user: UserStore.userProfile()});
  },

  onChange(){
    this.setState({current_user: SessionStore.currentUser()});
  },

  componentWillUnmount(){
    this.SessionStoreListener.remove();
    this.UserStoreListener.remove();
  },

  componentWillReceiveProps(newProps){
    SessionActions.fetchUserProfile(parseInt(newProps.params.id));
  },



  render(){
    var images;

    if (this.state.user){
      images = this.state.user.images.map(function(images, idx){
        return (
          <ImageIndexItem image={image} key={idx}/>
        )
      })
    }


    return (
      <div className="profile-feed-container">
        {images}
      </div>
    )

  }
});

module.exports = ProfileFeed;
