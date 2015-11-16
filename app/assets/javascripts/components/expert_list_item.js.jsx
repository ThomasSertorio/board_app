var ExpertListItem = React.createClass({

  render: function() {


    var expert_id = this.props.expert.id;
    var service_selected = (this.props.selected_service != null) ? this.props.selected_service : null;
    if (service_selected) {
      return (
        <div className="col-xs-12 col-sm-6 col-md-3">
          <div className="expert_card">
            <img src={this.props.expert.avatar_url} className="expert_card-avatar" alt={this.props.expert.name} />
            <h2>{this.props.expert.name}</h2>
            <p>{this.props.expert.tagline}</p>
            <div className="expert_card-services_tags">
              {this.props.expert.services.map(function(service){
                return <div className={(service.name == service_selected) ? "expert_card-services_tags-tag expert_card-services_tags-tag-selected" : "expert_card-services_tags-tag"}>{service.name}</div>;
                })
              }
            </div>
            <div className="expert_card-info"><p>Tarif </p>{this.props.expert.selected_service.cost}</div>
            <a href={Routes.expert_path(expert_id, {service_selected})}>En savoir +</a>
          </div>
        </div>
      );
    }
    else {
      return (
        <div className="col-xs-12 col-sm-6 col-md-3">
          <div className="expert_card">
            <img src={this.props.expert.avatar_url} className="expert_card-avatar" alt={this.props.expert.name} />
            <h2>{this.props.expert.name}</h2>
            <p>{this.props.expert.tagline}</p>
            <div className="expert_card-services_tags">
              {this.props.expert.services.map(function(service){
                return <div className="expert_card-services_tags-tag">{service.name}</div>;
                })
              }
            </div>
            <div className="expert_card-info">{this.props.expert.description}</div>
            <a href={Routes.expert_path(expert_id)} >En savoir +</a>
          </div>
        </div>
      );
    }
  },




});
