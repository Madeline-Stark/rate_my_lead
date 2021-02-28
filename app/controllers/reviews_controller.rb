class ReviewsController < ApplicationController
  include ReviewsHelper

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
    @review = Review.find_by(id: params[:id])
  end

  def index #nested
    @teacher = Teacher.find_by(id: params[:teacher_id])
    @reviews = @teacher.reviews
  end

  def edit
    @review = Review.find_by(id: params[:id])
    if !review_owner?(@review)
      flash[:message] = "Not your review!"
      redirect_to review_path(@review)
    end 
  end

  def update
    @review = Review.find_by(id: params[:id])
    @review.update(review_params)
    redirect_to review_path(@review)
  end 

  def destroy 
    @review = Review.find_by(id: params[:id])
    @review.destroy
    redirect_to teachers_path
  end 

  private

  def review_params
    params.require(:review).permit(:teacher_id, :rating, :text)
  end
end
