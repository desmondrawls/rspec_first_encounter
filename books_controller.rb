class BooksController < ApplicationController
	
	def create
		@asin = params[:id]

		unless @asin.nil?
			@book = Book.find_by_asin(@asin)

			unless @book.nil?
				add_book_to_current_user(@book) unless current_user.has_book? @book.asin
			else
				amazon_book = AmazonBook.find_by_asin(@asin)

				add_book_to_current_user(@book = Book.new(amazon_book.attributes)) unless amazon_book.nil?
			end
		end

		respond_to do |format|
			format.js
		end
	end

private
	def add_book_to_current_user (book)
		unless current_user.nil?
			current_user.books << book
			current_user.save!
		end
	end
end