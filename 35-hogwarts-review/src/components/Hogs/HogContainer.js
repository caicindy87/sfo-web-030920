import React, { Component } from 'react';

import HogCard from './HogCard';

const HogContainer = ({ hogs, hideHog }) => (
  <div className="ui three stackable cards" style={{ marginTop: '30px' }}>
    {hogs.map((hog) => (
      <HogCard key={hog.name} hog={hog} hideHog={hideHog} />
    ))}
  </div>
);

export default HogContainer;
