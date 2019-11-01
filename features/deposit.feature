Feature: Deposit money into account

Background:
	Given Amount of money in account is 1000 Baht

Scenario: Deposit money
	When I deposit 250 Baht into account
	Then Amount of money in account should be 1250 Baht