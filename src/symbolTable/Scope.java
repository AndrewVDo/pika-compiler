package symbolTable;

import asmCodeGenerator.runtime.MemoryManager;
import inputHandler.TextLocation;
import logging.PikaLogger;
import parseTree.nodeTypes.IdentifierNode;
import semanticAnalyzer.types.Type;
import tokens.Token;

public class Scope {
	private Scope baseScope;
	private MemoryAllocator allocator;
	private SymbolTable symbolTable;
	
//////////////////////////////////////////////////////////////////////
// factories

	public static Scope createProgramScope() {
		return new Scope(programScopeAllocator(), nullInstance());
	}
	public Scope createSubscope() {
		return new Scope(allocator, this);
	}
	public Scope createParameterScope() {
		return new Scope(paramMemoryAllocator(), this);
	}
	public Scope createProcedureScope() {
		return new Scope(procedureMemoryAllocator(), this);
	}
	
	private static MemoryAllocator programScopeAllocator() {
		return new PositiveMemoryAllocator(
				MemoryAccessMethod.DIRECT_ACCESS_BASE, 
				MemoryLocation.GLOBAL_VARIABLE_BLOCK);
	}
	private static MemoryAllocator paramMemoryAllocator() {
		return new ParameterMemoryAllocator(
				MemoryAccessMethod.INDIRECT_ACCESS_BASE,
				MemoryLocation.FRAME_POINTER);
	}
	private static MemoryAllocator procedureMemoryAllocator() {
		return new NegativeMemoryAllocator(
				MemoryAccessMethod.INDIRECT_ACCESS_BASE,
				MemoryLocation.FRAME_POINTER,
				-8);
	}
	
//////////////////////////////////////////////////////////////////////
// private constructor.	
	private Scope(MemoryAllocator allocator, Scope baseScope) {
		super();
		this.baseScope = (baseScope == null) ? this : baseScope;
		this.symbolTable = new SymbolTable();
		this.allocator = allocator;
	}
	public void enter() {
		this.allocator.saveState();
	}
	
///////////////////////////////////////////////////////////////////////
//  basic queries	
	public Scope getBaseScope() {
		return baseScope;
	}
	public Scope getGlobalScope() {
		Scope result = this;
		while(result.getBaseScope() != nullInstance()) {
			result = result.getBaseScope();
		}
		return result;
	}
	public MemoryAllocator getAllocationStrategy() {
		return allocator;
	}
	public SymbolTable getSymbolTable() {
		return symbolTable;
	}
	
///////////////////////////////////////////////////////////////////////
//memory allocation
	// must call leave() when destroying/leaving a scope.
	public void leave() {
		allocator.restoreState();
	}
	public int getAllocatedSize() {
		return allocator.getMaxAllocatedSize();
	}

///////////////////////////////////////////////////////////////////////
//bindings
	public Binding createBinding(IdentifierNode identifierNode, Type type, boolean isVar) {
		Token token = identifierNode.getToken();
		symbolTable.errorIfAlreadyDefined(token);

		String lexeme = token.getLexeme();
		Binding binding = allocateNewBinding(type, isVar, token.getLocation(), lexeme);	
		symbolTable.install(lexeme, binding);

		return binding;
	}
	//meant to be called on the global scope
	public Binding createStaticBinding(IdentifierNode identifierNode, Type type, boolean isVar, String anonymousSymbol, Scope localScope) {
		Token token = identifierNode.getToken();

		String lexeme = token.getLexeme();
		Binding binding = allocateNewBinding(type, isVar, token.getLocation(), lexeme);
		symbolTable.install(anonymousSymbol, binding);

		SymbolTable localSymbolTable = localScope.getSymbolTable();
		localSymbolTable.errorIfAlreadyDefined(token);
		localSymbolTable.install(lexeme, binding);

		return binding;
	}
	private Binding allocateNewBinding(Type type, boolean isVar, TextLocation textLocation, String lexeme) {
		MemoryLocation memoryLocation = allocator.allocate(type.getSize());
		return new Binding(type, isVar, textLocation, memoryLocation, lexeme);
	}
	
///////////////////////////////////////////////////////////////////////
//toString
	public String toString() {
		String result = "scope: ";
		result += " hash "+ hashCode() + "\n";
		result += symbolTable;
		return result;
	}

	public String getHashCode() {
		return "" + hashCode();
	}

////////////////////////////////////////////////////////////////////////////////////
//Null Scope object - lazy singleton (Lazy Holder) implementation pattern
	public static Scope nullInstance() {
		return NullScope.instance;
	}
	private static class NullScope extends Scope {
		private static NullScope instance = new NullScope();

		private NullScope() {
			super(	new PositiveMemoryAllocator(MemoryAccessMethod.NULL_ACCESS, "", 0),
					null);
		}
		public String toString() {
			return "scope: the-null-scope";
		}
		@Override
		public Binding createBinding(IdentifierNode identifierNode, Type type, boolean isVar) {
			unscopedIdentifierError(identifierNode.getToken());
			return super.createBinding(identifierNode, type, isVar);
		}
		// subscopes of null scope need their own strategy.  Assumes global block is static.
		public Scope createSubscope() {
			return new Scope(programScopeAllocator(), this);
		}
	}


///////////////////////////////////////////////////////////////////////
//error reporting
	private static void unscopedIdentifierError(Token token) {
		PikaLogger log = PikaLogger.getLogger("compiler.scope");
		log.severe("variable " + token.getLexeme() + 
				" used outside of any scope at " + token.getLocation());
	}

}
