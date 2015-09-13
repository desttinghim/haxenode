package ;

import js.Node;
import js.node.Fs;

/**
 * @author Matthijs Kamstra aka [mck]
 */
class Main
{
	function new()
	{
		trace("Node.js writing Example");
		
		var str = 'Hello World!\nWritten on: ' + Date.now().toString();
		Fs.writeFile('helloworld.txt', str);

		// this example code is closest to the pure node.js example
		Fs.writeFile('hello.txt', str, {}, function (err){
			if (err != null) 
				trace( "err: " + err );
			else
				trace('Hello > hello.txt');
		});
	}

	public function testme(arr):Void
	{
	    trace(arr);
	}

	static public function main()
	{
		var main = new Main();
	}
}