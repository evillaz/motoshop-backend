class Api::V1::MotorcyclesController < ApplicationController
  before_action :set_motorcycle, only: [:update_attribute]

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

  def update_attribute
    attribute = params[:attribute]
    value = params[:value]

    if @motorcycle.respond_to?(attribute) && @motorcycle.update(attribute => value)
      render json: @motorcycle, status: :ok
    else
      render json: { error: 'Invalid attribute or update failed' }, status: :unprocessable_entity
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
    params.require(:motorcycle).permit(:factura, :modelo, :marca, :color, :numero_de_chasis, :numero_de_motor, :dua, :anio, :fecha_emision, :importe)
  end

  def set_motorcycle
    @motorcycle = Motorcycle.find(params[:id])
  end
end



