package asmCodeGenerator;

import semanticAnalyzer.types.Type;

public abstract class RecordGenerator {
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
            status = status | (1 << 0);
        }
        if(this.isReference) {
            status = status | (1 << 1);
        }
        if(this.isDeleted) {
            status = status | (1 << 2);
        }
        if(this.isPermanent) {
            status = status | (1 << 3);
        }
        return status;
    }

    protected abstract int generateHeaderSize();
}
