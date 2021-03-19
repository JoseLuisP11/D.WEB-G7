require 'rails_helper'
require './app/models/note'



    describe Note do
      describe "#new" do	    
	    it "should create a note" do
            note=Note.new(title:"Note Title",description:"Note description")
            expect(note.title).to eq("Note Title")
        end
	    end
    end


  