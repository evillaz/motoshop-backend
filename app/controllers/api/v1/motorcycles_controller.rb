class Api::V1::MotorcyclesController < ApplicationController
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

  def destroy
    motorcycle = Motorcycle.find_by(factura: params[:id])
    motorcycle.destroy # Delete the record
    render json: { message: 'Motorcycle deleted successfully' }, status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Motorcycle not found' }, status: :not_found
  end

  private
  def motorcycle_params
    params.require(:motorcycle).permit(:factura, :modelo, :marca, :color, :numero_de_chasis, :numero_de_motor, :dua, :anio)
  end
end

