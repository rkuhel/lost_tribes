class EventsController < ApplicationController 

before_filter :ensure_admin, only: [ :destroy]

  def index
    @events = Event.all
  end

  def create
    event = Event.create(params['event'])
    if event.save!
      redirect_to events_path
    else
      redirect_to new_event_path
    end
  end

   def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def show
    @event = Event.find(params[:id])
  end

  def update
    event = Event.find(params[:id])

    if event.update_attributes(params[:event])
      redirect_to events_path
    else
      redirect_to edit_events_path 
    end
  end
  
  def destroy
    Event.find(params[:id]).delete
    redirect_to events_path
  end

end 

