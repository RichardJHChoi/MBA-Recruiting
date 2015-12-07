class UserNotesController < ApplicationController
  def index
    @user_notes = UserNote.all
  end

  def show
    @user_note = UserNote.find(params[:id])

    if current_user.user_school == @user_note.interaction.recruiter.rec_school
        @school_affinity = true
      else
        @school_affinity = false
    end
    @note_template.where("interaction_type=? AND school_affinity=? AND min_score<=? AND max_score>=?",
      @user_note.interaction.interaction_type, @school_affinity , @user_note.interaction.int_score, @user_note.interaction.int_score)
  end

  def new
    @user_note = UserNote.new
  end

  def create
    @user_note = UserNote.new
    @user_note.user_id = params[:user_id]
    @user_note.interaction_id = params[:interaction_id]
    @user_note.note_template_id = params[:note_template_id]

    if @user_note.save
      redirect_to "/user_notes", :notice => "User note created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user_note = UserNote.find(params[:id])
  end

  def update
    @user_note = UserNote.find(params[:id])

    @user_note.user_id = params[:user_id]
    @user_note.interaction_id = params[:interaction_id]
    @user_note.note_template_id = params[:note_template_id]

    if @user_note.save
      redirect_to "/user_notes", :notice => "User note updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user_note = UserNote.find(params[:id])

    @user_note.destroy

    redirect_to "/user_notes", :notice => "User note deleted."
  end
end
