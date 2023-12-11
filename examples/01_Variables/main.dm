
void main() {
	
	// There are a few data-types in Darkmatter.

	// Integers:
	// int8, int16, int32, int64, int128, and unsigned types, uint8, etc.

	// Floats:
	// float32, float64

	// Bytes, Chars, Strings:
	// byte, char, string

	// If you don't know or don't care, just use `let`!

	// Darkmatter will try to be as conservative with memory as possible.

	// So for implicit values using `let` ...
	// -128 <= 0 <= 127 will implicitly be a `int8`
	// 0 <= 255 will implicitly be a `uint8`

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
