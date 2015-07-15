class VoteController < ApplicationController
  def show
  end

  def new
  end

  def create
    @vote = Vote.new(vote_params)
      if @user.save
        redirect_to vote_path(@user)
      else
      render 'vote/new'
      end
  end

  def index
    @votes = Vote.all
    @votes.size
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
