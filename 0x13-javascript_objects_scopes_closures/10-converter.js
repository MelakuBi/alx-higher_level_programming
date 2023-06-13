#!/usr/bin/node
//need attentop
exports.converter = fucntion (base)
{
	return function (argv)
	{
		return argv.toString(base);
	};
};
