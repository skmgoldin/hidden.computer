import React, { Component } from "react";
import "./Header.css";
import { NavLink } from "react-router-dom";

class Header extends Component {
  render() {
    return (
      <div className="header">
        <h1>$ Mike Goldin</h1>
        <h2>software developer in New York City</h2>
        <h3>
          <NavLink className="navlink" to="/code">
            Code
          </NavLink>
          <NavLink className="navlink" to="/papers">
            Papers
          </NavLink>
          <NavLink className="navlink" to="/about">
            About
          </NavLink>
        </h3>
      </div>
    );
  }
}

export default Header;
