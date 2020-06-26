package asmCodeGenerator;

import semanticAnalyzer.types.Type;

public class RecordGenerator {
    protected int typeIdentifier;

    protected boolean isImmutable;
    protected boolean isReference;
    protected boolean isDeleted;
    protected boolean isPermanent;

    //public void setType(Type type);
    //public void setStatus(boolean isMutable, boolean isPermanent);

    protected int generateStatus() {
        int status = 0;
        if(this.isImmutable) {
            status += 1;
        }
        if(this.isReference) {
            status += 2;
        }
        if(this.isDeleted) {
            status += 4;
        }
        if(this.isPermanent) {
            status += 8;
        }
        return status;
    }
}
