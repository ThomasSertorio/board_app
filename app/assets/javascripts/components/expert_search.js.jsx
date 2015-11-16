var ExpertSearch = React.createClass({

  render: function(){
    return(
      <div className="search">
        <p>Choisissez votre catégorie de service:
          <select id="services_list" onChange={this.handleSelect}>
            <option disabled selected>Ex: Babysitting, Check-in AirbnB, bricolahe, etc.</option>
            {this.props.services.map(function(service){
              return <option value={service}>{service}</option>
            })}
          </select>
        </p>
      </div>

    )

  },

  handleSelect: function(){
    var select = document.getElementById("services_list");
    var choice = select.options[select.selectedIndex].value;
    this.props.onSelect(choice);
  }




})
