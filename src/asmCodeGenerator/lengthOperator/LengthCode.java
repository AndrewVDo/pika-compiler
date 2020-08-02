package asmCodeGenerator.lengthOperator;

import asmCodeGenerator.SimpleCodeGenerator;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import parseTree.ParseNode;

import static asmCodeGenerator.Record.RECORD_GET_HEADER_INFO_FUNCTION;
import static asmCodeGenerator.Record.RECORD_LENGTH_OFFSET;
import static asmCodeGenerator.codeStorage.ASMOpcode.Call;
import static asmCodeGenerator.codeStorage.ASMOpcode.PushI;

public class LengthCode implements SimpleCodeGenerator {
    @Override
    public ASMCodeFragment generate(ParseNode Node) {
        ASMCodeFragment frag = new ASMCodeFragment(ASMCodeFragment.CodeType.GENERATES_VALUE);

        frag.add(PushI, RECORD_LENGTH_OFFSET);               //[... BASE_ADDRESS OFFSET]
        frag.add(Call, RECORD_GET_HEADER_INFO_FUNCTION);    //[... INFO]

        return frag;
    }
}
