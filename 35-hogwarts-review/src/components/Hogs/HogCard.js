import React, { Component, Fragment } from 'react';
import HogDetails from './HogDetails';

class HogCard extends Component {
  state = {
    showDetails: false,
  };

  imageSrc = () => {
    const { name } = this.props.hog;

    const slug = name.split(' ').join('_').toLowerCase();
    return require(`../../hog-imgs/${slug}.jpg`);
  };

  handleDetailsClick = () => {
    this.setState((prevState) => ({
      showDetails: !prevState.showDetails,
    }));
  };

  render() {
    const {
      hog,
      hog: { name },
    } = this.props;

    return (
      <div
        className="ui card eight wide column pigTile"
        onClick={this.handleDetailsClick}
      >
        {this.state.showDetails ? (
          <HogDetails hog={hog} />
        ) : (
          <Fragment>
            <img src={this.imageSrc()} alt="" />
            <h3>{name}</h3>
            <button onClick={() => this.props.hideHog(hog)}>Hide This Hog</button>
          </Fragment>
        )}
      </div>
    );
  }
}

export default HogCard;
