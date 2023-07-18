class BooksController < ApplicationController
    def  index
        @books = Book.all
        @book = Book.new
    end

   def create 
        @book = Book.new(book_params)
        if @book.save 
            redirect_to "/books/:id"
        else 
            render "/books"
        end
   end

   def show 

   end

   def destroy 
    @book = Book.find(params[:id])
    @book.destroy 
    redirect_to "/books"
   end

   def book_params 
        params.require(:book).permit(:title, :body)
   end
end
