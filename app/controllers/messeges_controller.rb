class MessegesController < ApplicationController
  before_action :set_message, only: [:edit, :update, :destroy]
  
  def index
  @messeges = Messege.all
  @messege = Messege.new
  end

  def edit
  end

  def update
    if@messege.update(messege_params)
      redirect_to root_path, notice: 'メッセージを編集しました。'
    else
      render'edit'
    end
  end
  
  def create
    @messege = Messege.new(messege_params)
    if @messege.save
      redirect_to root_path , notice: 'メッセージを保存しました'
    else
      # メッセージが保存できなかった時
      @messeges = Messege.all
      flash.now[:alert] = "メッセージの保存に失敗しました。"
      render 'index'
    end
  end

  def destroy
    @messege.destroy
    redirect_to root_path, notice: 'メッセージを削除しました'
  end

  private
  def messege_params
    params.require(:messege).permit(:name, :body, :age)
  end
  
  def set_message
    @messege = Messege.find(params[:id])
  end
end

