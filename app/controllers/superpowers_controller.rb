class SuperpowersController < ApplicationController

  def index
    @superpowers = Superpower.all
  end

  def show
    @superpower = Superpower.find(params[:id])
    @women_that_have_this = Woman.where(id: @superpower.woman_id)
  end

  def new
    @superpower = Superpower.new
    render :new
  end

  def create
    superpower = Superpower.create(superpower_params)
    # redirect_to superpower_path(superpower)
    redirect_to woman_path(superpower.woman_id)
  end

  def edit
    @superpower = Superpower.find(params[:id])
  end

  def update
    superpower = Superpower.find(params[:id])
    superpower.update(superpower_params)
    redirect_to superpower_path(superpower)
  end

  def destroy
    superpower = Superpower.find(params[:id])
    superpower.destroy
    redirect_to superpowers_path
  end

  private

  def superpower_params
    params.require(:superpower).permit(:name, :seen_before?, :woman_id)
  end

end
