Feature: Keep track of inventory
	As a shop owner
	I want to keep track of inventory

Background:
	Given a product Bread with quantity 10 in stock
	Given a product Milk with quantity 1 in stock

Scenario: Customer buy one product
	When customer buy bread with quantity 4
	Then A product Bread quantity in stock should be 6

Scenario: Customer buy multiple products
	When customer buy bread with quantity 4
	And customer but Milk with quantity 1
	Then A product Bread quantity in stock should be 6
	And A product Milk quantity in stock should be 0

Scenario: Re-order one product
	When I order Bread with quantity 2
	Then A product Bread quantity in stock should be 12

Scenario: Re-order multiple product
	When I order Bread with quantity 2
	And I order Milk with quantity 5
	Then A product Bread quantity in stock should be 12
	Then A product Milk quantity in stock should be 6