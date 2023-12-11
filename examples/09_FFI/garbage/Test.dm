
void main() {

	// Darkmatter will try to be as conservative with memory as possible when
	// defining scalar-types.

	// So for implicit values using `let` ...
	// -128 <= 0 <= 127 will implicitly be a `int8`
	// 0 <= 255 will implicitly be a `uint8`

	let w = 2; // implicitly a uint8 (since it can fit)
	uint8 x = 3; // explicitly an unsigned 8-bit integer 
	int32 y = 4; // explicitly a signed 32-bit integer
	
	let z = x ** (y*z); // implicitly an unsigned 16-bit integer

	return 0;
}
