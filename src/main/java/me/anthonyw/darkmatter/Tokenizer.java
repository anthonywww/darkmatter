package me.anthonyw.darkmatter;

public class Tokenizer {

	private String input;
	private int cursor;
	private int line; // increment each time we encounter \n
	private int column; // reset to 0 each time we encounter \n
	
	public Tokenizer(String input) {
		this.input = input;
	}
	
	private boolean hasMoreTokens() {
		return cursor < input.length();
	}

	public Token getNextToken() {
		if (!hasMoreTokens()) {
			return null;
		}

		final String segment = input.substring(cursor);

		// state machine



		return null;
	}
	
	
	/**
	 * Returns the precedence of a token.
	 * Returns -1 if the precedence does not matter.
	 * 
	 * @param type
	 * @return
	 */
	public static int binaryPrecedence(TokenType type) {
		
		switch (type) {
		case PLUS:
		case MINUS:
			return 0;
		case ASTERISK:
		case SLASH:
			return 1;
		default:
			return -1;
		}
		
	}
	
	
}
