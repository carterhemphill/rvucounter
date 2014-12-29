class ChargesController < ApplicationController

  def new
    @charge = Charge.new
  end

  def show
    @charge = Charge.find(params[:id])
  end

  def create
    @charge = Charge.new(charge_params)

    if @charge.save
      redirect_to @charge, notice: "Charge was successfully created."
    else
      render action: 'new'
    end
  end

  private

  def charge_params
    params.require(:charge).permit(:pan, :code)
  end

end