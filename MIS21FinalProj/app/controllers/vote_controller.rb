class VoteController < ApplicationController
  def show
  end

  def new
  end

  def create
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
