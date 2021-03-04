class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create 
    @teacher = current_user.created_teachers.build(teacher_params)
    if @teacher.save
      redirect_to teacher_path(@teacher)
    else 
      render :new 
    end 
  end 

  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find_by(id: params[:id])
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name, :location, :profile_picture)
  end
end
