import React from 'react';

import DeleteablePainting from './DeleteablePainting';

const PaintingsList = (props) => {
  console.log(props);
  const items = props.paintings.map((pntg) => (
    <DeleteablePainting
      key={pntg.id}
      painting={pntg}
      handleVote={props.handleVote}
      handleDelete={props.handleDelete}
    />
  ));
  return (
    <div>
      <h1>All Paintings</h1>
      <div className="ui unstackable items">{props.items}</div>
    </div>
  );
};

export default PaintingsList;
