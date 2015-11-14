var ExpertsList = React.createClass({

  render: function(){
    return (
      <div className="container">
        <div className="row">
          {this.props.experts.map(function(expert){
            return <ExpertListItem expert={expert} />;
            })
          }
        </div>
      </div>
    )
  }

})
