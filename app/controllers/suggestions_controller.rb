class SuggestionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @results = Suggestions::SuggestionsIndex.new.suggestions_index(category: params[:category],
                                                                   sort: params[:column_sort])
    authorize @results.feedbacks
  end

  def show
    @feedback = Feedback.find(params[:id])
    authorize @feedback
  end
end
