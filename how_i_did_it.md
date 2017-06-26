#How Does My BieBay Application Work

##Ladies and gentlement, I present to you a shopping application which allows customers to purchase merchandise from our generation's music genius, Justin Bieber.

I have a Javascript sheet which draws in data from a MySQL database which I created in a separate file. That database holds all of the statistics of our Justin Bieber products. So all Javascript does, then, is run and/or display information to the customer as specified within the Javascript sheet. 

###The following description illustrates the order process and how the user interacts with the application.

1. When the user starts up the app, it will first display all the items' names, their unique, corresponding ID numbers, and the price. 

2. Once the user reads all of his/her options, he/she is then allowed to enter the ID number of the desired item, followed by the desired quantity of said item.

3. If the entered quantity meets our current stock of the item, the app will immediately update the MySQL database, calculating the difference between the stock and the user's quantity input, and replacing the old quantity data in the process.
	*Otherwise, the app will display how much we do, in fact, have in stock, and re-ask the desired quantity, now that the user has been clarified how many of the selected item he/she can order from us. The order will not be placed until a proper amount is entered.
4. What this entire process does, then, is properly inform the customer of all of his/her options, allowing him/her to budget the spending amount and purchase our merchandise with minimal difficulties.