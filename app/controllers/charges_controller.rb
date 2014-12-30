class ChargesController < ApplicationController

  def new
    @charge = Charge.new
    @codes = Code.all
  end

  def show
    @charge = Charge.find(params[:id])
  end

  def index
    @charges = Charge.all
  end

  def create
    @charge = Charge.new(charge_params)
    if @charge.save
      redirect_to @charge, notice: "Charge was successfully created."
    else
      render action: 'new', notice: "There was an error"
    end
  end

  private

  def charge_params
    params.require(:charge).permit(:pan, :code_category, :code_number, :code_rvu, :descriptor)
  end

end