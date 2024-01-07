
public class School {
	
	// TODO: in later classes, use a generator attribute/macro
	// #[generate(get, set = "protected")]
	private &string name;
	private List<Student> students;

	public School(&string name) {
		self.name = name;
	}

	public &string getName() {
		return name;
	}

	public void addStudent(Student student) {
		students.add(student);
	}

	public void testStudents() {
		for (Student student : students) {
			student.takeTest();
		}
	}

	public float32 getAverageScores() {
		mutable float32 total = 0.0;

		for (Student student : students) {
			average += student.getTestScore();
		}

		// TODO: instead of a for-loop you can also do:
		// total += students;

		return total / students.size(); // TODO: instead of `students.size()` you can do `#students`	
	}

	public void printScores() {
		for (Student student : students) {
			float32 score = student.getTestScore();
			mutable char grade = 'F';

			if (score >= 0.9) {
				grade = 'A';
			} else if (score >= 0.8) {
				grade = 'B';
			} else if (score >= 0.7) {
				grade = 'C';
			} else if (score >= 0.6) {
				grade = 'D';
			}

			Console.writeLine("    ${student.getLastName()}, ${student.getFirstName()}  = ${grade} (${score}.2f%)");
		}
	}

}
