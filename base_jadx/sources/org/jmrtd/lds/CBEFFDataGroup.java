package org.jmrtd.lds;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.tlv.TLVOutputStream;
import org.jmrtd.cbeff.BiometricDataBlock;

/* loaded from: classes2.dex */
public abstract class CBEFFDataGroup<R extends BiometricDataBlock> extends DataGroup {
    protected static final Logger LOGGER = Logger.getLogger("org.jmrtd");
    private static final long serialVersionUID = 2702959939408371946L;
    private Random random;
    private List<R> subRecords;

    public CBEFFDataGroup(int r12, InputStream inputStream) throws IOException {
        super(r12, inputStream);
        this.random = new Random();
    }

    public CBEFFDataGroup(int r12, List<R> list) {
        super(r12);
        addAll(list);
        this.random = new SecureRandom();
    }

    public void add(R r6) {
        if (this.subRecords == null) {
            this.subRecords = new ArrayList();
        }
        this.subRecords.add(r6);
    }

    public void addAll(List<R> list) {
        if (this.subRecords == null) {
            this.subRecords = new ArrayList();
        }
        this.subRecords.addAll(list);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CBEFFDataGroup)) {
            return false;
        }
        try {
            List<R> subRecords = getSubRecords();
            List<R> subRecords2 = ((CBEFFDataGroup) obj).getSubRecords();
            int size = subRecords.size();
            if (size != subRecords2.size()) {
                return false;
            }
            for (int r42 = 0; r42 < size; r42++) {
                R r6 = subRecords.get(r42);
                R r10 = subRecords2.get(r42);
                if (r6 == null) {
                    if (r10 != null) {
                        return false;
                    }
                } else if (!r6.equals(r10)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException e10) {
            LOGGER.log(Level.WARNING, "Wrong class", (Throwable) e10);
            return false;
        }
    }

    public List<R> getSubRecords() {
        if (this.subRecords == null) {
            this.subRecords = new ArrayList();
        }
        return new ArrayList(this.subRecords);
    }

    public int hashCode() {
        Iterator<R> it = getSubRecords().iterator();
        int r12 = 1234567891;
        while (it.hasNext()) {
            R next = it.next();
            r12 = next == null ? (r12 * 3) + 5 : ((next.hashCode() + r12) * 5) + 7;
        }
        return (r12 * 7) + 11;
    }

    public void remove(int r22) {
        if (this.subRecords == null) {
            this.subRecords = new ArrayList();
        }
        this.subRecords.remove(r22);
    }

    @Override // org.jmrtd.lds.DataGroup, org.jmrtd.lds.AbstractTaggedLDSFile
    public String toString() {
        StringBuilder sb2 = new StringBuilder("CBEFFDataGroup [");
        List<R> list = this.subRecords;
        if (list == null) {
            sb2.append("null");
        } else {
            Iterator<R> it = list.iterator();
            boolean z10 = true;
            while (it.hasNext()) {
                R next = it.next();
                if (z10) {
                    z10 = false;
                } else {
                    sb2.append(", ");
                }
                sb2.append(next == null ? "null" : next.toString());
            }
        }
        sb2.append(']');
        return sb2.toString();
    }

    public void writeOptionalRandomData(OutputStream outputStream) throws IOException {
        if (this.subRecords.isEmpty()) {
            TLVOutputStream tLVOutputStream = outputStream instanceof TLVOutputStream ? (TLVOutputStream) outputStream : new TLVOutputStream(outputStream);
            tLVOutputStream.writeTag(83);
            byte[] bArr = new byte[8];
            this.random.nextBytes(bArr);
            tLVOutputStream.writeValue(bArr);
        }
    }
}
