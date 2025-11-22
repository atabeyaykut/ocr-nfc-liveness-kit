package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes2.dex */
public class ASN1OutputStream {
    private OutputStream os;

    public ASN1OutputStream(OutputStream outputStream) {
        this.os = outputStream;
    }

    public static ASN1OutputStream create(OutputStream outputStream) {
        return new ASN1OutputStream(outputStream);
    }

    public static ASN1OutputStream create(OutputStream outputStream, String str) {
        return str.equals(ASN1Encoding.DER) ? new DEROutputStream(outputStream) : str.equals(ASN1Encoding.DL) ? new DLOutputStream(outputStream) : new ASN1OutputStream(outputStream);
    }

    public static int getLengthOfDL(int r12) {
        if (r12 < 128) {
            return 1;
        }
        int r02 = 2;
        while (true) {
            r12 >>>= 8;
            if (r12 == 0) {
                return r02;
            }
            r02++;
        }
    }

    public static int getLengthOfEncodingDL(boolean z10, int r22) {
        return getLengthOfDL(r22) + (z10 ? 1 : 0) + r22;
    }

    public static int getLengthOfIdentifier(int r12) {
        if (r12 < 31) {
            return 1;
        }
        int r02 = 2;
        while (true) {
            r12 >>>= 7;
            if (r12 == 0) {
                return r02;
            }
            r02++;
        }
    }

    public void close() throws IOException {
        this.os.close();
    }

    public void flush() throws IOException {
        this.os.flush();
    }

    public void flushInternal() throws IOException {
    }

    public DEROutputStream getDERSubStream() {
        return new DEROutputStream(this.os);
    }

    public DLOutputStream getDLSubStream() {
        return new DLOutputStream(this.os);
    }

    public final void write(int r22) throws IOException {
        this.os.write(r22);
    }

    public final void write(byte[] bArr, int r32, int r42) throws IOException {
        this.os.write(bArr, r32, r42);
    }

    public final void writeDL(int r42) throws IOException {
        if (r42 < 128) {
            write(r42);
            return;
        }
        int r02 = 5;
        byte[] bArr = new byte[5];
        do {
            r02--;
            bArr[r02] = (byte) r42;
            r42 >>>= 8;
        } while (r42 != 0);
        int r43 = 5 - r02;
        int r03 = r02 - 1;
        bArr[r03] = (byte) (r43 | 128);
        write(bArr, r03, r43 + 1);
    }

    public void writeElements(ASN1Encodable[] aSN1EncodableArr) throws IOException {
        for (ASN1Encodable aSN1Encodable : aSN1EncodableArr) {
            aSN1Encodable.toASN1Primitive().encode(this, true);
        }
    }

    public final void writeEncodingDL(boolean z10, int r22, byte b10) throws IOException {
        writeIdentifier(z10, r22);
        writeDL(1);
        write(b10);
    }

    public final void writeEncodingDL(boolean z10, int r22, byte b10, byte[] bArr, int r52, int r6) throws IOException {
        writeIdentifier(z10, r22);
        writeDL(r6 + 1);
        write(b10);
        write(bArr, r52, r6);
    }

    public final void writeEncodingDL(boolean z10, int r22, int r32, byte[] bArr) throws IOException {
        writeIdentifier(z10, r22, r32);
        writeDL(bArr.length);
        write(bArr, 0, bArr.length);
    }

    public final void writeEncodingDL(boolean z10, int r22, byte[] bArr) throws IOException {
        writeIdentifier(z10, r22);
        writeDL(bArr.length);
        write(bArr, 0, bArr.length);
    }

    public final void writeEncodingDL(boolean z10, int r22, byte[] bArr, int r42, int r52) throws IOException {
        writeIdentifier(z10, r22);
        writeDL(r52);
        write(bArr, r42, r52);
    }

    public final void writeEncodingDL(boolean z10, int r22, byte[] bArr, int r42, int r52, byte b10) throws IOException {
        writeIdentifier(z10, r22);
        writeDL(r52 + 1);
        write(bArr, r42, r52);
        write(b10);
    }

    public final void writeEncodingIL(boolean z10, int r22, ASN1Encodable[] aSN1EncodableArr) throws IOException {
        writeIdentifier(z10, r22);
        write(128);
        writeElements(aSN1EncodableArr);
        write(0);
        write(0);
    }

    public final void writeIdentifier(boolean z10, int r22) throws IOException {
        if (z10) {
            write(r22);
        }
    }

    public final void writeIdentifier(boolean z10, int r52, int r6) throws IOException {
        if (z10) {
            if (r6 < 31) {
                write(r52 | r6);
                return;
            }
            byte[] bArr = new byte[6];
            int r22 = 5;
            bArr[5] = (byte) (r6 & CertificateBody.profileType);
            while (r6 > 127) {
                r6 >>>= 7;
                r22--;
                bArr[r22] = (byte) ((r6 & CertificateBody.profileType) | 128);
            }
            int r23 = r22 - 1;
            bArr[r23] = (byte) (31 | r52);
            write(bArr, r23, 6 - r23);
        }
    }

    public final void writeObject(ASN1Encodable aSN1Encodable) throws IOException {
        if (aSN1Encodable == null) {
            throw new IOException("null object detected");
        }
        writePrimitive(aSN1Encodable.toASN1Primitive(), true);
        flushInternal();
    }

    public final void writeObject(ASN1Primitive aSN1Primitive) throws IOException {
        if (aSN1Primitive == null) {
            throw new IOException("null object detected");
        }
        writePrimitive(aSN1Primitive, true);
        flushInternal();
    }

    public void writePrimitive(ASN1Primitive aSN1Primitive, boolean z10) throws IOException {
        aSN1Primitive.encode(this, z10);
    }

    public void writePrimitives(ASN1Primitive[] aSN1PrimitiveArr) throws IOException {
        for (ASN1Primitive aSN1Primitive : aSN1PrimitiveArr) {
            aSN1Primitive.encode(this, true);
        }
    }
}
