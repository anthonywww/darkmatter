
public class Vector2i {

	#[generate("public get, public set")]
	public mutable int32 x;
	public mutable int32 y;

	public Vector2i() {
		self(0, 0);
	}

	public Vector2i(int32 x, int32 y) {
		self.x = x;
		self.y = y;
	}

	#[override]
	public Vector2i __add(Object rhs_object) {
		if (obj instanceof Vector2i) {
			return self.add(rhs_object);
		}
	}

	public Vector2i add(Vector2i other) {
		add(other.getX(), other.getY());
	}

	public Vector2i add(int32 x, int32 y) {
		self.x += x;
		self.y += y;
	}

	// TODO: other methods

}
