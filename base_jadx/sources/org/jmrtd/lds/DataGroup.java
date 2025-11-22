package org.jmrtd.lds;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public abstract class DataGroup extends AbstractTaggedLDSFile {
    private static final long serialVersionUID = -4761360877353069639L;

    public DataGroup(int r12) {
        super(r12);
    }

    public DataGroup(int r12, InputStream inputStream) throws IOException {
        super(r12, inputStream);
    }

    @Override // org.jmrtd.lds.AbstractTaggedLDSFile
    public String toString() {
        return "DataGroup [" + Integer.toHexString(getTag()) + " (" + getLength() + ")]";
    }
}
