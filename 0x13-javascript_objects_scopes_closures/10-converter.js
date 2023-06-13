#!/usr/bin/node
//need attentop
exports.converter = function (base)
{
	return function (argv)
	{
		return argv.toString(base);
	};
};
