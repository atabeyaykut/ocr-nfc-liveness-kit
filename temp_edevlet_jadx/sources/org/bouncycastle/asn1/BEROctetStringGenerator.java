package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public class BEROctetStringGenerator extends BERGenerator {

    public class BufferedBEROctetStream extends OutputStream {
        private byte[] _buf;
        private DEROutputStream _derOut;
        private int _off = 0;

        public BufferedBEROctetStream(byte[] bArr) {
            this._buf = bArr;
            this._derOut = new DEROutputStream(BEROctetStringGenerator.this._out);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            int r02 = this._off;
            if (r02 != 0) {
                DEROctetString.encode(this._derOut, true, this._buf, 0, r02);
            }
            this._derOut.flushInternal();
            BEROctetStringGenerator.this.writeBEREnd();
        }

        @Override // java.io.OutputStream
        public void write(int r52) throws IOException {
            byte[] bArr = this._buf;
            int r12 = this._off;
            int r22 = r12 + 1;
            this._off = r22;
            bArr[r12] = (byte) r52;
            if (r22 == bArr.length) {
                DEROctetString.encode(this._derOut, true, bArr, 0, bArr.length);
                this._off = 0;
            }
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int r82, int r92) throws IOException {
            int r32;
            byte[] bArr2 = this._buf;
            int length = bArr2.length;
            int r22 = this._off;
            int r33 = length - r22;
            if (r92 < r33) {
                System.arraycopy(bArr, r82, bArr2, r22, r92);
                this._off += r92;
                return;
            }
            if (r22 > 0) {
                System.arraycopy(bArr, r82, bArr2, r22, r33);
                r32 = r33 + 0;
                DEROctetString.encode(this._derOut, true, this._buf, 0, length);
            } else {
                r32 = 0;
            }
            while (true) {
                int r02 = r92 - r32;
                if (r02 < length) {
                    System.arraycopy(bArr, r82 + r32, this._buf, 0, r02);
                    this._off = r02;
                    return;
                } else {
                    DEROctetString.encode(this._derOut, true, bArr, r82 + r32, length);
                    r32 += length;
                }
            }
        }
    }

    public BEROctetStringGenerator(OutputStream outputStream) throws IOException {
        super(outputStream);
        writeBERHeader(36);
    }

    public BEROctetStringGenerator(OutputStream outputStream, int r22, boolean z10) throws IOException {
        super(outputStream, r22, z10);
        writeBERHeader(36);
    }

    public OutputStream getOctetOutputStream() {
        return getOctetOutputStream(new byte[1000]);
    }

    public OutputStream getOctetOutputStream(byte[] bArr) {
        return new BufferedBEROctetStream(bArr);
    }
}
