class ExpertController < ApplicationController
  def index
    @services = proposed_services(Expert.all)
    @selected_service = params[:service]
    @experts = Expert.joins(:services).uniq.where(services: {name: @selected_service || @services})

  end

  private

  def proposed_services(experts_list)
    services = []
    experts_list.each do |expert|
      expert.services.each do |service|
        services << service.name
      end
    end
  return services.uniq!
  end

end
