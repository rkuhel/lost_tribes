class EventsController < ApplicationController 


  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    # if @event.update(params[:event]
    #   redirect_to action: :show, id: @event.id
    # else
    #   render 'edit'
    # end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])

    # if @event.save
    #   redirect_to action: :show, id: @event.id
    # else
    #   render 'new'
    # end
  end
  
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to action: :index
  end

end 

