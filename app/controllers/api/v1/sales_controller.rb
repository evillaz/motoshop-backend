class Api::V1::SalesController < ApplicationController
  before_action :set_sale, only: [:show, :update, :destroy, :update_boleta]

  # GET /sales
  def index
    @sales = Sale.includes(:titulo, :placa, :motorcycle, :customer).all

    render json: @sales
  end

  # GET /sales/:id
  def show
    render json: @sale
  end

  # POST /sales
  def create
    # Find motorcycle and customer using the factura and dni
    motorcycle = Motorcycle.find_by(factura: sale_params[:factura])
    customer = Customer.find_by(dni: sale_params[:dni])

    if motorcycle.nil? || customer.nil?
      return render json: { error: 'Motorcycle or Customer not found' }, status: :unprocessable_entity
    end

    @sale = Sale.new(sale_params)
    @sale.motorcycle = motorcycle
    @sale.customer = customer

    if @sale.save
      render json: @sale, status: :created
    else
      render json: @sale.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sales/:id
  def update
    if @sale.update(sale_params)
      render json: @sale
    else
      render json: @sale.errors, status: :unprocessable_entity
    end
  end

  def update_boleta
    if @sale.update(boleta: params[:boleta])
      render json: @sale
    else
      render json: @sale.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sales/:id
  def destroy
    @sale.destroy
    head :no_content
  end

  private

  # Set sale by finding it by factura (to match the Motorcycle relationship)
  def set_sale
    @sale = Sale.find(params[:id])
  end

  # Strong parameters for sale creation and updating
  def sale_params
    params.require(:sale).permit(:factura, :dni, :total_amount)
  end
end