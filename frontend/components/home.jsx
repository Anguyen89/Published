var React = require('react');
var SessionStore = require('../stores/session_store');

var ImageCoursel = require('./image/image_coursel');
var ImageFeed = require('./image/image_feed');

var Home = React.createClass({

  getInitialState(){
    return { currentUser: SessionStore.currentUser()}
  },

  componentDidMount(){
    this.SessionListener = SessionStore.addListener(this.onChange);

  },

  componentWillUnmount(){
    this.SessionListener.remove();
  },

  onChange(){
    this.setState({ currentUser: SessionStore.currentUser()});
  },


  render(){
    var homeDisplay;
    if (this.state.currentUser){
      homeDisplay = (<ImageFeed/>);
    } else {
      homeDisplay = (<ImageCoursel/>);
    }

    return (
      <div>
        {homeDisplay}
      </div>
    )
  }
});

module.exports = Home;
