package org.bouncycastle.crypto.digests;

import androidx.camera.camera2.internal.c;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.engines.SparkleEngine;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SparkleDigest implements ExtendedDigest {
    private static final int RATE_BYTES = 16;
    private static final int RATE_WORDS = 4;
    private final int DIGEST_BYTES;
    private final int SPARKLE_STEPS_BIG;
    private final int SPARKLE_STEPS_SLIM;
    private final int STATE_WORDS;
    private String algorithmName;
    private final byte[] m_buf = new byte[16];
    private int m_bufPos = 0;
    private final int[] state;

    /* renamed from: org.bouncycastle.crypto.digests.SparkleDigest$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$digests$SparkleDigest$SparkleParameters;

        static {
            int[] r02 = new int[SparkleParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$digests$SparkleDigest$SparkleParameters = r02;
            try {
                r02[SparkleParameters.ESCH256.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$digests$SparkleDigest$SparkleParameters[SparkleParameters.ESCH384.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class Friend {
        private static final Friend INSTANCE = new Friend();

        private Friend() {
        }
    }

    public enum SparkleParameters {
        ESCH256,
        ESCH384
    }

    public SparkleDigest(SparkleParameters sparkleParameters) {
        int r42 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$digests$SparkleDigest$SparkleParameters[sparkleParameters.ordinal()];
        if (r42 == 1) {
            this.algorithmName = "ESCH-256";
            this.DIGEST_BYTES = 32;
            this.SPARKLE_STEPS_SLIM = 7;
            this.SPARKLE_STEPS_BIG = 11;
            this.STATE_WORDS = 12;
        } else {
            if (r42 != 2) {
                throw new IllegalArgumentException("Invalid definition of SCHWAEMM instance");
            }
            this.algorithmName = "ESCH-384";
            this.DIGEST_BYTES = 48;
            this.SPARKLE_STEPS_SLIM = 8;
            this.SPARKLE_STEPS_BIG = 12;
            this.STATE_WORDS = 16;
        }
        this.state = new int[this.STATE_WORDS];
    }

    private static int ELL(int r22) {
        return (r22 & 65535) ^ Integers.rotateRight(r22, 16);
    }

    private void processBlock(byte[] bArr, int r92, int r10) {
        int r02 = Pack.littleEndianToInt(bArr, r92);
        int r12 = Pack.littleEndianToInt(bArr, r92 + 4);
        int r22 = Pack.littleEndianToInt(bArr, r92 + 8);
        int r82 = Pack.littleEndianToInt(bArr, r92 + 12);
        int r93 = ELL(r02 ^ r22);
        int r32 = ELL(r12 ^ r82);
        int[] r42 = this.state;
        r42[0] = (r02 ^ r32) ^ r42[0];
        r42[1] = (r12 ^ r93) ^ r42[1];
        r42[2] = r42[2] ^ (r22 ^ r32);
        r42[3] = (r82 ^ r93) ^ r42[3];
        r42[4] = r42[4] ^ r32;
        r42[5] = r42[5] ^ r93;
        if (this.STATE_WORDS != 16) {
            SparkleEngine.sparkle_opt12(Friend.INSTANCE, this.state, r10);
            return;
        }
        r42[6] = r42[6] ^ r32;
        r42[7] = r93 ^ r42[7];
        SparkleEngine.sparkle_opt16(Friend.INSTANCE, this.state, r10);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r92) {
        if (r92 > bArr.length - this.DIGEST_BYTES) {
            throw new OutputLengthException(c.h(new StringBuilder(), this.algorithmName, " input buffer too short"));
        }
        int r02 = this.m_bufPos;
        if (r02 < 16) {
            int[] r32 = this.state;
            int r42 = (this.STATE_WORDS >> 1) - 1;
            r32[r42] = r32[r42] ^ 16777216;
            this.m_buf[r02] = ISOFileInfo.DATA_BYTES1;
            while (true) {
                int r03 = this.m_bufPos + 1;
                this.m_bufPos = r03;
                if (r03 >= 16) {
                    break;
                }
                this.m_buf[r03] = 0;
            }
        } else {
            int[] r04 = this.state;
            int r33 = (this.STATE_WORDS >> 1) - 1;
            r04[r33] = r04[r33] ^ 33554432;
        }
        processBlock(this.m_buf, 0, this.SPARKLE_STEPS_BIG);
        Pack.intToLittleEndian(this.state, 0, 4, bArr, r92);
        if (this.STATE_WORDS == 16) {
            SparkleEngine.sparkle_opt16(Friend.INSTANCE, this.state, this.SPARKLE_STEPS_SLIM);
            Pack.intToLittleEndian(this.state, 0, 4, bArr, r92 + 16);
            SparkleEngine.sparkle_opt16(Friend.INSTANCE, this.state, this.SPARKLE_STEPS_SLIM);
            Pack.intToLittleEndian(this.state, 0, 4, bArr, r92 + 32);
        } else {
            SparkleEngine.sparkle_opt12(Friend.INSTANCE, this.state, this.SPARKLE_STEPS_SLIM);
            Pack.intToLittleEndian(this.state, 0, 4, bArr, r92 + 16);
        }
        reset();
        return this.DIGEST_BYTES;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return this.algorithmName;
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.DIGEST_BYTES;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        Arrays.fill(this.state, 0);
        Arrays.fill(this.m_buf, (byte) 0);
        this.m_bufPos = 0;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        if (this.m_bufPos == 16) {
            processBlock(this.m_buf, 0, this.SPARKLE_STEPS_SLIM);
            this.m_bufPos = 0;
        }
        byte[] bArr = this.m_buf;
        int r12 = this.m_bufPos;
        this.m_bufPos = r12 + 1;
        bArr[r12] = b10;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r6, int r72) {
        int r12;
        if (r6 > bArr.length - r72) {
            throw new DataLengthException(c.h(new StringBuilder(), this.algorithmName, " input buffer too short"));
        }
        if (r72 < 1) {
            return;
        }
        int r02 = this.m_bufPos;
        int r13 = 16 - r02;
        if (r72 <= r13) {
            System.arraycopy(bArr, r6, this.m_buf, r02, r72);
            this.m_bufPos += r72;
            return;
        }
        if (r02 > 0) {
            System.arraycopy(bArr, r6, this.m_buf, r02, r13);
            processBlock(this.m_buf, 0, this.SPARKLE_STEPS_SLIM);
            r12 = r13 + 0;
        } else {
            r12 = 0;
        }
        while (true) {
            int r03 = r72 - r12;
            if (r03 <= 16) {
                System.arraycopy(bArr, r6 + r12, this.m_buf, 0, r03);
                this.m_bufPos = r03;
                return;
            } else {
                processBlock(bArr, r6 + r12, this.SPARKLE_STEPS_SLIM);
                r12 += 16;
            }
        }
    }
}
