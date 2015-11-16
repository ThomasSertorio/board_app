var ExpertsList = React.createClass({

  getInitialState: function() {
    return {
      experts: this.props.experts,
      selected_service: this.props.selected_service
    }
  },

  render: function(){
    var selected_service = this.state.selected_service;
    return (
      <div className="container">
        <div className="row">
          <ExpertSearch services={this.props.services} onSelect={this.handleSelection}/>
        </div>
        <div className="row">
          {this.state.experts.map(function(expert){
            return <ExpertListItem expert={expert} selected_service={selected_service} />;
            })
          }
        </div>
      </div>
    )
  },

  handleSelection: function(choice){
    var that = this;
    $.ajax({
      dataType: 'json',
      url: Routes.expert_index_path(),
      data: {service: choice},
      success: function(data){
        that.setState({experts: data.experts, selected_service: data.selected_service});
      }
    });

  }


})
