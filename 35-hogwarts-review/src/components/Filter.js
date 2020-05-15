import React from 'react';

const Filter = ({ handleSort, toggleGreased, filterGreased }) => {
  return (
    <div>
      <select name="" id="" onChange={(e) => handleSort(e.target.value)}>
        <option value="name">Name</option>
        <option value="weight">Weight</option>
      </select>

      <button onClick={toggleGreased}>
        {filterGreased ? 'Show All Hogs' : 'Show Only Greased'}
      </button>
    </div>
  );
};

export default Filter;
