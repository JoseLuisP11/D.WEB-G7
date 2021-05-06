require 'rails_helper'
require './app/models/collection'


describe Collection, :type => :request do
  context '#new' do
    it 'should create a collection' do
      
      collection = Collection.new(title: 'Collection Title')
      expect(collection.title).to eq('Collection Title')
    end
  end

  context '#create' do
    it 'should create a collection' do
        collection = Collection.create(title: 'Collection Title')
      expect(collection.title).to eq('Collection Title')
    end
  end

  context '#update' do
    it 'should update a collection' do
      collection = Collection.create(title: 'collection Title')
      collection.update(title: 'collection2')
      expect(collection.title).to eq('collection2')
    end
  end

  context '#delete' do
    it 'should delete a collection' do
      collection = Collection.create(title: 'collection Title')
      collection.destroy
      expect(Collection.find_by(id: collection.id)).to be_nil
             
    end
  end

end
