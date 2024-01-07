
public class Math {

	/**
	 * Returns the sine of x as radians.
	 */
	public static native float32 sin(float32 x);

	/**
	 * Returns the cosine of x as radians.
	 */
	public static native float32 cos(float32 x);

	public static uint8 min(uint8 a, uint8 b) {
		return a < b ? a : b;
	}

	public static uint8 max(uint8 a, uint8 b) {
		return a > b ? a : b;
	}

	public static uint8 clamp(uint8 min, uint8 max, uint8 value) {
		return value < min ?
				min :
					value > max ?
						max :
						value;
	}

	public static uint32 clamp(uint32 min, uint32 max, uint32 value) {
		return value < min ?
			min :
				value > max ?
					max :
					value;
	}

}
