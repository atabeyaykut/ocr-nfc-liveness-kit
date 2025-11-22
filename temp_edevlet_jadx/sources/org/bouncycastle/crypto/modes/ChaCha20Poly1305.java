package org.bouncycastle.crypto.modes;

import android.support.v4.media.a;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.engines.ChaCha7539Engine;
import org.bouncycastle.crypto.macs.Poly1305;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class ChaCha20Poly1305 implements AEADCipher {
    private static final long AAD_LIMIT = -1;
    private static final int BUF_SIZE = 64;
    private static final long DATA_LIMIT = 274877906880L;
    private static final int KEY_SIZE = 32;
    private static final int MAC_SIZE = 16;
    private static final int NONCE_SIZE = 12;
    private static final byte[] ZEROES = new byte[15];
    private long aadCount;
    private final byte[] buf;
    private int bufPos;
    private final ChaCha7539Engine chacha20;
    private long dataCount;
    private byte[] initialAAD;
    private final byte[] key;
    private final byte[] mac;
    private final byte[] nonce;
    private final Mac poly1305;
    private int state;

    public static final class State {
        static final int DEC_AAD = 6;
        static final int DEC_DATA = 7;
        static final int DEC_FINAL = 8;
        static final int DEC_INIT = 5;
        static final int ENC_AAD = 2;
        static final int ENC_DATA = 3;
        static final int ENC_FINAL = 4;
        static final int ENC_INIT = 1;
        static final int UNINITIALIZED = 0;

        private State() {
        }
    }

    public ChaCha20Poly1305() {
        this(new Poly1305());
    }

    public ChaCha20Poly1305(Mac mac) {
        this.key = new byte[32];
        this.nonce = new byte[12];
        this.buf = new byte[80];
        this.mac = new byte[16];
        this.state = 0;
        if (mac == null) {
            throw new NullPointerException("'poly1305' cannot be null");
        }
        if (16 != mac.getMacSize()) {
            throw new IllegalArgumentException("'poly1305' must be a 128-bit MAC");
        }
        this.chacha20 = new ChaCha7539Engine();
        this.poly1305 = mac;
    }

    private void checkAAD() {
        int r02 = this.state;
        int r22 = 2;
        if (r02 != 1) {
            if (r02 == 2) {
                return;
            }
            if (r02 == 4) {
                throw new IllegalStateException("ChaCha20Poly1305 cannot be reused for encryption");
            }
            r22 = 6;
            if (r02 != 5) {
                if (r02 != 6) {
                    throw new IllegalStateException();
                }
                return;
            }
        }
        this.state = r22;
    }

    private void checkData() throws IllegalStateException, DataLengthException {
        int r02;
        switch (this.state) {
            case 1:
            case 2:
                r02 = 3;
                break;
            case 3:
            case 7:
                return;
            case 4:
                throw new IllegalStateException("ChaCha20Poly1305 cannot be reused for encryption");
            case 5:
            case 6:
                r02 = 7;
                break;
            default:
                throw new IllegalStateException();
        }
        finishAAD(r02);
    }

    private void finishAAD(int r32) throws IllegalStateException, DataLengthException {
        padMAC(this.aadCount);
        this.state = r32;
    }

    private void finishData(int r72) throws IllegalStateException, DataLengthException {
        padMAC(this.dataCount);
        byte[] bArr = new byte[16];
        Pack.longToLittleEndian(this.aadCount, bArr, 0);
        Pack.longToLittleEndian(this.dataCount, bArr, 8);
        this.poly1305.update(bArr, 0, 16);
        this.poly1305.doFinal(this.mac, 0);
        this.state = r72;
    }

    private long incrementCount(long j10, int r92, long j11) {
        long j12 = r92;
        if (j10 - Long.MIN_VALUE <= (j11 - j12) - Long.MIN_VALUE) {
            return j10 + j12;
        }
        throw new IllegalStateException("Limit exceeded");
    }

    private void initMAC() {
        byte[] bArr = new byte[64];
        try {
            this.chacha20.processBytes(bArr, 0, 64, bArr, 0);
            this.poly1305.init(new KeyParameter(bArr, 0, 32));
        } finally {
            Arrays.clear(bArr);
        }
    }

    private void padMAC(long j10) throws IllegalStateException, DataLengthException {
        int r32 = ((int) j10) & 15;
        if (r32 != 0) {
            this.poly1305.update(ZEROES, 0, 16 - r32);
        }
    }

    private void processData(byte[] bArr, int r10, int r11, byte[] bArr2, int r13) {
        if (r13 > bArr2.length - r11) {
            throw new OutputLengthException("Output buffer too short");
        }
        this.chacha20.processBytes(bArr, r10, r11, bArr2, r13);
        this.dataCount = incrementCount(this.dataCount, r11, DATA_LIMIT);
    }

    private void reset(boolean z10, boolean z11) throws IllegalStateException, DataLengthException {
        Arrays.clear(this.buf);
        if (z10) {
            Arrays.clear(this.mac);
        }
        this.aadCount = 0L;
        this.dataCount = 0L;
        this.bufPos = 0;
        switch (this.state) {
            case 1:
            case 5:
                break;
            case 2:
            case 3:
            case 4:
                this.state = 4;
                return;
            case 6:
            case 7:
            case 8:
                this.state = 5;
                break;
            default:
                throw new IllegalStateException();
        }
        if (z11) {
            this.chacha20.reset();
        }
        initMAC();
        byte[] bArr = this.initialAAD;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int r13) throws InvalidCipherTextException, IllegalStateException, DataLengthException {
        int r02;
        if (bArr == null) {
            throw new NullPointerException("'out' cannot be null");
        }
        if (r13 < 0) {
            throw new IllegalArgumentException("'outOff' cannot be negative");
        }
        checkData();
        Arrays.clear(this.mac);
        int r03 = this.state;
        if (r03 == 3) {
            int r82 = this.bufPos;
            r02 = r82 + 16;
            if (r13 > bArr.length - r02) {
                throw new OutputLengthException("Output buffer too short");
            }
            if (r82 > 0) {
                processData(this.buf, 0, r82, bArr, r13);
                this.poly1305.update(bArr, r13, this.bufPos);
            }
            finishData(4);
            System.arraycopy(this.mac, 0, bArr, r13 + this.bufPos, 16);
        } else {
            if (r03 != 7) {
                throw new IllegalStateException();
            }
            int r04 = this.bufPos;
            if (r04 < 16) {
                throw new InvalidCipherTextException("data too short");
            }
            r02 = r04 - 16;
            if (r13 > bArr.length - r02) {
                throw new OutputLengthException("Output buffer too short");
            }
            if (r02 > 0) {
                this.poly1305.update(this.buf, 0, r02);
                processData(this.buf, 0, r02, bArr, r13);
            }
            finishData(8);
            if (!Arrays.constantTimeAreEqual(16, this.mac, 0, this.buf, r02)) {
                throw new InvalidCipherTextException("mac check in ChaCha20Poly1305 failed");
            }
        }
        reset(false, true);
        return r02;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return "ChaCha20Poly1305";
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return Arrays.clone(this.mac);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int r42) {
        int r43 = Math.max(0, r42) + this.bufPos;
        int r12 = this.state;
        if (r12 == 1 || r12 == 2 || r12 == 3) {
            return r43 + 16;
        }
        if (r12 == 5 || r12 == 6 || r12 == 7) {
            return Math.max(0, r43 - 16);
        }
        throw new IllegalStateException();
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int r42) {
        int r43 = Math.max(0, r42) + this.bufPos;
        int r12 = this.state;
        if (r12 != 1 && r12 != 2 && r12 != 3) {
            if (r12 != 5 && r12 != 6 && r12 != 7) {
                throw new IllegalStateException();
            }
            r43 = Math.max(0, r43 - 16);
        }
        return r43 - (r43 % 64);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        ParametersWithIV parametersWithIV;
        KeyParameter key;
        byte[] nonce;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            int macSize = aEADParameters.getMacSize();
            if (128 != macSize) {
                throw new IllegalArgumentException(a.d("Invalid value for MAC size: ", macSize));
            }
            key = aEADParameters.getKey();
            nonce = aEADParameters.getNonce();
            parametersWithIV = new ParametersWithIV(key, nonce);
            this.initialAAD = aEADParameters.getAssociatedText();
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                throw new IllegalArgumentException("invalid parameters passed to ChaCha20Poly1305");
            }
            parametersWithIV = (ParametersWithIV) cipherParameters;
            key = (KeyParameter) parametersWithIV.getParameters();
            nonce = parametersWithIV.getIV();
            this.initialAAD = null;
        }
        if (key == null) {
            if (this.state == 0) {
                throw new IllegalArgumentException("Key must be specified in initial init");
            }
        } else if (32 != key.getKeyLength()) {
            throw new IllegalArgumentException("Key must be 256 bits");
        }
        if (nonce == null || 12 != nonce.length) {
            throw new IllegalArgumentException("Nonce must be 96 bits");
        }
        if (this.state != 0 && z10 && Arrays.areEqual(this.nonce, nonce) && (key == null || Arrays.areEqual(this.key, key.getKey()))) {
            throw new IllegalArgumentException("cannot reuse nonce for ChaCha20Poly1305 encryption");
        }
        if (key != null) {
            key.copyTo(this.key, 0, 32);
        }
        System.arraycopy(nonce, 0, this.nonce, 0, 12);
        this.chacha20.init(true, parametersWithIV);
        this.state = z10 ? 1 : 5;
        reset(true, false);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b10) throws IllegalStateException {
        checkAAD();
        this.aadCount = incrementCount(this.aadCount, 1, -1L);
        this.poly1305.update(b10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int r92, int r10) throws IllegalStateException, DataLengthException {
        if (bArr == null) {
            throw new NullPointerException("'in' cannot be null");
        }
        if (r92 < 0) {
            throw new IllegalArgumentException("'inOff' cannot be negative");
        }
        if (r10 < 0) {
            throw new IllegalArgumentException("'len' cannot be negative");
        }
        if (r92 > bArr.length - r10) {
            throw new DataLengthException("Input buffer too short");
        }
        checkAAD();
        if (r10 > 0) {
            this.aadCount = incrementCount(this.aadCount, r10, -1L);
            this.poly1305.update(bArr, r92, r10);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b10, byte[] bArr, int r13) throws IllegalStateException, DataLengthException {
        checkData();
        int r02 = this.state;
        if (r02 == 3) {
            byte[] bArr2 = this.buf;
            int r03 = this.bufPos;
            bArr2[r03] = b10;
            int r04 = r03 + 1;
            this.bufPos = r04;
            if (r04 != 64) {
                return 0;
            }
            processData(bArr2, 0, 64, bArr, r13);
            this.poly1305.update(bArr, r13, 64);
            this.bufPos = 0;
            return 64;
        }
        if (r02 != 7) {
            throw new IllegalStateException();
        }
        byte[] bArr3 = this.buf;
        int r12 = this.bufPos;
        bArr3[r12] = b10;
        int r14 = r12 + 1;
        this.bufPos = r14;
        if (r14 != bArr3.length) {
            return 0;
        }
        this.poly1305.update(bArr3, 0, 64);
        processData(this.buf, 0, 64, bArr, r13);
        byte[] bArr4 = this.buf;
        System.arraycopy(bArr4, 64, bArr4, 0, 16);
        this.bufPos = 16;
        return 64;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0096 A[LOOP:2: B:29:0x0094->B:30:0x0096, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b3  */
    @Override // org.bouncycastle.crypto.modes.AEADCipher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int processBytes(byte[] r17, int r18, int r19, byte[] r20, int r21) throws java.lang.IllegalStateException, org.bouncycastle.crypto.DataLengthException {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.modes.ChaCha20Poly1305.processBytes(byte[], int, int, byte[], int):int");
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() throws IllegalStateException, DataLengthException {
        reset(true, true);
    }
}
