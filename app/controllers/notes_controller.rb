class NotesController < ApplicationController
  before_action :set_note, only: %i[ show edit update destroy ]
  
  def index
    @notes = Note.all 
  end

  def edit; end

  def show; end

  # GET /notes/new
  def new
    @note = Note.new
  end

  # POST /notes or /notes.json
  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to @note
    else
      render :new
    end
  end

  # PATCH/PUT /notes/1 or /notes/1.json
  def update
    if @note.update(note_params)
      redirect_to @note
    else
      render :edit
    end
  end

  # DELETE /notes/1 or /notes/1.json
  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    redirect_to @note
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_note
    @note = Note.find(params[:id])
  end
  # Only allow a list of trusted parameters through.
  def note_params
    params.require(:note).permit(:title, :description, :image)
  end
end
