#!/usr/bin/node
/* function that returns the reversed 
 * version of a list
 */
exports.eserver = function (list)
{
	const newList = [];
	for (let i = list.length - 1; i >= 0; i--)
	{
		newList.push(list[i]);
	}
	return newlist;
};
