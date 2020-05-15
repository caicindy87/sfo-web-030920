import React, { Component } from 'react';

import '../App.css';
import Nav from './Nav';
import hogs from '../porkers_data';
import HogContainer from './Hogs/HogContainer';
import Filter from './Filter';
import { sortArrOfObjsByName } from '../utils';

class App extends Component {
  state = {
    allHogs: [],
    hiddenHogs: [],
    filterGreased: false,
    sortBy: 'name',
    showHiddenHogs: false,
  };

  componentDidMount() {
    this.setState({
      allHogs: hogs,
    });
  }

  toggleGreased = () => {
    this.setState((prevState) => ({
      filterGreased: !prevState.filterGreased,
    }));
  };

  handleSort = (type) => {
    this.setState({ sortBy: type });
  };

  filterGreasedHogs = () => {
    if (this.state.filterGreased) {
      return this.state.allHogs.filter((hog) => hog.greased);
    } else {
      return this.state.allHogs;
    }
  };

  handleSortHogs = () => {
    if (this.state.sortBy === 'name') {
      const filteredHogs = this.filterGreasedHogs();

      return sortArrOfObjsByName(filteredHogs);
    } else if (this.state.sortBy === 'weight') {
      return this.filterGreasedHogs().sort((a, b) => a.weight - b.weight);
    }
  };

  hideHog = (hogToHide) => {
    const newHogs = this.state.allHogs.filter((hog) => hog.name !== hogToHide.name);

    this.setState({
      allHogs: newHogs,
      hiddenHogs: [...this.state.hiddenHogs, hogToHide],
    });
  };

  render() {
    return (
      <div className="App">
        <Nav />
        <Filter
          handleSort={this.handleSort}
          toggleGreased={this.toggleGreased}
          filterGreased={this.state.filterGreased}
        />

        <button
          onClick={() => this.setState({ showHiddenHogs: !this.state.showHiddenHogs })}
        >
          {this.state.showHiddenHogs ? 'Show rest of the hogs' : 'Show hidden hogs'}
        </button>

        {this.state.showHiddenHogs ? (
          <HogContainer hogs={this.state.hiddenHogs} hideHog={this.hideHog} />
        ) : (
          <HogContainer hogs={this.handleSortHogs()} hideHog={this.hideHog} />
        )}
      </div>
    );
  }
}

export default App;
