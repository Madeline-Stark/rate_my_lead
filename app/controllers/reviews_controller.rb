class ReviewsController < ApplicationController
  def new #nested
    @teacher = Teacher.find_by(id: params[:teacher_id])
    @review = @teacher.reviews.build
  end

  def create #nested
    @teacher = Teacher.find_by(id: params[:teacher_id])
    @review = current_user.reviews.build(review_params)
    if @review.save
      redirect_to review_path(@review)
    else 
      render :new 
    end 
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

  private

  def review_params
    params.require(:review).permit(:teacher_id, :rating, :text)
  end
end
