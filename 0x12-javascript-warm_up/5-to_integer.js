#!/usr/bin/node
const hold = parseInt(process.argv[2]);
if (Number.isNaN(hold))
{
	console.log("Not a number");
}
else
{
	console.log("My number:" +" " + hold);
}
