class ShowsController < ApplicationController
  protect_from_forgery prepend: true # Look into deleting after we add user auth.
  before_action :get_show, only: [:edit, :update, :destroy]

  def index
    @upcoming = Show.upcoming.order(:show_date)
    @past = Show.past.order(show_date: :desc)
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      redirect_to shows_path
    else
      flash[:errors] = @show.errors.full_messages
      render :new
    end
  end

  def edit

  end

  def update
    if @show.update(show_params)
      redirect_to shows_path
    else
      flash[:errors] = @show.errors.full_messages
      render :edit
    end
  end

  def destroy
    @show.destroy
    redirect_to shows_path
  end

  private
  def show_params
    params.require(:show).permit(:venue, :presale_link, :supporting_acts, :show_time, :show_date)
  end

  def get_show
    @show=Show.find(params[:id])
  end
end