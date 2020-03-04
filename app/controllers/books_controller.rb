class BooksController < ApplicationController
  def show
    @book = OpenStruct.new(title: "Book title")
  end
end
