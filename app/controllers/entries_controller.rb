class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(
      title: params[:entry][:title],
      body: params[:entry][:body])
    @entry.save
    redirect_to entry_path(@entry)
  end
end
