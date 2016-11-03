package com.eco.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product {

	@Id 
	@GeneratedValue
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column
	private String ProductId;
	@Column
	private String ProductName;
	@Column
	private String Category;
	@Column
    private String Description;
	@Column
	private int Quantity;
	@Column
	private String Price;
	@Column
	private String Supplier;
	@Column
	private String Image;
	
	@Transient
	private MultipartFile picture;
	
	@Column
	public String getProductId() {
		return ProductId;
	
	}
	public void setProductId(String ProductId) {
		this.ProductId = ProductId;
	}
	public String getProductName() {
		return ProductName;
	
	}
	public void setProductName(String ProductName) {
		this.ProductName = ProductName;
	}
	public String getCategory() {
		return Category;
	
	}
	public void setCategory(String Category) {
		this.Category = Category;
	}
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int Quantity) {
		this.Quantity = Quantity;
	}
	public String getPrice() {
		return Price;
	
	}
	public void setPrice(String Price) {
		this.Price = Price;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		this.Description = description;
	}
	public String getSupplier() {
		return Supplier;
	}
	public void setSupplier(String supplier) {
		this.Supplier = supplier;
	}
	public String getImage() {
		return Image;
	}
	public void setImage(String image) {
		this.Image = image;
	}
	public MultipartFile getPicture() {
		return picture;
	}
	public void setPicture(MultipartFile picture) {
		this.picture = picture;
	}

}

