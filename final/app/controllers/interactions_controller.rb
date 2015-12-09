class InteractionsController < ApplicationController
  def index
    @interactions = Interaction.all
  end

  def show
    @interaction = Interaction.find(params[:id])
  end

  def new
    @interaction = Interaction.new
    @interaction_types = InteractionType.all
    @corporate = Corporate.all
    @recruiter = current_user.recruiters
    # raise @recruiter.inspect
  end

  def create
    @interaction = Interaction.new
    @interaction.user_id = params[:user_id]
    @interaction.rec_id = params[:rec_id]
    @interaction.school_affinity = params[:school_affinity]
    @interaction.user_comment = params[:user_comment]
    @interaction.int_type = params[:int_type]
    @interaction.int_score = params[:int_score]

    #Helper variable that checks recruiter status. so no instance variable required
    recruiter =  Recruiter.find_by(params[:rec_id])
      if recruiter.rec_school == current_user.user_school
        @interaction.school_affinity = true
      else 
        @interaction.school_affinity = false
      end

  if @interaction.save
      redirect_to "/interactions", :notice => "Interaction created successfully."
    else
      @interaction_types = InteractionType.all
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
