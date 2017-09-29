class HistoriesController < ApplicationController
  def index
    @histories = current_user.histories.page(params[:page]).per Settings.paginate_max
  end
end
