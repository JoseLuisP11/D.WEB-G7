require 'rails_helper'


describe CollectionsController  do

    # context '#Collection update' do
    #     it 'another user cant update your Collection' do
    #       user = User.create(email: 'juan1', password:'123', password_confirmation:'123')      
    #       session[:user_id] = user.id
    #       collection = user.collections.new(title: 'Collection1')
    #       session.destroy

    #       user2 = User.create(email: 'juan2', password:'123', password_confirmation:'123')      
    #       session[:user_id] = user2.id
    #       user2.collections.update(title: 'Collection2')
        
    #          expect(collection.title).to eq('Collection1')            
    #     end
    #   end


    # context '#Collction update' do
    #     it 'another user cant delete your Collection' do

    #     user = User.create(email: 'juan1', password:'123', password_confirmation:'123')      
    #     session[:user_id] = user.id
    #     collection = user.collection.build(title: 'Note1', description: 'Note description')
    #     session.destroy

    #     user2 = User.create(email: 'juan2', password:'123', password_confirmation:'123')      
    #     session[:user_id] = user2.id
    #     user2.collection.destroy(note)

    #         expect(note.title).to eq('Note1')            
    #     end
    # end

end