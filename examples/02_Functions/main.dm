
&string getName() {
	Console.write("What is your name? ");
	&string name = Console.readLine();
	return name;
}

void greetKindly(&string name) {
	Console.writeLine("Greetings ${name}!");
}

void greetMean(&string name) {
	Console.writeLine("Hi ${name}, you suck!");
}

void main() {
	// Get user input from console
	&string name = getName().toLowerCase();

	// Depending on what name they use, greet them differently
	if (name == "john" || name == "lizzy") {
		greetMean(name);
	} else {
		greetKindly(name);
	}

}
