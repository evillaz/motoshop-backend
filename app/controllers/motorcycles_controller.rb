class MotorcyclesController < ApplicationController
  def index
    motorcycles = Motorcycle.all
    render json: motorcycles
  end

  def show
    motorcycle = Motorcycle.find(params[:id])
    render json: motorcycle
  end

  def create
    motorcycle = Motorcycle.new(motorcycle_params)
    if motorcycle.save
      render json: motorcycle, status: :created
    else
      render json: motorcycle.errors, status: :unprocessable_entity
    end
  end

  private
  def motorcycle_params
    params.require(:motorcycle).permit(:factura, :modelo, :marca, :color, :numero_de_chasis, :numero_de_motor, :dua, :anio)
  end
end

