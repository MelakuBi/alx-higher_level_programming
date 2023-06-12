#!/usr/bin/node
import { cpuUsage } from 'node:process';
let startusage = cpuUsage();
if (startusage[argc] === 1)
{
	console.log('No argument');
}
else if (startusage[argc] === 2)
{
	console.log('Argument found');
}
else 
{
	console.log('Arguments found');
}
