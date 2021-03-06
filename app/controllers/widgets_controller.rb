class WidgetsController < ApplicationController
  before_action :set_widget, only: [:show, :edit, :update, :destroy, :subscribe, :unsubscribe]  

  def index
  end

  def show    
  end

  def new
  	@widget = Widget.new
  end

  def create
    @widget = Widget.new(widget_params)
    
    respond_to do |format|
      if @widget.save
        format.html { redirect_to @widget, notice: 'Widget was successfully created.' }
      else
        format.html { render :new }
      end
    end

  end

  def edit
  end

  def update
    respond_to do |format|
      if @widget.update(widget_params)
        format.html { redirect_to @widget, notice: 'Widget was successfully modified.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
      respond_to do |format|
        format.html { redirect_to widgets_path, notice: 'Widget was successfully deleted.' }        
      end
  end

  def subscribe
    current_user.widgets << @widget    
    respond_to do |format|
        format.json {render json: {message: 'Subscribed successfully'}}
    end
  end

  def unsubscribe
    current_user.widgets.destroy(@widget)
    respond_to do |format|
        format.json {render json: {message: 'Unsubscribed successfully'}}
    end
  end

  private
    def set_widget
        @widget = Widget.find(params[:id])
    end

    def widget_params
        params.require(:widget).permit(:name, :config)
    end
end
