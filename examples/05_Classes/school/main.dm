// This will import the school module and put the School class within scope!
use student.*;
use school.*;

void main() {

	// Create the schools
	School montereyHigh = new School("Monterey High-School");
	School carmelHigh = new School("Carmel High-School");

	// Create the students
	Student addison = new Student("Addison", "Raii");
	Student billy = new Student("Billy", "Bob");
	Student charlie = new Student("Charlie", "D'aemon");
	Student walter = new Student("Walter", "Bishop");
	Student ellie = new Student("Ellie", "Williams");

	// Add the students ...
	montereyHigh.add(addison);
	montereyHigh.add(billy);
	montereyHigh.add(charlie);
	carmelHigh.add(walter);
	carmelHigh.add(ellie);

	// Test the students ...
	montereyHigh.testStudents();
	carmelHigh.testStudents();

	// Print grades
	Console.writeLine("${montereyHigh.getName()} Scores:");
	montereyHigh.printScores();
	Console.writeLine("Average: ${montereyHigh.getAverageScores()}.2f%");

	Console.writeLine();
	
	Console.writeLine("${carmelHigh.getName()} Scores:");
	carmelHigh.printScores();
	Console.writeLine("Average: ${carmelHigh.getAverageScores()}.2f%");

}
