var colorArray = ["white", "fawn", "black", "gray"];
var horseNames = ["Coco", "Tilly", "Jupiter", "Ed"];

colorArray.push("brown");
horseNames.push("Teal");

console.log(colorArray);
console.log(horseNames);

var horseObject = {}
for ( var x = 0; x < colorArray.length; x++ ) {
	horseObject[horseNames[x]] = colorArray[x]
}

console.log(horseObject)