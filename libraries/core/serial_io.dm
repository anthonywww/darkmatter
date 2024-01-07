
public abstract class SerialIO {

	public abstract void write(byte b);

	public abstract void write(byte[] bytes);

	public abstract byte[] read(int32 number_of_bytes);

	public abstract byte read();

	public abstract void read(&byte[] bytes);

}
