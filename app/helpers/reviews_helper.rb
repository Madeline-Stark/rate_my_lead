module ReviewsHelper
    def review_owner?(review)
        current_user == review.user
    end 
end
