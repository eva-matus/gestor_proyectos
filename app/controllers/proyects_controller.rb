class ProyectsController < ApplicationController
http_basic_authenticate_with name: 'desafiovamoscontodo', password: 'XAHTJEAS23123%23', only: :dashboard

  def index
    @proyect = Proyect.new
    @states = Proyect.states.keys.to_a
  end

  def create
    @proyect = Proyect.create(proyect_params)
  end

  def dashboard
    if params[:state].present?
      @proyects = Proyect.where('state = ?', params[:state])
      else
      @proyects = Proyect.all
    end
  end

  private

  def proyect_params
    params.require(:proyect).permit(:name, :description, :start_on, :end_on, :state)
  end

end
