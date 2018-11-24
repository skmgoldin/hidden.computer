import React, { Component } from "react";
import "./About.css";
import Me from "./me.jpg";

class About extends Component {
  render() {
    return (
      <div className="about">
        <img src={Me} alt="" />
        <p>
          At Coney Island with{" "}
          <a href="https://www.instagram.com/joann.arosemena/">Jo-Ann</a>
        </p>
        <h1>Me</h1>
        <div>
          <p>
            I am a software developer at{" "}
            <a href="http://consensys.net">ConsenSys</a> in Brooklyn, where I
            direct the token-curated registries team. I spend most of my time in
            the EVM and write a little Javascript, too. I like data structures.
            I have a{" "}
            <a href="https://docs.google.com/document/d/1TcceAsBlAoFLWSQWYyhjmTsZCp0XqRhNdGMb6JbASxc/edit?usp=sharing">
              cryptosystems manifesto
            </a>
            . My interest is in fully decentralized cryptosystems, and in using
            incentive games to program humans. I went to Bennington College for
            a while and graduated from Columbia University with a CS degree.
          </p>
          <p>My email address is mike dot goldin at consensys.net</p>
        </div>
        <div>
          <h1>Videos</h1>
        </div>
        <div>
          <iframe
            title="Columbia University Graduate School of Architecture, Planning and Preservation talk"
            width="560"
            height="315"
            src="https://www.youtube.com/embed/nfJ2oCF_JLU?start=1996"
            frameborder="0"
            allowfullscreen
          />
        </div>
        <div>
          <iframe
            title="Creating a Humanist Blockchain Future podcast"
            width="560"
            height="315"
            src="https://www.youtube.com/embed/5FdEX5UXxx0"
            frameborder="0"
            allowfullscreen
          />
        </div>
        <div>
          <iframe
            title="adChain, programming people"
            width="560"
            height="315"
            src="https://www.youtube.com/embed/26ucqdLZMPw"
            frameborder="0"
            allowfullscreen
          />
        </div>
      </div>
    );
  }
}

export default About;
