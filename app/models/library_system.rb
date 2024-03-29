class LibrarySystem
  attr_accessor :catalog, :library_list

  def initialize
    @catalog = []
    @library_list =[]
  end

  def get_catalog_entry_by_title(book_title)
    catalog.each do |catalog_entry|
      if catalog_entry.book_title == book_title
        return catalog_entry
      end
    end
    nil
  end

  def find_library_with_book(book_title)
    #book_im_looking_for = get_catalog_entry_by_title(book_title)
    #@library_list.select {|library| library.catalog.include? book_im_looking_for == true}
    #!@catalog.select { |catalog_entry| catalog_entry.book_title == book_title }.empty?

    @library_list.each do |library|
      if library.catalog.include? book_im_looking_for
        book_im_looking_for.libraries_that_have_this_book << library.library_name
        book_im_looking_for.libraries_that_have_this_book
      #else
      # 'Book not found'
      end


    end
    return book_im_looking_for.libraries_that_have_this_book
  end


  def does_library_system_have_this_book?(book_title)
    !@catalog.select { |catalog_entry| catalog_entry.book_title == book_title }.empty?
  end

  def add_library(library)

    if @library_list.include? library
      "#{library.library_name} already exist!"
    else
      @library_list << library
      "#{library.library_name} is now added to the library system"
    end
  end

  def add_new_library_member(personal_info, library_name)
    ls = LibrarySystem.new
    ls.library_list = Set.new
    updated_library_list = ls.library_list.add("#{library_name}")

    if updated_library_list.include?("#{library_name}")
      library = Library.new
      library.library_name = library_name
      library.members = []
      if library.members.include?(personal_info)
        "#{personal_info} is already a member of a #{library_name} 11"
      else
        library.members << personal_info
        "#{personal_info} is now a member of a #{library_name}."
      end
    else
      "#{personal_info} is already a member of a #{library_name} 22"
    end
  end

end

