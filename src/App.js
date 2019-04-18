import "./App.css";

import React, { Component } from "react";
import { HashRouter as Router, Route, Switch } from "react-router-dom";

import Header from "./Header.js";
import About from "./About.js";
import Papers from "./Papers.js";
import Code from "./Code.js";
import Videos from "./Videos.js";

const Home = () => <div />;

class App extends Component {
  render() {
    return (
      <Router>
        <div>
          <Header />
          <Switch>
            <Route path="/" component={Home} exact />
            <Route path="/about" component={About} />
            <Route path="/papers" component={Papers} />
            <Route path="/code" component={Code} />
            <Route path="/videos" component={Videos} />
            <Route />
          </Switch>
        </div>
      </Router>
    );
  }
}

export default App;
