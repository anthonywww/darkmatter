
public class Student {

	private static float32 MIN_SCORE = 0.5;
	private static float32 MAX_SCORE = 1.0;

	private &string first_name;
	private &string last_name;
	private mutable float32 test_score;

	public Student(&string first_name, &string last_name) {
		self.first_name = first_name;
		self.last_name = last_name;
	}

	public void takeTest() {
		// By default Math.randomFloat() returns a value from 0.0 <= x < 1.0
		// So... we scale it to give the students a better chance ;)
		// Mathematical way:
		// float32 score = MAX_SCORE - MIN_SCORE * Math.randomFloat();

		test_score = Math.randomFloat(MIN_SCORE, MAX_SCORE);
	}

	public float32 getTestScore() {
		return test_score;
	}

}
