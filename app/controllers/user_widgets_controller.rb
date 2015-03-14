class UserWidgetsController < ApplicationController
  before_action :set_widget, only: [:edit, :update, :destroy]
  
  def show
  end

  def edit    
  end

  def update
    respond_to do |format|      
      if @user_widget.update(widget_params) && is_valid_json?(widget_params[:config])
        format.html { redirect_to @user_widget, notice: 'User Widget was successfully modified.' }
      else
        format.html { redirect_to edit_user_widget_path(@user_widget), notice: 'Invalid JSON configuration.' }
      end
    end
  end

  def destroy
  end

  private
  def set_widget
      @user_widget = UserWidget.find(params[:id])
  end

  def widget_params
      params.require(:user_widget).permit(:name, :config, :color)
  end

  def is_valid_json?(json)
    begin
      !!JSON.parse(json)
    rescue
      false
    end
  end
end
