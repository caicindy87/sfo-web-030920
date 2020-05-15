import React from 'react';

const HogDetails = ({ hog: { name, weight, specialty, greased } }) => (
  <div>
    <p>Name: {name}</p>
    <p>Weight: {weight}</p>
    <p>Specialty: {specialty}</p>
    <p>{greased ? 'greased' : 'not greased'}</p>
  </div>
);

export default HogDetails;
