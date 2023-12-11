
public class Console inherits IOSerial {


	#[override]
	public void write(byte b) {

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

	public void writeLine(Object object) {
		byte[] original = object.toString().getBytes();
		byte[] bytes = new byte[original.length + 1];
		Array.fill(bytes, original);
		bytes[original.length] = '\n';
		self.write(bytes);
	}

}
