var ExpertListItem = React.createClass({

  render: function() {
    return (
      <div className="col-xs-12 col-sm-6 col-md-3">
        <div className="expert_card">
          <img src={this.props.expert.avatar_url} className="expert_card-avatar" alt={this.props.expert.name} />
          <h2>{this.props.expert.name}</h2>
          <p>{this.props.expert.tagline}</p>
          {/**/}

          <div className="expert_card-services_tags">
            {this.props.expert.services.map(function(service){
              return <div className="expert_card-services_tags-tag">{service.name}</div>;
              })
            }
          </div>

          <div className="expert_card-info">{this.props.expert.description}</div>
        </div>
      </div>
    );
  }
});
