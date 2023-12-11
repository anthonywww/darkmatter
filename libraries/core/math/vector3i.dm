
public class Vector3i inherits Vector2i {

	#[generate("public get, public set")]
	public mutable int32 z;
	
	public mutable Vector2i vec2i;

	public Vector3i() {
		self(0, 0, 0);
	}

	public Vector3i(int32 x, int32 y, int32 z) {
		vec2i = new Vector2i(0, 0);
		self.z = z;
	}

	#[override]
	public Vector3i __add(Object rhs_object) {
		if (obj instanceof Vector3i) {
			return self.add(rhs_object);
		}
	}

	public Vector3i add(Vector3i other) {
		self.add(other.getX(), other.getY(), other.getZ());
	}

	public Vector2f add(float32 x, float32 y, float32 y) {
		vec2i.add(other.getX(), other.getY());
		self.z += other.z;
	}

	// TODO: other functions

}
