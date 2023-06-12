#!/usr/bin/node
let hold = process.argv;
if (hold.length <= 3)
{
	console.log(0);
}
else
{
	console.log(hold.sort((x, y) => y - x).slice(3)[0]);
}
