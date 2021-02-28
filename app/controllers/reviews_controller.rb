class ReviewsController < ApplicationController
  def new #nested
  end

  def create #nested

  end 

  def show
  end

  def index #nested
    @teacher = Teacher.find_by(id: params[:teacher_id])
    @reviews = @teacher.reviews
  end

  def edit
  end

  def update

  end 

  def destroy 

  end 
end
