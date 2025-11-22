package org.jmrtd.lds;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.jmrtd.cert.CVCPrincipal;

/* loaded from: classes2.dex */
public class CVCAFile extends AbstractLDSFile {
    public static final byte CAR_TAG = 66;
    public static final int LENGTH = 36;
    private static final long serialVersionUID = -1100904058684365703L;
    private String altCAReference;
    private String caReference;
    private short fid;

    public CVCAFile(InputStream inputStream) throws IOException {
        this((short) 284, inputStream);
    }

    public CVCAFile(String str, String str2) {
        this((short) 284, str, str2);
    }

    public CVCAFile(short s7, InputStream inputStream) throws IOException {
        this.caReference = null;
        this.altCAReference = null;
        this.fid = s7;
        readObject(inputStream);
    }

    public CVCAFile(short s7, String str) {
        this(s7, str, null);
    }

    public CVCAFile(short s7, String str, String str2) {
        this.caReference = null;
        this.altCAReference = null;
        if (str == null || str.length() > 16 || (str2 != null && str2.length() > 16)) {
            throw new IllegalArgumentException();
        }
        this.fid = s7;
        this.caReference = str;
        this.altCAReference = str2;
    }

    public boolean equals(Object obj) {
        if (obj == null || !getClass().equals(obj.getClass())) {
            return false;
        }
        CVCAFile cVCAFile = (CVCAFile) obj;
        if (!this.caReference.equals(cVCAFile.caReference)) {
            return false;
        }
        String str = this.altCAReference;
        return (str == null && cVCAFile.altCAReference == null) || (str != null && str.equals(cVCAFile.altCAReference));
    }

    public CVCPrincipal getAltCAReference() {
        if (this.altCAReference == null) {
            return null;
        }
        return new CVCPrincipal(this.altCAReference);
    }

    public CVCPrincipal getCAReference() {
        if (this.caReference == null) {
            return null;
        }
        return new CVCPrincipal(this.caReference);
    }

    @Override // org.jmrtd.lds.AbstractLDSFile, org.jmrtd.lds.LDSElement
    public /* bridge */ /* synthetic */ byte[] getEncoded() {
        return super.getEncoded();
    }

    public short getFID() {
        return this.fid;
    }

    @Override // org.jmrtd.lds.LDSFile
    public int getLength() {
        return 36;
    }

    public int hashCode() {
        int r02 = this.caReference.hashCode() * 11;
        String str = this.altCAReference;
        return r02 + (str != null ? str.hashCode() * 13 : 0) + 5;
    }

    @Override // org.jmrtd.lds.AbstractLDSFile
    public void readObject(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        int r6 = dataInputStream.read();
        if (r6 != 66) {
            throw new IllegalArgumentException("Wrong tag, expected " + Integer.toHexString(66) + ", found " + Integer.toHexString(r6));
        }
        int r62 = dataInputStream.read();
        if (r62 > 16) {
            throw new IllegalArgumentException("Wrong length");
        }
        byte[] bArr = new byte[r62];
        dataInputStream.readFully(bArr);
        this.caReference = new String(bArr);
        int r63 = dataInputStream.read();
        if (r63 != 0 && r63 != -1) {
            if (r63 != 66) {
                throw new IllegalArgumentException("Wrong tag");
            }
            int r64 = dataInputStream.read();
            if (r64 > 16) {
                throw new IllegalArgumentException("Wrong length");
            }
            byte[] bArr2 = new byte[r64];
            dataInputStream.readFully(bArr2);
            this.altCAReference = new String(bArr2);
            r63 = dataInputStream.read();
        }
        while (r63 != -1) {
            if (r63 != 0) {
                throw new IllegalArgumentException("Bad file padding");
            }
            r63 = dataInputStream.read();
        }
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder("CA reference: \"");
        sb2.append(this.caReference);
        sb2.append("\"");
        if (this.altCAReference != null) {
            str = ", Alternative CA reference: " + this.altCAReference;
        } else {
            str = "";
        }
        sb2.append(str);
        return sb2.toString();
    }

    @Override // org.jmrtd.lds.AbstractLDSFile
    public void writeObject(OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[36];
        bArr[0] = CAR_TAG;
        bArr[1] = (byte) this.caReference.length();
        System.arraycopy(this.caReference.getBytes(), 0, bArr, 2, bArr[1]);
        String str = this.altCAReference;
        if (str != null) {
            int r42 = bArr[1] + 2;
            bArr[r42] = CAR_TAG;
            int r22 = r42 + 1;
            bArr[r22] = (byte) str.length();
            System.arraycopy(this.altCAReference.getBytes(), 0, bArr, r42 + 2, bArr[r22]);
        }
        outputStream.write(bArr);
    }
}
