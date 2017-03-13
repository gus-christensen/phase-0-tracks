// find the longest string in an array

// while cycling through all of the strings,
// use placeholder variables to store the length of the longest string
// as well as, to store the index of the current longest string.

// after the loop is concluded, 
// use the stored index to return the longest string.

var strings = ["long phrase","longest phrase","longer phrase"];

function longestString(newArray) {
	var length = 0;
	var index = 0;
	for ( var x = 0; x < newArray.length; x++) {
		if (newArray[x].length > length) {
			length = newArray[x].length;
			index = x;
		}
	}
	return newArray[index]
}

console.log(longestString(strings))