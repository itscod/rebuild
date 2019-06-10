package zzm.model;

public class Product {
	private int fruitID;
	private String fruitName;
	private String kind;
	private String origin;
	private String price;
	private String images;
	private String introduce;
	private String stock;
	
	public Product() {
		
	}
	
	public Product(String fruitName, String kind, String origin, String price, String images,
			String introduce, String stock) {
		super();
		this.fruitName = fruitName;
		this.kind = kind;
		this.origin = origin;
		this.price = price;
		this.images = images;
		this.introduce = introduce;
		this.stock = stock;
	}

	public Integer getFruitID() {
		return fruitID;
	}

	public void setFruitID(int time) {
		this.fruitID = time;
	}

	public String getFruitName() {
		return fruitName;
	}

	public void setFruitName(String fruitName) {
		this.fruitName = fruitName;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getStock() {
		return stock;
	}

	public void setStock(String stock) {
		this.stock = stock;
	} 
	
	@Override
	public String toString() {
		return "Product [fruitName=" + fruitName + ", kind=" + kind+ ", origin=" + origin + ", price=" + price 
						+ ", images=" + images+ ", introduce=" + introduce+ ", stock=" + stock+ "]";
	}
}
