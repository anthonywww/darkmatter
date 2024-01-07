package me.anthonyw.darkmatter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Tokenizer {
	
	private static final Logger logger = LoggerFactory.getLogger(Tokenizer.class);

	private String input;
	private int cursorPosition;
	private int line; // increment each time we encounter \n
	private int column; // reset to 0 each time we encounter \n
	//private boolean ignoreWhiteSpace;
	
	public Tokenizer(String input) {
		this.input = input;
		//this.ignoreWhiteSpace = true;
	}
	
	private boolean hasMoreTokens() {
		return cursorPosition < input.length();
	}

	public TokenType getNextToken() {
		if (!hasMoreTokens()) {
			return null;
		}
		
		//final String tokenString = input.substring(cursorPosition);
		while (hasMoreTokens()) {
			
			boolean unknownToken = true;
			
			for (final TokenType token : TokenType.values()) {
				final String tokenValue = token.getTokenValue();
				final String result = input.substring(cursorPosition, cursorPosition + tokenValue.length());
				if (tokenValue.equals(result)) {
					cursorPosition += tokenValue.length();
					unknownToken = false;
					return token;
				}
			}
			
			if (unknownToken) {
				logger.error("Unknown token at line {}, column {}.", line, column);
				return null;
			}
		}

		/*
		char c = ' ';
		for (int i=0; i<input.length(); i++) {
			c = input.charAt(i);
			if (ignoreWhiteSpace && (c == ' ' || c == '\t')) {
				column += 1;
				continue;
			}
			if (c == '\n') {
				line += 1;
				column = 0;
			}
		}
		*/

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
