class DraftEventsController < ApplicationController
  before_action :set_draft_event, only: [:show, :edit, :update, :destroy]

  # GET /draft_events
  # GET /draft_events.json
  def index
    @draft_events = DraftEvent.all
  end

  # GET /draft_events/1
  # GET /draft_events/1.json
  def show
  end

  # GET /draft_events/new
  def new
    @draft_event = DraftEvent.new
  end

  # GET /draft_events/1/edit
  def edit
  end

  def make_schedule
  end

  # POST /draft_events
  # POST /draft_events.json
  def create
    @draft_event = DraftEvent.new(draft_event_params)

    respond_to do |format|
      if @draft_event.save
        format.html { redirect_to @draft_event, notice: 'Draft event was successfully created.' }
        format.json { render :show, status: :created, location: @draft_event }
      else
        format.html { render :new }
        format.json { render json: @draft_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /draft_events/1
  # PATCH/PUT /draft_events/1.json
  def update
    respond_to do |format|
      if @draft_event.update(draft_event_params)
        format.html { redirect_to @draft_event, notice: 'Draft event was successfully updated.' }
        format.json { render :show, status: :ok, location: @draft_event }
      else
        format.html { render :edit }
        format.json { render json: @draft_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /draft_events/1
  # DELETE /draft_events/1.json
  def destroy
    @draft_event.destroy
    respond_to do |format|
      format.html { redirect_to draft_events_url, notice: 'Draft event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_draft_event
      @draft_event = DraftEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def draft_event_params
      params.require(:draft_event).permit(:destination_id, :due_date, :event_id)
    end
end
