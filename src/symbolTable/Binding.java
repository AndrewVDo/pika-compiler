package symbolTable;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import inputHandler.TextLocation;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;

public class Binding {
	private Type type;
	private TextLocation textLocation;
	private MemoryLocation memoryLocation;
	private String lexeme;
	private boolean isVar;
	private Scope scope;
//	private String label;
	
	public Binding(Type type, boolean isVar, TextLocation location, MemoryLocation memoryLocation, String lexeme) {
		super();
		this.type = type;
		this.isVar = isVar;
		this.textLocation = location;
		this.memoryLocation = memoryLocation;
		this.lexeme = lexeme;
	}
	

	public String toString() {
		return "[" + lexeme +
				" " + type +  // " " + textLocation +	
				" " + memoryLocation +
				"]";
	}	
	public String getLexeme() {
		return lexeme;
	}
	public Type getType() {
		return type;
	}
	public boolean getIsVar() {
		return isVar;
	}
	public TextLocation getLocation() {
		return textLocation;
	}
	public MemoryLocation getMemoryLocation() {
		return memoryLocation;
	}
	public void generateAddress(ASMCodeFragment code) {
		memoryLocation.generateAddress(code, "%% " + lexeme);
	}
	public Scope getScope() {
		return this.scope;
	}
	public void setScope(Scope scope) {
		this.scope = scope;
	}
//	public String getLabel() {
//		return this.label;
//	}
//	public void setLabel(String label) {
//		this.label = label;
//	}


////////////////////////////////////////////////////////////////////////////////////
//Null Binding object
////////////////////////////////////////////////////////////////////////////////////

	public static Binding nullInstance() {
		return NullBinding.getInstance();
	}
	private static class NullBinding extends Binding {
		private static NullBinding instance=null;
		private NullBinding() {
			super(PrimitiveType.ERROR,
					false,
					TextLocation.nullInstance(),
					MemoryLocation.nullInstance(),
					"the-null-binding");
		}
		public static NullBinding getInstance() {
			if(instance==null)
				instance = new NullBinding();
			return instance;
		}
	}
}
