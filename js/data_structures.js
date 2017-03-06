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

var array = []
Object.keys(horseObject).forEach(function(key) {
    array.push(horseObject[key]);
});
console.log(array)



function Car(make, model, year, color) {
	this.make = make;
	this.model = model;
	this.year = year;
	this.color = color;
	this.needsOil = false
	this.oilChange = function() {
		if (this.needsOil == true) {
			console.log("Get an oil change!");
		} else {
			console.log("All good!");
		}
	}
}

var commuter = new Car("Toyota", "Corolla", 2002, "Silver");
commuter.oilChange()
commuter.needsOil = true
commuter.oilChange()

var nightlifeCar = new Car("Honda", "CRX", 1989, "White")
var carpooler = new Car("Honda", "Odyssey", 2012, "Green")





