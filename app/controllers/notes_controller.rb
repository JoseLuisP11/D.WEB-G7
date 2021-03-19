class NotesController < ApplicationController
  def index
  end

  def edit
  end

  def show
  end

  # GET /notes/new
  def new
    @note = Note.new
  end
end
