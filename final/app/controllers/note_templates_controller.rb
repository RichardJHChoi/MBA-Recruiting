class NoteTemplatesController < ApplicationController
  def index
    @note_templates = NoteTemplate.all
  end

  def show
    @note_template = NoteTemplate.find(params[:id])
  end

  def new
    @note_template = NoteTemplate.new
  end

  def create
    @note_template = NoteTemplate.new
    @note_template.interaction_type = params[:interaction_type]
    @note_template.school_affinity = params[:school_affinity]
    @note_template.min_score = params[:min_score]
    @note_template.max_score = params[:max_score]

    if @note_template.save
      redirect_to "/note_templates", :notice => "Note template created successfully."
    else
      render 'new'
    end
  end

  def edit
    @note_template = NoteTemplate.find(params[:id])
  end

  def update
    @note_template = NoteTemplate.find(params[:id])

    @note_template.interaction_type = params[:interaction_type]
    @note_template.school_affinity = params[:school_affinity]
    @note_template.min_score = params[:min_score]
    @note_template.max_score = params[:max_score]

    if @note_template.save
      redirect_to "/note_templates", :notice => "Note template updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @note_template = NoteTemplate.find(params[:id])

    @note_template.destroy

    redirect_to "/note_templates", :notice => "Note template deleted."
  end
end
