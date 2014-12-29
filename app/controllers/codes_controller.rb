class CodesController < ApplicationController

  def new
    @code = Code.new
  end

  def index
    @code = Code.find(:all)
  end

  def create
    @code = Code.new(code_params)

    if @code.save
      redirect_to @code, notice: "Code was successfully created."
    else
      render action: 'new'
    end
  end

  private

  def code_params
    params.require(:code).permit(:number, :category, :rvu)
  end

end