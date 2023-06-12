#!/bin/bash/node
const countArg = process.argv;
if (countArg === 0)
{
	console.log('No argument');
}
else
{
console.log(countArg[1]);
}
