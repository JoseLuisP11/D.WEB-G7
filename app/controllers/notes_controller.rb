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


private
  # Only allow a list of trusted parameters through.
  def note_params
    params.require(:note).permit(:title, :description)
  end

end
