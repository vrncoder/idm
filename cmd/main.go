package main

import (
	"fmt"
	"idm/database"
	"log"
)

func main() {
	db := database.ConnectDb()

	if err := db.Ping(); err != nil {
		log.Fatalf("Error connecting to database: %v", err)
	}

	fmt.Println("Connected to database")

	defer db.Close()
}
