package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public abstract class DERGenerator extends ASN1Generator {
    private boolean _isExplicit;
    private int _tagNo;
    private boolean _tagged;

    public DERGenerator(OutputStream outputStream) {
        super(outputStream);
        this._tagged = false;
    }

    public DERGenerator(OutputStream outputStream, int r22, boolean z10) {
        super(outputStream);
        this._tagged = true;
        this._isExplicit = z10;
        this._tagNo = r22;
    }

    private void writeLength(OutputStream outputStream, int r52) throws IOException {
        if (r52 <= 127) {
            outputStream.write((byte) r52);
            return;
        }
        int r12 = r52;
        int r22 = 1;
        while (true) {
            r12 >>>= 8;
            if (r12 == 0) {
                break;
            } else {
                r22++;
            }
        }
        outputStream.write((byte) (r22 | 128));
        for (int r23 = (r22 - 1) * 8; r23 >= 0; r23 -= 8) {
            outputStream.write((byte) (r52 >> r23));
        }
    }

    public void writeDEREncoded(int r42, byte[] bArr) throws IOException {
        if (!this._tagged) {
            writeDEREncoded(this._out, r42, bArr);
            return;
        }
        int r02 = this._tagNo;
        int r12 = r02 | 128;
        if (this._isExplicit) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            writeDEREncoded(byteArrayOutputStream, r42, bArr);
            writeDEREncoded(this._out, r02 | 32 | 128, byteArrayOutputStream.toByteArray());
            return;
        }
        if ((r42 & 32) != 0) {
            writeDEREncoded(this._out, r12 | 32, bArr);
        } else {
            writeDEREncoded(this._out, r12, bArr);
        }
    }

    public void writeDEREncoded(OutputStream outputStream, int r22, byte[] bArr) throws IOException {
        outputStream.write(r22);
        writeLength(outputStream, bArr.length);
        outputStream.write(bArr);
    }
}
