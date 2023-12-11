
public class Vector2f {

	#[generate("public get, public set")]
	public mutable float32 x;
	public mutable float32 y;

	public Vector2f() {
		self(0, 0);
	}

	public Vector2f(float32 x, float32 y) {
		self.x = x;
		self.y = y;
	}

	#[override]
	public Vector2f __add(Object rhs_object) {
		if (obj instanceof Vector2f) {
			return self.add(rhs_object);
		}
	}

	public Vector2f add(Vector2f other) {
		add(other.getX(), other.getY());
	}

	public Vector2f add(float32 x, float32 y) {
		self.x += x;
		self.y += y;
	}

	// TODO: other methods

}
