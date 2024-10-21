package com.project.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ToDo
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String title;
	private Date date;
	private String status;
	
	
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public Date getDate()
	{
		return date;
	}
	public void setDate(Date date)
	{
		this.date = date;
	}
	public String getStatus() 
	{
		return status;
	}
	public void setStatus(String status)
	{
		this.status = status;
	}
	
	public ToDo(int id, String title, Date date, String status)
	{
		super();
		this.id = id;
		this.title = title;
		this.date = date;
		this.status = status;
	}
	
	
	public ToDo()
	{
		super();
	}
	
	
	@Override
	public String toString()
	{
		return "ToDo [id=" + id + ", title=" + title + ", date=" + date + ", status=" + status + "]";
	}
}
