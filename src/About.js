import React, { Component } from "react";
import "./About.css";
import Me from "./me.jpg";

class About extends Component {
  render() {
    return (
      <div className="about">
        <img src={Me} alt="" />
        <h3>Me</h3>
        <div>
          <p>
            I am a software developer at{" "}
            <a href="http://consensys.net">ConsenSys</a> in Brooklyn, where I
            currently work on the{" "} <a href="http://infura.io">Infura</a> team.
          </p>
          <p>My email address is mike dot goldin at consensys.net</p>
        </div>
      </div>
    );
  }
}

export default About;
