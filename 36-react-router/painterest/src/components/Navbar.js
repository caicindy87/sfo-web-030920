import React from 'react';

const Navbar = (props) => {
  return (
    <div className={`ui top fixed inverted ${props.color} menu`}>
      <a className="item">
        <h2 className="ui header">
          <i className={`${props.icon} icon`} />
          <div className="content">{props.title}</div>
          <div className="sub header">{props.description}</div>
        </h2>
      </a>
      <div className="right menu">
        <a className="item">index</a>
        <a className="item">new</a>
        <a className="item">
          <div className="ui primary button">Sign In</div>
        </a>
      </div>
    </div>
  );
};

export default Navbar;
