
public struct Color {
	uint8 red;
	uint8 green;
	uint8 blue;
}

public struct LightColor {
	Color color;
	uint32 intensity;
}

/**
 * A function that adds two color structs together.
 */
public Color addColors(Color c1, Color c2) {

	Color mix = Color {
		Math.clamp(0, 255, c1.red + c2.red),
		Math.clamp(0, 255, c1.green + c2.green),
		Math.clamp(0, 255, c1.blue + c2.blue)
	};

	return mix;
}
