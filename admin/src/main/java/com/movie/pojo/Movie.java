package com.movie.pojo;

public class Movie {
	private int id;
	private String name;
	private String type;
	private String img;
	private String video;
	private String director;
	private String star;
	private String area;
	private String year;
	private String sumary;
	private String score;

	public Movie() {
	}

	public Movie(int id, String name, String type, String img, String video, String director, String star, String area, String year, String sumary, String score) {
		this.id = id;
		this.name = name;
		this.type = type;
		this.img = img;
		this.video = video;
		this.director = director;
		this.star = star;
		this.area = area;
		this.year = year;
		this.sumary = sumary;
		this.score = score;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getSumary() {
		return sumary;
	}

	public void setSumary(String sumary) {
		this.sumary = sumary;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}
}
