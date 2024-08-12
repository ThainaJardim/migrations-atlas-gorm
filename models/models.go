package models

import "gorm.io/gorm"

type User struct {
	gorm.Model
	Name     string
	FullName string
	Pets     []Pet
}

type Pet struct {
	gorm.Model
	Name    string
	User    User
	Sacola  string
	UserID  uint
	BreedID uint
	Breed   Breed
}

type Breed struct {
	gorm.Model
	Name string `gorm:"index"`
}
