// reverse method equivalent in JavaScript

// create a new string such that 
// for each index x of the original argument string 
// the new index is (-x - 1)

// node initially returned a few errors, 
// but now it isn't returning anything at all. blank space.
function reverseString(string) {
	var reverseStr = "";
	for ( var x = 0; x < string.length; x++ ) {
		var charX = string.charAt(-1 - x);
		reverseStr = reverseStr.concat(charX);
	};
	return reverseStr;
}

// var str1 = "Backwards?";
console.log("Backwards?".reverseString)
// node explore.js yields only "undefined", no error messages or line references