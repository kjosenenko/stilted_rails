class ShowsController < ApplicationController
  def index
    @shows = Show.current
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.create(show_params)
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def show_params
    params.require(:show).permit(:venue, :presale_link, :has_presale, :supporting_acts, :show_time, :show_date)
  end
end