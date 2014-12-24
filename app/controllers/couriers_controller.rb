# Controller for Couriers
class CouriersController < ApplicationController

  before_action :require_user

  def index
    @runners = Runner.order("created_at desc")
    @runner = Runner.new
  end

  def new
    @runner = Runner.new
  end

  def create
    @runner = Runner.new(runner_params) # {:first_name => "bla", :last_name => "bla"}
    @runner.save
      #redirect_to runners_path # "/couriers"
    #else
      #render :new
    #end
  end

  def edit
    @runner = Runner.find(params[:id])
  end

  def update
    @runner = Runner.find(params[:id])
    if @runner.update_attributes(runner_params)
      redirect_to runners_path
    else
      render :edit
    end
  end

  def show
    @runner = Runner.find(params[:id])
  end

  protected

  def runner_params
    params.require(:runner).permit! # params[:runner]
  end

end
