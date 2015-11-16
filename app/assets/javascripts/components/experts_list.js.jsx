var ExpertsList = React.createClass({

  getInitialState: function() {
    return {
      experts: this.props.experts,
      selected_service: this.props.selected_service
    }
  },

  render: function(){
    var selected_service = this.state.selected_service;
    if (selected_service == null) {
      return (
        <div className="container">
          <div className="row">
            <div>
              <h1>Les experts de Loge du 10<sup>ème</sup></h1>
            </div>
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
    }
    else {
      return (
        <div>
          <div className="button-X" onClick={this.handleClick}>X</div>
          <h2>Choississez directement un expert ou demandez-moi de m'en occuper</h2>
          <div className="container">
            <div className="row">
              {this.state.experts.map(function(expert){
                return <ExpertListItem expert={expert} selected_service={selected_service} />;
                })
              }
            </div>
          </div>
        </div>
      )
    }

  },

  handleClick: function(){
    this.setState({experts: this.props.experts, selected_service: null});

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
