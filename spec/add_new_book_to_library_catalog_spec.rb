require 'spec_helper'

describe 'adding new library member' do
  it 'should let a user to add new book to library catalog' do
    sf_library = Library.new('SF library')
    chicago_library = Library.new('Chicago library')
    green_gables_book = CatalogEntry.new('Anne of Green Gable')
    candy = CatalogEntry.new('Candy')

    #TODO I need add a new book to library_catalog & ls catalog. this is a good point to start using db
    #sf_library.add_new_book_to_catalog(green_gables_book).size.should == 1
    #sf_library.add_new_book_to_catalog(candy).size.should == 2
    #chicago_library.add_new_book_to_catalog(green_gables_book).size.should == 1
  end
end