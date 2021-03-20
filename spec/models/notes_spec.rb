require 'rails_helper'
require './app/models/note'

describe Note do
  context '#new' do
    it 'should create a note' do
      note = Note.new(title: 'Note Title', description: 'Note description')
      expect(note.title).to eq('Note Title')
    end
  end

  context '#create' do
    it 'should create a note' do
      note = Note.create(title: 'Note Title', description: 'Note description')
      expect(note.title).to eq('Note Title')
    end
  end

  context '#update' do
    it 'should update a note' do
      note = Note.update(title: 'Note Title', description: 'Note description')
      expect(note.title).to eq('Note Title')
    end
  end

  context '#delete' do
    it 'should delete a note' do
      note = Note.delete(title: 'Note Title', description: 'Note description')
      expect(note.title).to eq('Note Title')
    end
  end
  
end
