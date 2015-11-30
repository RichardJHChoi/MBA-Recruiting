class CorporatesController < ApplicationController
  def index
    @corporates = Corporate.all
  end

  def show
    @corporate = Corporate.find(params[:id])
  end

  def new
    @corporate = Corporate.new
  end

  def create
    @corporate = Corporate.new
    @corporate.corp_name = params[:corp_name]
    @corporate.corp_ind = params[:corp_ind]
    @corporate.corp_reg = params[:corp_reg]

    if @corporate.save
      redirect_to "/corporates", :notice => "Corporate created successfully."
    else
      render 'new'
    end
  end

  def edit
    @corporate = Corporate.find(params[:id])
  end

  def update
    @corporate = Corporate.find(params[:id])

    @corporate.corp_name = params[:corp_name]
    @corporate.corp_ind = params[:corp_ind]
    @corporate.corp_reg = params[:corp_reg]

    if @corporate.save
      redirect_to "/corporates", :notice => "Corporate updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @corporate = Corporate.find(params[:id])

    @corporate.destroy

    redirect_to "/corporates", :notice => "Corporate deleted."
  end
end
