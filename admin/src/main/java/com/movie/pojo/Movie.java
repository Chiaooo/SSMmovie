package com.movie.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
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

}
