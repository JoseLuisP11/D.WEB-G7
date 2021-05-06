require 'rails_helper'
require './app/models/user'

# params.require(:user).permit(:email, :password, :password_confirmation)

describe User, :type => :request  do
  context '#new' do
    it ' should create a user' do
      user = User.new(email: 'juan2', password:'123', password_confirmation:'123')
      expect(user.email).to eq('juan2')
    end
  end

  context '#create' do
    it 'should create a user' do
      user = User.new(email: 'juan2', password:'123', password_confirmation:'123')
      expect(user.email).to eq('juan2')
    end
  end

  context '#update' do
    it ' should update a user' do
      user = User.create(email: 'juan1', password:'123', password_confirmation:'123')
      user.update(email:'juan2',password:'123', password_confirmation:'123')
      expect(user.email).to eq('juan2')
    end
  end

  context '#delete' do
    it 'should delete a note' do
      note = Note.create(title: 'Note Title', description: 'Note description')
      note.destroy
      expect(Note.find_by(id: note.id)).to be_nil
             
    end
  end

end
