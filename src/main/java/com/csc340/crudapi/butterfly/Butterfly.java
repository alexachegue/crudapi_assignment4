package com.csc340.crudapi.butterfly;

import jakarta.persistence.*;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;

@Entity
@Table(name = "butterfly")
public class Butterfly{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int butterflyId;

    @Column(nullable = false)
    private String name;

    private String description;
    private String breed;
    private int age;
    private Date activeDate;


    public Butterfly(int butterflyId, String name, String description, String breed, int age, Date activeDate) {
        this.butterflyId = butterflyId;
        this.name = name;
        this.description = description;
        this.breed = breed;
        this.age = age;
        this.activeDate = activeDate;

    }

    public Butterfly(String name, String description, String breed, int age, Date activeDate){
        this.name = name;
        this.description = description;
        this.breed = breed;
        this.age = age;
        this.activeDate = activeDate;

    }

    public Butterfly(){

    }

    public int getButterflyId(){
        return butterflyId;
    }

    public void setButterflyId(int butterflyId){
        this.butterflyId = butterflyId;
    }

    public String getName(){
        return name;
    }

    public void setName(String name){
        this.name = name;
    }

    public String getDescription(){
        return description;
    }

    public void setDescription(String description){
        this.description = description;
    }

    public String getBreed(){
        return breed;
    }

    public void setBreed(String breed){
        this.breed = breed;
    }

    public int getAge(){
        return age;
    }

    public void setAge(int age){
        this.age = age;
    }

    public Date getActiveDate(){
        return activeDate;
    }

    public void setActiveDate(Date activeDate){
        this.activeDate = activeDate;
    }

}