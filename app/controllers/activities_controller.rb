class ActivitiesController < ApplicationController
  before_action :authorize
  def index
    @activities = PublicActivity::Activity.order('created_at DESC')
  end
  def show
  end
end
