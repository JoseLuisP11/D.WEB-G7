require 'rails_helper'


describe NotesController  do
context '#Note update' do
    it 'another user cant update your note' do
      user = User.create(email: 'juan1', password:'123', password_confirmation:'123')      
      session[:user_id] = user.id
      note = user.notes.build(title: 'Note Title', description: 'Note description')
      session.destroy

      user2 = User.create(email: 'juan2', password:'123', password_confirmation:'123')      
      session[:user_id] = user2.id
      user2.notes.update(title: 'Note2', description: 'Note description')
         expect(note.title).to eq('Note Title')            
    end
  end

  context '#Note delete' do
    it 'another user cant delete your note' do
      user = User.create(email: 'juan1', password:'123', password_confirmation:'123')      
      session[:user_id] = user.id
      note = user.notes.build(title: 'Note1', description: 'Note description')
      session.destroy

      user2 = User.create(email: 'juan2', password:'123', password_confirmation:'123')      
      session[:user_id] = user2.id
      user2.notes.destroy(note)

         expect(note.title).to eq('Note1')            
    end
  end


  # context '#Note update' do
  #   it 'another user cant update your note' do

  #     user = User.create(email: 'juan1', password:'123', password_confirmation:'123')      
  #     session[:user_id] = user.id
  #     note = user.notes.build(title: 'Note1', description: 'Note description')
  #     session.destroy

  #   user.notes.update(title: 'Note2', description: 'Note description 2')
   
  #   #   note = Note.create(title: 'Note Title', description: 'Note description')
  #   #   note.destroy
  #     #  expect(session[:user_id]).to eq(1)
  #         # expect(user2.id).to eq(2)
  #       # expect(note.user_id).to eq(1)
  #       expect(note.title).to eq('Note1')
             
  #   end
  # end



end