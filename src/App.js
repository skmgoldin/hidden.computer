import "./App.css";

import React, { Component } from "react";
import { HashRouter as Router, Route, Routes } from "react-router-dom";

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
          <Routes>
            <Route path="/" element={<Home />} exact />
            <Route path="/about" element={<About />} />
            <Route path="/papers" element={<Papers />} />
            <Route path="/code" element={<Code />} />
            <Route path="/videos" element={<Videos />} />
            <Route />
          </Routes>
        </div>
      </Router>
    );
  }
}

export default App;
