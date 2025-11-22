package org.bouncycastle.util.encoders;

/* loaded from: classes2.dex */
public class BufferedDecoder {
    protected byte[] buf;
    protected int bufOff;
    protected Translator translator;

    public BufferedDecoder(Translator translator, int r22) {
        this.translator = translator;
        if (r22 % translator.getEncodedBlockSize() != 0) {
            throw new IllegalArgumentException("buffer size not multiple of input block size");
        }
        this.buf = new byte[r22];
        this.bufOff = 0;
    }

    public int processByte(byte b10, byte[] bArr, int r10) {
        byte[] bArr2 = this.buf;
        int r02 = this.bufOff;
        int r22 = r02 + 1;
        this.bufOff = r22;
        bArr2[r02] = b10;
        if (r22 != bArr2.length) {
            return 0;
        }
        int r82 = this.translator.decode(bArr2, 0, bArr2.length, bArr, r10);
        this.bufOff = 0;
        return r82;
    }

    public int processBytes(byte[] bArr, int r12, int r13, byte[] bArr2, int r15) {
        if (r13 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        byte[] bArr3 = this.buf;
        int length = bArr3.length;
        int r22 = this.bufOff;
        int r14 = length - r22;
        int r32 = 0;
        if (r13 > r14) {
            System.arraycopy(bArr, r12, bArr3, r22, r14);
            Translator translator = this.translator;
            byte[] bArr4 = this.buf;
            int r02 = translator.decode(bArr4, 0, bArr4.length, bArr2, r15) + 0;
            this.bufOff = 0;
            int r132 = r13 - r14;
            int r122 = r12 + r14;
            int r72 = r15 + r02;
            int length2 = r132 - (r132 % this.buf.length);
            r32 = r02 + this.translator.decode(bArr, r122, length2, bArr2, r72);
            r13 = r132 - length2;
            r12 = r122 + length2;
        }
        if (r13 != 0) {
            System.arraycopy(bArr, r12, this.buf, this.bufOff, r13);
            this.bufOff += r13;
        }
        return r32;
    }
}
