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
	Name     string
	Nickname string
	User     User
	Sacola   string
	UserID   uint
}
