package reviewsMng;

public class Model {
    private int id;
    private String rating;
    private String comment;
    private String timestamp;
    private String date;
    
	public Model(int id, String rating, String comment, String timestamp, String date) {
		super();
		this.id = id;
		this.rating = rating;
		this.comment = comment;
		this.timestamp = timestamp;
		this.date = date;
	}
    
	public Model(String rating, String comment, String timestamp, String date) {
		super();
		this.rating = rating;
		this.comment = comment;
		this.timestamp = timestamp;
		this.date = date;
	}

	public int getId() {
		return id;
	}

	public String getRating() {
		return rating;
	}

	public String getComment() {
		return comment;
	}

	public String getTimestamp() {
		return timestamp;
	}

	public String getDate() {
		return date;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}

	public void setDate(String date) {
		this.date = date;
	}
    
    
	
    
	

	
    
}
