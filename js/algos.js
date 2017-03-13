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


// define a function that 
// takes two objects as arguments
// and returns true if there are any matching key/value pairs.
//function returns false if there are no matching pairs.


function pairMatch(obj1, obj2) {
// make key arrays
	var arr1 = Object.keys(obj1)
	var arr2 = Object.keys(obj2)
// find the intersection of the key arrays
// PLAGIARISM ALERT: I'm surprised there isnt a simpler array intersection technique,
// but this is what I would have been able to write on my own.
// found this array intersection function
	var commonValues = [];
	var i, j;
	var arr1Length = arr1.length;
	var arr2Length = arr2.length;

	for (i = 0; i < arr1Length; i++) {
	    for (j = 0; j < arr2Length; j++) {
	        if (arr1[i] === arr2[j]) {
	            commonValues.push(arr1[i]);
	        }
	    }
	}

// second, check if the shared keys have shared values
	var commonValuesLength = commonValues.length;
	var pairMatches = {};
	for (i = 0; i < commonValuesLength; i++) {
		if (obj1[commonValues[i]] == obj2[commonValues[i]]) {
			pairMatches[commonValues[i]] = obj1[commonValues[i]]
		}
	}

	if (Object.keys(pairMatches).length == 0 ) {
		return false
	} else {
		return true
	}
}

console.log(pairMatch({name: "Steven", age: 5}, {name: "Tamir", age: 54}))




