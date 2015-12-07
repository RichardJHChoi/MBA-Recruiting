class RecruitersController < ApplicationController
  def index
    @recruiters = Recruiter.all
  end

  def show
    @recruiter = Recruiter.find(params[:id])
  end

  def new
    @recruiter = Recruiter.new
    @corporate = Corporate.all
    @school = School.all
  end

  def create
    @recruiter = Recruiter.new
    @recruiter.rec_name = params[:rec_name]
    @recruiter.rec_corp = params[:rec_corp]
    @recruiter.rec_school = params[:rec_school]
    @recruiter.rec_email = params[:rec_email]
    @recruiter.rec_mobile = params[:rec_mobile]
    @recruiter.rec_phone = params[:rec_phone]
    @recruiter.user_id = current_user.id

    if @recruiter.save
      redirect_to "/recruiters", :notice => "Recruiter created successfully."
    else
      @corporate = Corporate.all
      @school = School.all
      render 'new'
    end
  end

  def edit
    @recruiter = Recruiter.find(params[:id])
    @corporate = Corporate.all
    @school = School.all
  end

  def update
    @recruiter = Recruiter.find(params[:id])

    @recruiter.rec_name = params[:rec_name]
    @recruiter.rec_corp = params[:rec_corp]
    @recruiter.rec_school = params[:rec_school]
    @recruiter.rec_email = params[:rec_email]
    @recruiter.rec_mobile = params[:rec_mobile]
    @recruiter.rec_phone = params[:rec_phone]

    if @recruiter.save
      redirect_to "/recruiters", :notice => "Recruiter updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @recruiter = Recruiter.find(params[:id])

    @recruiter.destroy

    redirect_to "/recruiters", :notice => "Recruiter deleted."
  end
end
