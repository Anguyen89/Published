var React = require('react');
var Upload = require("./upload");
var SessionStore = require('../stores/session_store');
var SessionActions = require('../actions/session_actions');
var ErrorStore = require('../stores/error_store');
var Login = require('./forms/login');
var SignUp = require('./forms/signup');
var hashHistory = require('react-router').hashHistory;



module.exports = React.createClass({

  getInitialState() {
    return {
      currentUser: SessionStore.currentUser(),
      errors: ErrorStore.all()
    }
  },

  componentDidMount(){
    this.sessionStoreListener = SessionStore.addListener(this.onChange);
    this.errorStoreListener = ErrorStore.addListener(this.onErrorChange);
  },

  componentWillUnmount(){
    this.sessionStoreListener.remove();
    this.errorStoreListener.remove();
  },

  onChange(){
    this.setState({currentUser: SessionStore.currentUser()})
  },

  onErrorChange(){
    this.setState({ errors: ErrorStore.all()});
  },

  handleLogout(){
    SessionActions.logout();
  },

  goToHome(){
    hashHistory.push('/');
  },

  redirectToProfile(){
    hashHistory.push('profile/' + this.state.currentUser.id );
  },

  render(){
    var navContent;
    if (this.state.currentUser){
      navContent = (
        <ul>
          <li><Upload/></li>
          <li><a className="nav-logout" onClick={this.handleLogout}>Logout</a></li>
          <li><a className="user-profile-button" onClick={this.redirectToProfile}>Profile</a></li>
        </ul>
      )
    }else {
      navContent = (
        <ul>
          <li><Login/></li>
          <li><SignUp/></li>
        </ul>
      )
    }
    return (
      <div className="nav-container">
        <a className="home-button" onClick={this.goToHome}>Published</a>
        {navContent}
      </div>
    )
  }
});
