package me.anthonyw.darkmatter;

public enum PrimitiveTypes {
	
	// Bytes
	BYTE(DataType.BYTE, 1, "byte"),

	// Chars
	CHAR(DataType.CHAR, 1, "char"),

	// Integers
	UINT_8(DataType.INT, 2, "uint8"),
	INT_8(DataType.INT, 2, "int8"),
	UINT_16(DataType.INT, 2, "uint16"),
	INT_16(DataType.INT, 2, "int16"),
	UINT_32(DataType.INT, 4, "uint32"),
	INT_32(DataType.INT, 4, "int32"),
	UINT_64(DataType.INT, 8, "uint64"),
	INT_64(DataType.INT, 8, "int64"),
	UINT_128(DataType.INT, 16, "uint128"),
	INT_128(DataType.INT, 16, "int128"),
	
	// Floats
	FLOAT_32(DataType.FLOAT,4, "float32"),
	FLOAT_64(DataType.FLOAT, 8, "float64"),

	// Boolean
	BOOLEAN(DataType.BOOLEAN, 1, "boolean");

	// TODO: define in corelib as a char[] or linked-list of char's ?
	//STRING(-1, "string");
	
	private final DataType type;
	private final int size;
	private final String keyword;
	
	private PrimitiveTypes(DataType type, int size, String keyword) {
		this.type = type;
		this.size = size;
		this.keyword = keyword;
	}

	public DataType getType() {
		return type;
	}
	
	public int getSize() {
		return size;
	}
	
	public String getKeyword() {
		return keyword;
	}
	
}
