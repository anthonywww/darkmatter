
void main() {
	
	//
	// Scalar primitive data-types:
	//
	// - Signed Integers:
	//   int8, int16, int32, int64, int128
	//
	// - Unsigned Integers:
	//   uint8, uint16, uint32, uint64, uint128
	//
	// - Floats:
	//   float32, float64
	//
	// - Others:
	//   byte, char, string
	//
	//
	// Compount primitive data-types:
	//
	// - struct, class, json
	//


	// Reference data-types used in Darkmatter:
	//
	// - Sets:
	//   Set, HashSet
	//
	// - Maps:
	//   Map, HashMap, LinkedMap, LinkedHashMap
	//


	// Variables:

	//
	// Similarly to Rust's `let` and Java's `var` keyword, Darkmatter has `let` as well.
	//
	// Darkmatter will try to be as conservative with memory as possible.
	// For instance:
	//
	// -128 <= 0 <= 127 will implicitly become an `int8`
	// 0 <= 255 will implicitly become a `uint8`
	//

	let message = "All variables in Darkmatter are immutable by default!";
	let x = 4;
	let y = 6;
	let z = x ** y; // since the compiler can implicitly tell that x ** y is >= 255 z will be a uint16.
	Console.writeLine(message); // All variables in Darkmatter are immutable by default!

	// You can also use variables in a string by wrapping it in ${}!
	Console.writeLine("My answer: ${z}"); // 4096

	// Let's say I want to have a mutable variable instead of an immutable constant.
	let mutable editableMessage = "This variable can be edited!";

	Console.writeLine(editableMessage);
	Console.write("New message: ");

	// Read user input
	editableMessage = Console.readLine();

	Console.writeLine("New message: ${editableMessage}");
}
