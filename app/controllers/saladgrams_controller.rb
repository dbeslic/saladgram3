class SaladgramsController < ApplicationController
  def index
    @saladgrams = Saladgram.all
  end

  def show
    @saladgram = Saladgram.find(params[:id])
  end

  def new
    @saladgram = Saladgram.new
  end

  def create
    @saladgram = Saladgram.new

    @saladgram.user_id = params[:user_id]

    @saladgram.chat_id = params[:chat_id]

    @saladgram.photo_url = params[:photo_url]

    @saladgram.caption = params[:caption]



    if @saladgram.save
      redirect_to "/saladgrams", :notice => "Saladgram created successfully."
    else
      render 'new'
    end

  end

  def edit
    @saladgram = Saladgram.find(params[:id])
  end

  def update
    @saladgram = Saladgram.find(params[:id])


    @saladgram.user_id = params[:user_id]

    @saladgram.chat_id = params[:chat_id]

    @saladgram.photo_url = params[:photo_url]

    @saladgram.caption = params[:caption]



    if @saladgram.save
      redirect_to "/saladgrams", :notice => "Saladgram updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @saladgram = Saladgram.find(params[:id])

    @saladgram.destroy


    redirect_to "/saladgrams", :notice => "Saladgram deleted."

  end
end
