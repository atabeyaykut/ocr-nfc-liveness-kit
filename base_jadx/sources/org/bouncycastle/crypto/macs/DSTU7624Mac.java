package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.engines.DSTU7624Engine;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class DSTU7624Mac implements Mac {
    private static final int BITS_IN_BYTE = 8;
    private int blockSize;
    private byte[] buf;
    private int bufOff;

    /* renamed from: c, reason: collision with root package name */
    private byte[] f11550c;
    private byte[] cTemp;
    private DSTU7624Engine engine;
    private boolean initCalled = false;
    private byte[] kDelta;
    private int macSize;

    public DSTU7624Mac(int r22, int r32) {
        this.engine = new DSTU7624Engine(r22);
        int r23 = r22 / 8;
        this.blockSize = r23;
        this.macSize = r32 / 8;
        this.f11550c = new byte[r23];
        this.kDelta = new byte[r23];
        this.cTemp = new byte[r23];
        this.buf = new byte[r23];
    }

    private void processBlock(byte[] bArr, int r82) throws IllegalStateException, DataLengthException {
        xor(this.f11550c, 0, bArr, r82, this.cTemp);
        this.engine.processBlock(this.cTemp, 0, this.f11550c, 0);
    }

    private void xor(byte[] bArr, int r52, byte[] bArr2, int r72, byte[] bArr3) {
        int length = bArr.length - r52;
        int r12 = this.blockSize;
        if (length < r12 || bArr2.length - r72 < r12 || bArr3.length < r12) {
            throw new IllegalArgumentException("some of input buffers too short");
        }
        for (int r02 = 0; r02 < this.blockSize; r02++) {
            bArr3[r02] = (byte) (bArr[r02 + r52] ^ bArr2[r02 + r72]);
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int r15) throws IllegalStateException, DataLengthException {
        int r02 = this.bufOff;
        byte[] bArr2 = this.buf;
        if (r02 % bArr2.length != 0) {
            throw new DataLengthException("input must be a multiple of blocksize");
        }
        xor(this.f11550c, 0, bArr2, 0, this.cTemp);
        xor(this.cTemp, 0, this.kDelta, 0, this.f11550c);
        DSTU7624Engine dSTU7624Engine = this.engine;
        byte[] bArr3 = this.f11550c;
        dSTU7624Engine.processBlock(bArr3, 0, bArr3, 0);
        int r03 = this.macSize;
        if (r03 + r15 > bArr.length) {
            throw new OutputLengthException("output buffer too short");
        }
        System.arraycopy(this.f11550c, 0, bArr, r15, r03);
        reset();
        return this.macSize;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "DSTU7624Mac";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.macSize;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("Invalid parameter passed to DSTU7624Mac");
        }
        this.engine.init(true, cipherParameters);
        this.initCalled = true;
        reset();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() throws IllegalStateException, DataLengthException {
        Arrays.fill(this.f11550c, (byte) 0);
        Arrays.fill(this.cTemp, (byte) 0);
        Arrays.fill(this.kDelta, (byte) 0);
        Arrays.fill(this.buf, (byte) 0);
        this.engine.reset();
        if (this.initCalled) {
            DSTU7624Engine dSTU7624Engine = this.engine;
            byte[] bArr = this.kDelta;
            dSTU7624Engine.processBlock(bArr, 0, bArr, 0);
        }
        this.bufOff = 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b10) throws IllegalStateException, DataLengthException {
        int r02 = this.bufOff;
        byte[] bArr = this.buf;
        if (r02 == bArr.length) {
            processBlock(bArr, 0);
            this.bufOff = 0;
        }
        byte[] bArr2 = this.buf;
        int r12 = this.bufOff;
        this.bufOff = r12 + 1;
        bArr2[r12] = b10;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int r6, int r72) throws IllegalStateException, DataLengthException {
        if (r72 < 0) {
            throw new IllegalArgumentException("can't have a negative input length!");
        }
        int blockSize = this.engine.getBlockSize();
        int r12 = this.bufOff;
        int r22 = blockSize - r12;
        if (r72 > r22) {
            System.arraycopy(bArr, r6, this.buf, r12, r22);
            processBlock(this.buf, 0);
            this.bufOff = 0;
            r72 -= r22;
            r6 += r22;
            while (r72 > blockSize) {
                processBlock(bArr, r6);
                r72 -= blockSize;
                r6 += blockSize;
            }
        }
        System.arraycopy(bArr, r6, this.buf, this.bufOff, r72);
        this.bufOff += r72;
    }
}
