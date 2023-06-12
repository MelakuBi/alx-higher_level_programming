#!/usr/bin/node
let startusage = process.argv.length;
if (startusage === 2)
{
	console.log('No argument');
}
else if (startusage === 3)
{
	console.log('Argument found');
}
else 
{
	console.log('Arguments found');
}
