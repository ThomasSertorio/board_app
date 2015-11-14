class ExpertController < ApplicationController
  def index
    @experts = Expert.all
  end
end
