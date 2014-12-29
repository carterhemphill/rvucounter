class CodesController < ApplicationController

  def index
    @code = Code.new
    @allCodes = Code.all
  end

  def create
    @code = Code.new(code_params)

    if @code.save
      redirect_to codes_path, notice: "Code was successfully created."
    else
      render action: 'index'
    end
  end

  def edit
    @code = Code.find(params[:id])
  end

  def update
    @code = Code.find(params[:id])    

    if @code.update_attributes(code_params)
      redirect_to codes_path, notice: "Code was successfully updated."
    else
      render action: 'index'
    end
  end

  def destroy
    @code = Code.find(params[:id])
    @code.destroy
    redirect_to codes_path
  end

  def for_category
    @codes_for_category = Code.where("category = ?", params[:code_category])

    respond_to do |format|
      format.json { render json: @codes_for_category.to_json(:only => [:category, :number, :rvu]) }
    end
  end
  
  private

  def code_params
    params.require(:code).permit(:number, :category, :rvu)
  end

end