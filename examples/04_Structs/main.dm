use color;

void main() {

	// green color
	Color c1;
	c1.green = 255;

	// blue color
	Color c2 = {
		0,
		0,
		255
	};

	// green + blue = cyan
	Color c3 = addColors(c1, c2);
	
	Console.writeLine("Color 1: ${c1}");
	Console.writeLine("Color 2: ${c2}");
	Console.writeLine("Color 3: ${c3}");
}
