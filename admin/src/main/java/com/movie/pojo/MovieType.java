package com.movie.pojo;

public class MovieType {
	private int id;
	private String type;

	public MovieType() {
	}

	public MovieType(int id, String type) {
		this.id = id;
		this.type = type;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
}
