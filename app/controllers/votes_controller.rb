class VotesController < ApplicationController
  # Create new vote, or change the type of existing vote
  def upsert
    vote_params = params.permit([:is_positive, :coordinator_id, :course_id])
    vote = Vote.find_or_initialize_by(course_id: vote_params[:course_id], coordinator_id: vote_params[:coordinator_id])
    old_value = vote.is_positive;
    vote.is_positive = vote_params[:is_positive]
    vote.save

    redirect_back(fallback_location: courses_path)
    if (vote.is_positive == old_value)
      flash[:danger] = "You can't vote more than once"
    else
      flash[:success] = "Successfully voted"
    end
  end
end
