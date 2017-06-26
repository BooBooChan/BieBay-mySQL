//First, summon the npm packages and mySQL.

//Remember, you need to console.log everything that needs to print for everyone to see.
//Also, videorecord a demo of your app.
var inquirer = require(inquirer);
var takeYouToSQL = require(mySQL);
//Next, connect the MySQL to this sheet.
var connectToMySQL = mysql.createConnection({ //I suppose this raises the question as to why we didn't need to use .createConnection method with the npm packages.
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root",
  database: "BieBay"
});
connection.connect(function(err){
	if(err) throw err;

  	connection.query("SELECT * FROM BieBay", function(err, res) {
    	if (err) throw err;
    	console.log(res);
	});//end error function and connection.query
});//end error function and connection.connect
console.log(connection.query("SELECT `item_id`, `product_name`, `price_in_us_dollars` FROM `products`");
var userInput = inquirer.prompt([
	{
		name: "itemSelection",
		message: "Please enter the ID number of the item you would like to buy.",
		type: "input"
	},{
		name: "quantity",
		message: "How much of " + userInput " would you like to buy?",
		type: "input"
	}
]).then(
	var productIDForJavascript = connection.query("SELECT `item_id` FROM `products` WHERE `item_id` = answers(quantity, input)");//Look up how to convert that answers() JS code into SQL code that MySQL can read and calculate.
	var productQuantityForJavascript = connection.query("SELECT `stock_quantity` FROM `products` WHERE `quantity` = answers(quantity, input)");//Similarly, try to get My SQL to read answers().
	if(answers("itemSelection", "input") === productIDForJavascript){	
		if(productQuantityForJavascript < answers(quantity, input){
			var whatsLeft = productQuantityForJavascript - answers(quantity, input);
			console.log("Okay, here you go! We now have " + whatsLeft + answers(name, input) "(s) left.");
			connection.query("UPDATE `products` SET `quantity` = ___ WHERE `item_id` = answers(itemSelection, input)");//Look up how to convert that answers() JS code into SQL code that MySQL can read and calculate.
			console.log("Is there anything else you'd like?")
			userInput;
		}else{
			console.log("So sorry, but we are short on that product. We currently have " + productQuantityForJavascript + "(s) currently in stock.");//Similarly, try to get My SQL to read answers().
			userInput[1];

		};
	});

};
