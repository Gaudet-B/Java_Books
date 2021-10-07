package com.gaudetb.books.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import com.gaudetb.books.models.Book;
import com.gaudetb.books.repos.BookRepo;


@Service
public class BookService {
	
	// adding the book repository as a dependency
	private final BookRepo bookRepo;
	
	public BookService(BookRepo bookRepo) {
		this.bookRepo = bookRepo;
	}
	
	// returns all the books
	public List<Book> allBooks() {
	    return bookRepo.findAll();
	}
	
	// creates a book
	public Book createBook(Book b) {
	    return bookRepo.save(b);
	}
	
	// retrieves a book
	public Book findBook(Long id) {
	    Optional<Book> optionalBook = bookRepo.findById(id);
	    if(optionalBook.isPresent()) {
	        return optionalBook.get();
	    } else {
	        return null;
	    }
	}
	
	// updates a book
	public Book updateBook(Long id, String title, String description, String language, Integer pages) {
		Optional<Book> getBook = bookRepo.findById(id);
		
		if (getBook.isPresent()) {
			Book updatedBook = getBook.get();
			updatedBook.setTitle(title);
			updatedBook.setLanguage(language);
			updatedBook.setDescription(description);
			updatedBook.setNumberOfPages(pages);
			return bookRepo.save(updatedBook);
		}
		
		return null;
	}
	
	// deletes a book
	public void deleteBook(Long id) {
		bookRepo.deleteById(id);
	}
	
}

