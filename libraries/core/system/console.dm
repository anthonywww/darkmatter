
public class Console inherits SerialIO {

	// Prevent external instantiation
	private Console() {

	}

	public static void write(byte b) {

	}

	#[override]
	public void write(byte[] bytes) {

	}

	#[override]
	public byte[] read(int32 bytes) {

	}

	#[override]
	public byte read() {

	}

	#[override]
	public void read(&byte[] buffer) {
		
	}

	#[override]
	public string readLine() {
		// Read console line
		StringBuilder sb = new StringBuilder();
		
		while ((byte[] buffer = read(buffer.length)) != null) {
			sb.append(buffer);
		}

		return sb.toString();
	}

	public void writeLine(Object object) {
		byte[] original = object.toString().getBytes();
		byte[] bytes = new byte[original.length + 1];
		Array.fill(bytes, original);
		bytes[original.length] = '\n';
		self.write(bytes);
	}

	static {

	}

}
