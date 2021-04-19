require 'rails_helper'
require './app/models/note'


describe Note do
  context '#new' do
    it 'should create a note' do
      noteE = Note.create(title: 'Note Title', description: 'Note description')
      last_note = Note.find_by(title: 'Note Title')
      expect(last_note.title).to eq(noteE.title)
    end
  end


end
