class IndustryController < ApplicationController
  def index
    @industry = Industry.all
  end

  def show
    @industry = Industry.find(params[:id])
  end

  def new
    @industry = Industry.new
  end

  def create
    @industry = Industry.new
    @industry.industry_name = params[:industry_name]

    if @industry.save
      redirect_to "/industry", :notice => "Industry created successfully."
    else
      render 'new'
    end
  end

  def edit
    @industry = Industry.find(params[:id])
  end

  def update
    @industry = Industry.find(params[:id])

    @industry.industry_name = params[:industry_name]

    if @industry.save
      redirect_to "/industry", :notice => "Industry updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @industry = Industry.find(params[:id])

    @industry.destroy

    redirect_to "/industry", :notice => "Industry deleted."
  end
end
