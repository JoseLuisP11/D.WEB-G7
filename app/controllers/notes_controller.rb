class NotesController < ApplicationController
  def index; end

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

    redirect_to root_path
  end

  private

  # Only allow a list of trusted parameters through.
  def note_params
    params.require(:note).permit(:title, :description)
  end
end
