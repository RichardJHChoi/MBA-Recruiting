class InteractionsController < ApplicationController
  def index
    @interactions = Interaction.all
  end

  def show
    @interaction = Interaction.find(params[:id])
  end

  def new
    @interaction = Interaction.new
  end

  def create
    @interaction = Interaction.new
    @interaction.user_id = params[:user_id]
    @interaction.rec_id = params[:rec_id]
    @interaction.school_affinity = params[:school_affinity]
    @interaction.user_comment = params[:user_comment]
    @interaction.int_type = params[:int_type]
    @interaction.int_score = params[:int_score]

    if @interaction.save
      redirect_to "/interactions", :notice => "Interaction created successfully."
    else
      render 'new'
    end
  end

  def edit
    @interaction = Interaction.find(params[:id])
  end

  def update
    @interaction = Interaction.find(params[:id])

    @interaction.user_id = params[:user_id]
    @interaction.rec_id = params[:rec_id]
    @interaction.school_affinity = params[:school_affinity]
    @interaction.user_comment = params[:user_comment]
    @interaction.int_type = params[:int_type]
    @interaction.int_score = params[:int_score]

    if @interaction.save
      redirect_to "/interactions", :notice => "Interaction updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @interaction = Interaction.find(params[:id])

    @interaction.destroy

    redirect_to "/interactions", :notice => "Interaction deleted."
  end
end
