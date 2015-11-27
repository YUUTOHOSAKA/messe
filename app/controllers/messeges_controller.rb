class MessegesController < ApplicationController
  def index
  @messeges = Messege.all
  end

  def edit
  end

  def create
    if @messege = Messege.new(messege_params)
       @messege.save
       redirect_to root_path, notice: '投稿しました。'
    else
      # メッセージが保存できなかった時
      @messeges = Message.all
      flash.now[:alert] = "メッセージの保存に失敗しました。"
      flash.now[:alert] = "投稿失敗です。"
      render 'index'
    end
  end

  def destroy
  end

  private
  def messege_params
    params.require(:messege).permit(:name, :body)
  end
  ## ここまで
end

