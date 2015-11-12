class PublishersController < ApplicationController
  def index
    book = Book.find(params[:book_id])
    @publishers = book.publishers
  end
end
