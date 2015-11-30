class InteractionTypesController < ApplicationController
  def index
    @interaction_types = InteractionType.all
  end

  def show
    @interaction_type = InteractionType.find(params[:id])
  end

  def new
    @interaction_type = InteractionType.new
  end

  def create
    @interaction_type = InteractionType.new
    @interaction_type.int_type = params[:int_type]

    if @interaction_type.save
      redirect_to "/interaction_types", :notice => "Interaction type created successfully."
    else
      render 'new'
    end
  end

  def edit
    @interaction_type = InteractionType.find(params[:id])
  end

  def update
    @interaction_type = InteractionType.find(params[:id])

    @interaction_type.int_type = params[:int_type]

    if @interaction_type.save
      redirect_to "/interaction_types", :notice => "Interaction type updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @interaction_type = InteractionType.find(params[:id])

    @interaction_type.destroy

    redirect_to "/interaction_types", :notice => "Interaction type deleted."
  end
end
