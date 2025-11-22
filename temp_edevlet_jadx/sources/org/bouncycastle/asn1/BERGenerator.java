package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public abstract class BERGenerator extends ASN1Generator {
    private boolean _isExplicit;
    private int _tagNo;
    private boolean _tagged;

    public BERGenerator(OutputStream outputStream) {
        super(outputStream);
        this._tagged = false;
    }

    public BERGenerator(OutputStream outputStream, int r22, boolean z10) {
        super(outputStream);
        this._tagged = true;
        this._isExplicit = z10;
        this._tagNo = r22;
    }

    private void writeHdr(int r22) throws IOException {
        this._out.write(r22);
        this._out.write(128);
    }

    @Override // org.bouncycastle.asn1.ASN1Generator
    public OutputStream getRawOutputStream() {
        return this._out;
    }

    public void writeBEREnd() throws IOException {
        this._out.write(0);
        this._out.write(0);
        if (this._tagged && this._isExplicit) {
            this._out.write(0);
            this._out.write(0);
        }
    }

    public void writeBERHeader(int r32) throws IOException {
        if (this._tagged) {
            int r02 = this._tagNo | 128;
            if (this._isExplicit) {
                writeHdr(r02 | 32);
            } else {
                if ((r32 & 32) == 0) {
                    writeHdr(r02);
                    return;
                }
                r32 = r02 | 32;
            }
        }
        writeHdr(r32);
    }
}
