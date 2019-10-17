package entity;

public class BookNew {
	private int id;
	private String title;
	private String author;
	private String publisher;
	private String type;
	private String desription;
	private String image;
	private double price;
	//书名数量
	private int bookCount;
	
	public int getBookCount() {
		return bookCount;
	}
	public void setBookCount(int bookCount) {
		this.bookCount = bookCount;
	}
	
	public BookNew(String title, String author, String publisher, String desription, double price) {
		super();
		this.title = title;
		this.author = author;
		this.publisher = publisher;
		this.desription = desription;
		this.price = price;
	}
	public BookNew(String title, String author, String publisher, String type, String desription, String image,
			double price) {
		super();
		this.title = title;
		this.author = author;
		this.publisher = publisher;
		this.type = type;
		this.desription = desription;
		this.image = image;
		this.price = price;
	}
	public BookNew(int id, String title, String author, String publisher, String type, String desription, String image,
			double price) {
		super();
		this.id = id;
		this.title = title;
		this.author = author;
		this.publisher = publisher;
		this.type = type;
		this.desription = desription;
		this.image = image;
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDesription() {
		return desription;
	}
	public void setDesription(String desription) {
		this.desription = desription;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
public static void main(String[] args) {
	System.out.println("ni");
}
}
