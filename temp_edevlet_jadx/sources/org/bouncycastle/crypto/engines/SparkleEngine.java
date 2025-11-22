package org.bouncycastle.crypto.engines;

import android.support.v4.media.a;
import androidx.camera.camera2.internal.c;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.digests.SparkleDigest;
import org.bouncycastle.crypto.modes.AEADCipher;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SparkleEngine implements AEADCipher {
    private static final int[] RCON = {-1209970334, -1083090816, 951376470, 844003128, -1156479509, 1333558103, -809524792, -1028445891};
    private final int CAP_MASK;
    private final int KEY_BYTES;
    private final int KEY_WORDS;
    private final int RATE_BYTES;
    private final int RATE_WORDS;
    private final int SCHWAEMM_KEY_LEN;
    private final int SCHWAEMM_NONCE_LEN;
    private final int SPARKLE_STEPS_BIG;
    private final int SPARKLE_STEPS_SLIM;
    private final int STATE_WORDS;
    private final int TAG_BYTES;
    private final int TAG_WORDS;
    private final int _A0;
    private final int _A1;
    private final int _M2;
    private final int _M3;
    private String algorithmName;
    private boolean encrypted;
    private byte[] initialAssociatedText;

    /* renamed from: k, reason: collision with root package name */
    private final int[] f11535k;
    private final byte[] m_buf;
    private final int m_bufferSizeDecrypt;
    private final int[] npub;
    private final int[] state;
    private byte[] tag;
    private State m_state = State.Uninitialized;
    private int m_bufPos = 0;

    /* renamed from: org.bouncycastle.crypto.engines.SparkleEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters;
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State;

        static {
            int[] r02 = new int[State.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State = r02;
            try {
                r02[State.DecInit.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[State.DecAad.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[State.DecData.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[State.DecFinal.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[State.EncData.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[State.EncFinal.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[State.EncInit.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[State.EncAad.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] r42 = new int[SparkleParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters = r42;
            try {
                r42[SparkleParameters.SCHWAEMM128_128.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters[SparkleParameters.SCHWAEMM256_128.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters[SparkleParameters.SCHWAEMM192_192.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters[SparkleParameters.SCHWAEMM256_256.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public enum SparkleParameters {
        SCHWAEMM128_128,
        SCHWAEMM256_128,
        SCHWAEMM192_192,
        SCHWAEMM256_256
    }

    public enum State {
        Uninitialized,
        EncInit,
        EncAad,
        EncData,
        EncFinal,
        DecInit,
        DecAad,
        DecData,
        DecFinal
    }

    public SparkleEngine(SparkleParameters sparkleParameters) {
        int r6;
        int r92 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters[sparkleParameters.ordinal()];
        int r32 = 256;
        int r42 = 128;
        if (r92 != 1) {
            r6 = KyberEngine.KyberPolyBytes;
            if (r92 == 2) {
                this.SCHWAEMM_KEY_LEN = 128;
                this.SCHWAEMM_NONCE_LEN = 256;
                this.SPARKLE_STEPS_SLIM = 7;
                this.SPARKLE_STEPS_BIG = 11;
                this.algorithmName = "SCHWAEMM256-128";
                r32 = 128;
            } else if (r92 == 3) {
                r32 = 192;
                this.SCHWAEMM_KEY_LEN = 192;
                this.SCHWAEMM_NONCE_LEN = 192;
                this.SPARKLE_STEPS_SLIM = 7;
                this.SPARKLE_STEPS_BIG = 11;
                this.algorithmName = "SCHWAEMM192-192";
                r42 = 192;
            } else {
                if (r92 != 4) {
                    throw new IllegalArgumentException("Invalid definition of SCHWAEMM instance");
                }
                this.SCHWAEMM_KEY_LEN = 256;
                this.SCHWAEMM_NONCE_LEN = 256;
                this.SPARKLE_STEPS_SLIM = 8;
                this.SPARKLE_STEPS_BIG = 12;
                this.algorithmName = "SCHWAEMM256-256";
                r42 = 256;
                r6 = 512;
            }
        } else {
            this.SCHWAEMM_KEY_LEN = 128;
            this.SCHWAEMM_NONCE_LEN = 128;
            this.SPARKLE_STEPS_SLIM = 7;
            this.SPARKLE_STEPS_BIG = 10;
            this.algorithmName = "SCHWAEMM128-128";
            r32 = 128;
            r6 = 256;
        }
        int r93 = this.SCHWAEMM_KEY_LEN;
        int r02 = r93 >>> 5;
        this.KEY_WORDS = r02;
        this.KEY_BYTES = r93 >>> 3;
        this.TAG_WORDS = r32 >>> 5;
        int r94 = r32 >>> 3;
        this.TAG_BYTES = r94;
        int r33 = r6 >>> 5;
        this.STATE_WORDS = r33;
        int r52 = this.SCHWAEMM_NONCE_LEN;
        int r62 = r52 >>> 5;
        this.RATE_WORDS = r62;
        int r53 = r52 >>> 3;
        this.RATE_BYTES = r53;
        int r72 = r42 >>> 6;
        int r43 = r42 >>> 5;
        this.CAP_MASK = r62 > r43 ? r43 - 1 : -1;
        int r12 = 1 << r72;
        this._A0 = r12 << 24;
        this._A1 = (r12 ^ 1) << 24;
        this._M2 = (r12 ^ 2) << 24;
        this._M3 = (r12 ^ 3) << 24;
        this.state = new int[r33];
        this.f11535k = new int[r02];
        this.npub = new int[r62];
        int r54 = r53 + r94;
        this.m_bufferSizeDecrypt = r54;
        this.m_buf = new byte[r54];
    }

    private static int ELL(int r22) {
        return (r22 & 65535) ^ Integers.rotateRight(r22, 16);
    }

    private void checkAAD() {
        State state;
        int r02 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[this.m_state.ordinal()];
        if (r02 == 1) {
            state = State.DecAad;
        } else {
            if (r02 == 2) {
                return;
            }
            if (r02 == 6) {
                throw new IllegalStateException(getAlgorithmName() + " cannot be reused for encryption");
            }
            if (r02 != 7) {
                if (r02 == 8) {
                    return;
                }
                throw new IllegalStateException(getAlgorithmName() + " needs to be initialized");
            }
            state = State.EncAad;
        }
        this.m_state = state;
    }

    private boolean checkData() {
        switch (AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[this.m_state.ordinal()]) {
            case 1:
            case 2:
                finishAAD(State.DecData);
                return false;
            case 3:
                return false;
            case 4:
            default:
                throw new IllegalStateException(getAlgorithmName() + " needs to be initialized");
            case 5:
                return true;
            case 6:
                throw new IllegalStateException(getAlgorithmName() + " cannot be reused for encryption");
            case 7:
            case 8:
                finishAAD(State.EncData);
                return true;
        }
    }

    private void finishAAD(State state) {
        int r02 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[this.m_state.ordinal()];
        if (r02 == 2 || r02 == 8) {
            processFinalAAD();
        }
        this.m_bufPos = 0;
        this.m_state = state;
    }

    private void processBufferAAD(byte[] bArr, int r11) {
        int r02 = 0;
        while (true) {
            int r12 = this.RATE_WORDS;
            if (r02 >= r12 / 2) {
                sparkle_opt(this.state, this.SPARKLE_STEPS_SLIM);
                return;
            }
            int r13 = (r12 / 2) + r02;
            int[] r22 = this.state;
            int r32 = r22[r02];
            int r23 = r22[r13];
            int r42 = Pack.littleEndianToInt(bArr, (r02 * 4) + r11);
            int r52 = Pack.littleEndianToInt(bArr, (r13 * 4) + r11);
            int[] r6 = this.state;
            int r72 = this.RATE_WORDS;
            r6[r02] = (r42 ^ r23) ^ r6[r72 + r02];
            r6[r13] = ((r23 ^ r32) ^ r52) ^ r6[r72 + (this.CAP_MASK & r13)];
            r02++;
        }
    }

    private void processBufferDecrypt(byte[] bArr, int r18, byte[] bArr2, int r20) {
        if (r20 > bArr2.length - this.RATE_BYTES) {
            throw new OutputLengthException("output buffer too short");
        }
        int r42 = 0;
        while (true) {
            int r52 = this.RATE_WORDS;
            if (r42 >= r52 / 2) {
                sparkle_opt(this.state, this.SPARKLE_STEPS_SLIM);
                this.encrypted = true;
                return;
            }
            int r53 = (r52 / 2) + r42;
            int[] r6 = this.state;
            int r72 = r6[r42];
            int r62 = r6[r53];
            int r82 = r42 * 4;
            int r92 = Pack.littleEndianToInt(bArr, r18 + r82);
            int r10 = r53 * 4;
            int r11 = Pack.littleEndianToInt(bArr, r18 + r10);
            int[] r12 = this.state;
            int r14 = this.RATE_WORDS;
            r12[r42] = ((r72 ^ r62) ^ r92) ^ r12[r14 + r42];
            r12[r53] = (r72 ^ r11) ^ r12[r14 + (this.CAP_MASK & r53)];
            Pack.intToLittleEndian(r92 ^ r72, bArr2, r20 + r82);
            Pack.intToLittleEndian(r11 ^ r62, bArr2, r20 + r10);
            r42++;
        }
    }

    private void processBufferEncrypt(byte[] bArr, int r18, byte[] bArr2, int r20) {
        if (r20 > bArr2.length - this.RATE_BYTES) {
            throw new OutputLengthException("output buffer too short");
        }
        int r42 = 0;
        while (true) {
            int r52 = this.RATE_WORDS;
            if (r42 >= r52 / 2) {
                sparkle_opt(this.state, this.SPARKLE_STEPS_SLIM);
                this.encrypted = true;
                return;
            }
            int r53 = (r52 / 2) + r42;
            int[] r6 = this.state;
            int r72 = r6[r42];
            int r62 = r6[r53];
            int r82 = r42 * 4;
            int r92 = Pack.littleEndianToInt(bArr, r18 + r82);
            int r10 = r53 * 4;
            int r11 = Pack.littleEndianToInt(bArr, r18 + r10);
            int[] r12 = this.state;
            int r14 = this.RATE_WORDS;
            r12[r42] = (r62 ^ r92) ^ r12[r14 + r42];
            r12[r53] = ((r72 ^ r62) ^ r11) ^ r12[r14 + (this.CAP_MASK & r53)];
            Pack.intToLittleEndian(r92 ^ r72, bArr2, r20 + r82);
            Pack.intToLittleEndian(r11 ^ r62, bArr2, r20 + r10);
            r42++;
        }
    }

    private void processFinalAAD() {
        int r02 = this.m_bufPos;
        int r22 = 0;
        if (r02 < this.RATE_BYTES) {
            int[] r12 = this.state;
            int r32 = this.STATE_WORDS - 1;
            r12[r32] = r12[r32] ^ this._A0;
            this.m_buf[r02] = ISOFileInfo.DATA_BYTES1;
            while (true) {
                int r03 = this.m_bufPos + 1;
                this.m_bufPos = r03;
                if (r03 >= this.RATE_BYTES) {
                    break;
                } else {
                    this.m_buf[r03] = 0;
                }
            }
        } else {
            int[] r04 = this.state;
            int r13 = this.STATE_WORDS - 1;
            r04[r13] = r04[r13] ^ this._A1;
        }
        while (true) {
            int r05 = this.RATE_WORDS;
            if (r22 >= r05 / 2) {
                sparkle_opt(this.state, this.SPARKLE_STEPS_BIG);
                return;
            }
            int r06 = (r05 / 2) + r22;
            int[] r14 = this.state;
            int r33 = r14[r22];
            int r15 = r14[r06];
            int r42 = Pack.littleEndianToInt(this.m_buf, r22 * 4);
            int r52 = Pack.littleEndianToInt(this.m_buf, r06 * 4);
            int[] r6 = this.state;
            int r72 = this.RATE_WORDS;
            r6[r22] = (r42 ^ r15) ^ r6[r72 + r22];
            r6[r06] = ((r15 ^ r33) ^ r52) ^ r6[r72 + (this.CAP_MASK & r06)];
            r22++;
        }
    }

    private void reset(boolean z10) {
        if (z10) {
            this.tag = null;
        }
        Arrays.clear(this.m_buf);
        this.m_bufPos = 0;
        this.encrypted = false;
        switch (AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[this.m_state.ordinal()]) {
            case 1:
            case 7:
                break;
            case 2:
            case 3:
            case 4:
                this.m_state = State.DecInit;
                break;
            case 5:
            case 6:
            case 8:
                this.m_state = State.EncFinal;
                return;
            default:
                throw new IllegalStateException(getAlgorithmName() + " needs to be initialized");
        }
        System.arraycopy(this.npub, 0, this.state, 0, this.RATE_WORDS);
        System.arraycopy(this.f11535k, 0, this.state, this.RATE_WORDS, this.KEY_WORDS);
        sparkle_opt(this.state, this.SPARKLE_STEPS_BIG);
        byte[] bArr = this.initialAssociatedText;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }

    private static void sparkle_opt(int[] r22, int r32) {
        int length = r22.length;
        if (length == 8) {
            sparkle_opt8(r22, r32);
        } else if (length == 12) {
            sparkle_opt12(r22, r32);
        } else {
            if (length != 16) {
                throw new IllegalStateException();
            }
            sparkle_opt16(r22, r32);
        }
    }

    public static void sparkle_opt12(SparkleDigest.Friend friend, int[] r12, int r22) {
        if (friend == null) {
            throw new NullPointerException("This method is only for use by SparkleDigest");
        }
        sparkle_opt12(r12, r22);
    }

    public static void sparkle_opt12(int[] r31, int r32) {
        char c10 = 0;
        int r12 = r31[0];
        char c11 = 1;
        int r33 = r31[1];
        int r52 = r31[2];
        int r72 = r31[3];
        int r92 = r31[4];
        int r11 = r31[5];
        int r13 = r31[6];
        int r15 = r31[7];
        int r17 = r31[8];
        int r19 = r31[9];
        int r21 = r31[10];
        int r14 = r19;
        int r122 = r31[11];
        int r82 = 0;
        while (r82 < r32) {
            int[] r24 = RCON;
            int r34 = r33 ^ r24[r82 & 7];
            int r73 = r72 ^ r82;
            int r25 = r24[c10];
            int r16 = Integers.rotateRight(r34, 31) + r12;
            int r35 = r34 ^ Integers.rotateRight(r16, 24);
            int r18 = Integers.rotateRight(r35, 17) + (r16 ^ r25);
            int r36 = r35 ^ Integers.rotateRight(r18, 17);
            int r110 = (r18 ^ r25) + r36;
            int r37 = r36 ^ Integers.rotateRight(r110, 31);
            int r111 = Integers.rotateRight(r37, 24) + (r110 ^ r25);
            int r38 = r37 ^ Integers.rotateRight(r111, 16);
            int r112 = r111 ^ r25;
            int r252 = r24[c11];
            int r53 = Integers.rotateRight(r73, 31) + r52;
            int r74 = r73 ^ Integers.rotateRight(r53, 24);
            int r54 = Integers.rotateRight(r74, 17) + (r53 ^ r252);
            int r22 = r74 ^ Integers.rotateRight(r54, 17);
            int r55 = (r54 ^ r252) + r22;
            int r23 = r22 ^ Integers.rotateRight(r55, 31);
            int r75 = Integers.rotateRight(r23, 24) + (r55 ^ r252);
            int r26 = r23 ^ Integers.rotateRight(r75, 16);
            int r56 = r75 ^ r252;
            int r253 = r24[2];
            int r76 = Integers.rotateRight(r11, 31) + r92;
            int r93 = Integers.rotateRight(r76, 24) ^ r11;
            int r77 = Integers.rotateRight(r93, 17) + (r76 ^ r253);
            int r94 = r93 ^ Integers.rotateRight(r77, 17);
            int r78 = (r77 ^ r253) + r94;
            int r95 = r94 ^ Integers.rotateRight(r78, 31);
            int r113 = Integers.rotateRight(r95, 24) + (r78 ^ r253);
            int r79 = Integers.rotateRight(r113, 16) ^ r95;
            int r96 = r113 ^ r253;
            int r254 = r24[3];
            int r114 = Integers.rotateRight(r15, 31) + r13;
            int r132 = Integers.rotateRight(r114, 24) ^ r15;
            int r115 = Integers.rotateRight(r132, 17) + (r114 ^ r254);
            int r133 = r132 ^ Integers.rotateRight(r115, 17);
            int r116 = (r115 ^ r254) + r133;
            int r134 = r133 ^ Integers.rotateRight(r116, 31);
            int r152 = Integers.rotateRight(r134, 24) + (r116 ^ r254);
            int r117 = Integers.rotateRight(r152, 16) ^ r134;
            int r135 = r152 ^ r254;
            int r255 = r24[4];
            int r153 = Integers.rotateRight(r14, 31) + r17;
            int r142 = r14 ^ Integers.rotateRight(r153, 24);
            int r154 = Integers.rotateRight(r142, 17) + (r153 ^ r255);
            int r42 = r142 ^ Integers.rotateRight(r154, 17);
            int r143 = (r154 ^ r255) + r42;
            int r43 = r42 ^ Integers.rotateRight(r143, 31);
            int r155 = Integers.rotateRight(r43, 24) + (r143 ^ r255);
            int r44 = r43 ^ Integers.rotateRight(r155, 16);
            int r144 = r155 ^ r255;
            int r172 = r24[5];
            int r156 = Integers.rotateRight(r122, 31) + r21;
            int r123 = r122 ^ Integers.rotateRight(r156, 24);
            int r157 = Integers.rotateRight(r123, 17) + (r156 ^ r172);
            int r6 = Integers.rotateRight(r157, 17) ^ r123;
            int r124 = (r157 ^ r172) + r6;
            int r02 = Integers.rotateRight(r124, 31) ^ r6;
            int r125 = Integers.rotateRight(r02, 24) + (r124 ^ r172);
            int r03 = r02 ^ Integers.rotateRight(r125, 16);
            int r62 = r125 ^ r172;
            int r126 = ELL((r112 ^ r56) ^ r96);
            int r158 = ELL((r38 ^ r26) ^ r79);
            int r145 = (r144 ^ r56) ^ r158;
            int r63 = (r62 ^ r96) ^ r158;
            int r04 = (r03 ^ r79) ^ r126;
            int r136 = (r135 ^ r112) ^ r158;
            r11 = (r117 ^ r38) ^ r126;
            r82++;
            r15 = r38;
            r33 = (r44 ^ r26) ^ r126;
            r17 = r56;
            r52 = r63;
            r122 = r79;
            r21 = r96;
            r92 = r136;
            r72 = r04;
            r13 = r112;
            r12 = r145;
            c10 = 0;
            r14 = r26;
            c11 = 1;
        }
        r31[c10] = r12;
        r31[1] = r33;
        r31[2] = r52;
        r31[3] = r72;
        r31[4] = r92;
        r31[5] = r11;
        r31[6] = r13;
        r31[7] = r15;
        r31[8] = r17;
        r31[9] = r14;
        r31[10] = r21;
        r31[11] = r122;
    }

    public static void sparkle_opt16(SparkleDigest.Friend friend, int[] r12, int r22) {
        if (friend == null) {
            throw new NullPointerException("This method is only for use by SparkleDigest");
        }
        sparkle_opt16(r12, r22);
    }

    public static void sparkle_opt16(int[] r41, int r42) {
        char c10 = 0;
        int r12 = r41[0];
        char c11 = 1;
        int r32 = r41[1];
        int r52 = r41[2];
        int r72 = r41[3];
        int r92 = r41[4];
        int r11 = r41[5];
        int r13 = r41[6];
        int r15 = r41[7];
        int r17 = r41[8];
        int r19 = r41[9];
        int r21 = r41[10];
        int r23 = r41[11];
        int r25 = r41[12];
        int r27 = r41[13];
        int r29 = r41[14];
        int r10 = r42;
        int r14 = r19;
        int r122 = r23;
        int r322 = r27;
        int r33 = r41[15];
        int r82 = 0;
        while (r82 < r10) {
            int[] r34 = RCON;
            int r35 = r32 ^ r34[r82 & 7];
            int r73 = r72 ^ r82;
            int r352 = r34[c10];
            int r16 = Integers.rotateRight(r35, 31) + r12;
            int r36 = r35 ^ Integers.rotateRight(r16, 24);
            int r18 = Integers.rotateRight(r36, 17) + (r16 ^ r352);
            int r37 = r36 ^ Integers.rotateRight(r18, 17);
            int r110 = (r18 ^ r352) + r37;
            int r38 = r37 ^ Integers.rotateRight(r110, 31);
            int r111 = Integers.rotateRight(r38, 24) + (r110 ^ r352);
            int r39 = r38 ^ Integers.rotateRight(r111, 16);
            int r112 = r111 ^ r352;
            int r353 = r34[c11];
            int r53 = Integers.rotateRight(r73, 31) + r52;
            int r74 = r73 ^ Integers.rotateRight(r53, 24);
            int r54 = Integers.rotateRight(r74, 17) + (r53 ^ r353);
            int r22 = r74 ^ Integers.rotateRight(r54, 17);
            int r55 = (r54 ^ r353) + r22;
            int r24 = r22 ^ Integers.rotateRight(r55, 31);
            int r75 = Integers.rotateRight(r24, 24) + (r55 ^ r353);
            int r26 = r24 ^ Integers.rotateRight(r75, 16);
            int r56 = r75 ^ r353;
            int r354 = r34[2];
            int r76 = Integers.rotateRight(r11, 31) + r92;
            int r93 = Integers.rotateRight(r76, 24) ^ r11;
            int r77 = Integers.rotateRight(r93, 17) + (r76 ^ r354);
            int r94 = r93 ^ Integers.rotateRight(r77, 17);
            int r78 = (r77 ^ r354) + r94;
            int r95 = r94 ^ Integers.rotateRight(r78, 31);
            int r113 = Integers.rotateRight(r95, 24) + (r78 ^ r354);
            int r79 = Integers.rotateRight(r113, 16) ^ r95;
            int r96 = r113 ^ r354;
            int r355 = r34[3];
            int r114 = Integers.rotateRight(r15, 31) + r13;
            int r132 = Integers.rotateRight(r114, 24) ^ r15;
            int r115 = Integers.rotateRight(r132, 17) + (r114 ^ r355);
            int r133 = r132 ^ Integers.rotateRight(r115, 17);
            int r116 = (r115 ^ r355) + r133;
            int r134 = r133 ^ Integers.rotateRight(r116, 31);
            int r152 = Integers.rotateRight(r134, 24) + (r116 ^ r355);
            int r117 = Integers.rotateRight(r152, 16) ^ r134;
            int r135 = r152 ^ r355;
            int r356 = r34[4];
            int r153 = Integers.rotateRight(r14, 31) + r17;
            int r142 = r14 ^ Integers.rotateRight(r153, 24);
            int r154 = Integers.rotateRight(r142, 17) + (r153 ^ r356);
            int r43 = r142 ^ Integers.rotateRight(r154, 17);
            int r143 = (r154 ^ r356) + r43;
            int r44 = r43 ^ Integers.rotateRight(r143, 31);
            int r155 = Integers.rotateRight(r44, 24) + (r143 ^ r356);
            int r45 = r44 ^ Integers.rotateRight(r155, 16);
            int r144 = r155 ^ r356;
            int r172 = r34[5];
            int r156 = Integers.rotateRight(r122, 31) + r21;
            int r123 = r122 ^ Integers.rotateRight(r156, 24);
            int r157 = Integers.rotateRight(r123, 17) + (r156 ^ r172);
            int r6 = r123 ^ Integers.rotateRight(r157, 17);
            int r124 = (r157 ^ r172) + r6;
            int r62 = r6 ^ Integers.rotateRight(r124, 31);
            int r125 = Integers.rotateRight(r62, 24) + (r124 ^ r172);
            int r63 = r62 ^ Integers.rotateRight(r125, 16);
            int r126 = r125 ^ r172;
            int r173 = r34[6];
            int r158 = r322;
            int r02 = Integers.rotateRight(r158, 31) + r25;
            int r102 = r158 ^ Integers.rotateRight(r02, 24);
            int r03 = Integers.rotateRight(r102, 17) + (r02 ^ r173);
            int r103 = r102 ^ Integers.rotateRight(r03, 17);
            int r04 = (r03 ^ r173) + r103;
            int r104 = r103 ^ Integers.rotateRight(r04, 31);
            int r05 = Integers.rotateRight(r104, 24) + (r04 ^ r173);
            int r105 = r104 ^ Integers.rotateRight(r05, 16);
            int r06 = r05 ^ r173;
            int r174 = r34[7];
            int r323 = r82;
            int r159 = r33;
            int r83 = Integers.rotateRight(r159, 31) + r29;
            int r106 = r159 ^ Integers.rotateRight(r83, 24);
            int r84 = Integers.rotateRight(r106, 17) + (r83 ^ r174);
            int r107 = r106 ^ Integers.rotateRight(r84, 17);
            int r85 = (r84 ^ r174) + r107;
            int r108 = r107 ^ Integers.rotateRight(r85, 31);
            int r1510 = Integers.rotateRight(r108, 24) + (r85 ^ r174);
            int r86 = Integers.rotateRight(r1510, 16) ^ r108;
            int r109 = r1510 ^ r174;
            int r1511 = ELL(((r112 ^ r56) ^ r96) ^ r135);
            int r175 = ELL(((r39 ^ r26) ^ r79) ^ r117);
            int r127 = (r126 ^ r56) ^ r175;
            int r64 = (r63 ^ r26) ^ r1511;
            int r07 = (r06 ^ r96) ^ r175;
            int r212 = (r79 ^ r105) ^ r1511;
            int r1010 = (r109 ^ r135) ^ r175;
            int r87 = (r86 ^ r117) ^ r1511;
            int r145 = (r144 ^ r112) ^ r175;
            r15 = r1511 ^ (r45 ^ r39);
            int r46 = r323 + 1;
            r17 = r112;
            r322 = r79;
            r25 = r96;
            r92 = r1010;
            r33 = r117;
            r12 = r127;
            r29 = r135;
            r13 = r145;
            r72 = r212;
            r10 = r42;
            r122 = r26;
            r14 = r39;
            r21 = r56;
            r32 = r64;
            r11 = r87;
            c11 = 1;
            r52 = r07;
            r82 = r46;
            c10 = 0;
        }
        r41[0] = r12;
        r41[1] = r32;
        r41[2] = r52;
        r41[3] = r72;
        r41[4] = r92;
        r41[5] = r11;
        r41[6] = r13;
        r41[7] = r15;
        r41[8] = r17;
        r41[9] = r14;
        r41[10] = r21;
        r41[11] = r122;
        r41[12] = r25;
        r41[13] = r322;
        r41[14] = r29;
        r41[15] = r33;
    }

    public static void sparkle_opt8(int[] r22, int r23) {
        char c10 = 0;
        int r12 = r22[0];
        int r32 = r22[1];
        int r52 = r22[2];
        int r72 = r22[3];
        int r92 = r22[4];
        int r11 = r22[5];
        int r13 = r22[6];
        int r15 = r22[7];
        int r122 = 0;
        while (r122 < r23) {
            int[] r16 = RCON;
            int r33 = r32 ^ r16[r122 & 7];
            int r73 = r72 ^ r122;
            int r17 = r16[c10];
            int r14 = Integers.rotateRight(r33, 31) + r12;
            int r34 = r33 ^ Integers.rotateRight(r14, 24);
            int r18 = Integers.rotateRight(r34, 17) + (r14 ^ r17);
            int r35 = r34 ^ Integers.rotateRight(r18, 17);
            int r19 = (r18 ^ r17) + r35;
            int r36 = r35 ^ Integers.rotateRight(r19, 31);
            int r110 = Integers.rotateRight(r36, 24) + (r19 ^ r17);
            int r37 = r36 ^ Integers.rotateRight(r110, 16);
            int r111 = r110 ^ r17;
            int r172 = r16[1];
            int r53 = Integers.rotateRight(r73, 31) + r52;
            int r74 = r73 ^ Integers.rotateRight(r53, 24);
            int r54 = Integers.rotateRight(r74, 17) + (r53 ^ r172);
            int r75 = r74 ^ Integers.rotateRight(r54, 17);
            int r55 = (r54 ^ r172) + r75;
            int r76 = r75 ^ Integers.rotateRight(r55, 31);
            int r56 = Integers.rotateRight(r76, 24) + (r55 ^ r172);
            int r77 = r76 ^ Integers.rotateRight(r56, 16);
            int r57 = r56 ^ r172;
            int r173 = r16[2];
            int r93 = Integers.rotateRight(r11, 31) + r92;
            int r112 = r11 ^ Integers.rotateRight(r93, 24);
            int r94 = Integers.rotateRight(r112, 17) + (r93 ^ r173);
            int r113 = r112 ^ Integers.rotateRight(r94, 17);
            int r95 = (r94 ^ r173) + r113;
            int r114 = r113 ^ Integers.rotateRight(r95, 31);
            int r96 = Integers.rotateRight(r114, 24) + (r95 ^ r173);
            int r115 = r114 ^ Integers.rotateRight(r96, 16);
            int r97 = r96 ^ r173;
            int r162 = r16[3];
            int r132 = Integers.rotateRight(r15, 31) + r13;
            int r152 = r15 ^ Integers.rotateRight(r132, 24);
            int r133 = Integers.rotateRight(r152, 17) + (r132 ^ r162);
            int r02 = Integers.rotateRight(r133, 17) ^ r152;
            int r134 = (r133 ^ r162) + r02;
            int r03 = r02 ^ Integers.rotateRight(r134, 31);
            int r82 = Integers.rotateRight(r03, 24) + (r134 ^ r162);
            int r04 = r03 ^ Integers.rotateRight(r82, 16);
            int r6 = r82 ^ r162;
            int r83 = ELL(r111 ^ r57);
            int r10 = ELL(r37 ^ r77);
            int r62 = (r6 ^ r57) ^ r10;
            int r05 = (r04 ^ r77) ^ r83;
            int r84 = r83 ^ (r115 ^ r37);
            r122++;
            r11 = r37;
            r13 = r57;
            r15 = r77;
            r72 = r84;
            r52 = (r97 ^ r111) ^ r10;
            r32 = r05;
            r92 = r111;
            r12 = r62;
            c10 = 0;
        }
        r22[c10] = r12;
        r22[1] = r32;
        r22[2] = r52;
        r22[3] = r72;
        r22[4] = r92;
        r22[5] = r11;
        r22[6] = r13;
        r22[7] = r15;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int r14) throws InvalidCipherTextException, IllegalStateException {
        int r12;
        int r52;
        boolean zCheckData = checkData();
        int r13 = this.m_bufPos;
        int r22 = this.TAG_BYTES;
        if (zCheckData) {
            r12 = r13 + r22;
        } else {
            if (r13 < r22) {
                throw new InvalidCipherTextException("data too short");
            }
            r12 = r13 - r22;
            this.m_bufPos = r12;
        }
        if (r14 > bArr.length - r12) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.encrypted || this.m_bufPos > 0) {
            int[] r23 = this.state;
            int r42 = this.STATE_WORDS - 1;
            r23[r42] = r23[r42] ^ (this.m_bufPos < this.RATE_BYTES ? this._M2 : this._M3);
            int[] r24 = new int[this.RATE_WORDS];
            int r43 = 0;
            while (true) {
                r52 = this.m_bufPos;
                if (r43 >= r52) {
                    break;
                }
                int r53 = r43 >>> 2;
                r24[r53] = r24[r53] | ((this.m_buf[r43] & 255) << ((r43 & 3) << 3));
                r43++;
            }
            if (r52 < this.RATE_BYTES) {
                if (!zCheckData) {
                    int r44 = (r52 & 3) << 3;
                    int r6 = r52 >>> 2;
                    int r72 = r24[r6];
                    int[] r82 = this.state;
                    r24[r6] = ((r82[r52 >>> 2] >>> r44) << r44) | r72;
                    int r45 = (r52 >>> 2) + 1;
                    System.arraycopy(r82, r45, r24, r45, this.RATE_WORDS - r45);
                }
                int r46 = this.m_bufPos;
                int r54 = r46 >>> 2;
                r24[r54] = (128 << ((r46 & 3) << 3)) ^ r24[r54];
            }
            int r47 = 0;
            while (true) {
                int r55 = this.RATE_WORDS;
                if (r47 >= r55 / 2) {
                    break;
                }
                int r62 = (r55 / 2) + r47;
                int[] r73 = this.state;
                int r83 = r73[r47];
                int r92 = r73[r62];
                if (zCheckData) {
                    r73[r47] = (r24[r47] ^ r92) ^ r73[r55 + r47];
                    r73[r62] = r73[r55 + (this.CAP_MASK & r62)] ^ ((r83 ^ r92) ^ r24[r62]);
                } else {
                    r73[r47] = ((r83 ^ r92) ^ r24[r47]) ^ r73[r55 + r47];
                    r73[r62] = r73[r55 + (this.CAP_MASK & r62)] ^ (r24[r62] ^ r83);
                }
                r24[r47] = r24[r47] ^ r83;
                r24[r62] = r24[r62] ^ r92;
                r47++;
            }
            int r48 = 0;
            while (r48 < this.m_bufPos) {
                bArr[r14] = (byte) (r24[r48 >>> 2] >>> ((r48 & 3) << 3));
                r48++;
                r14++;
            }
            sparkle_opt(this.state, this.SPARKLE_STEPS_BIG);
        }
        for (int r25 = 0; r25 < this.KEY_WORDS; r25++) {
            int[] r49 = this.state;
            int r56 = this.RATE_WORDS + r25;
            r49[r56] = r49[r56] ^ this.f11535k[r25];
        }
        byte[] bArr2 = new byte[this.TAG_BYTES];
        this.tag = bArr2;
        Pack.intToLittleEndian(this.state, this.RATE_WORDS, this.TAG_WORDS, bArr2, 0);
        if (zCheckData) {
            System.arraycopy(this.tag, 0, bArr, r14, this.TAG_BYTES);
        } else if (!Arrays.constantTimeAreEqual(this.TAG_BYTES, this.tag, 0, this.m_buf, this.m_bufPos)) {
            throw new InvalidCipherTextException(c.h(new StringBuilder(), this.algorithmName, " mac does not match"));
        }
        reset(!zCheckData);
        return r12;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.algorithmName;
    }

    public int getIVBytesSize() {
        return this.RATE_BYTES;
    }

    public int getKeyBytesSize() {
        return this.KEY_BYTES;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return this.tag;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int r42) {
        int r43 = Math.max(0, r42);
        switch (AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[this.m_state.ordinal()]) {
            case 1:
            case 2:
                return Math.max(0, r43 - this.TAG_BYTES);
            case 3:
            case 4:
                return Math.max(0, (r43 + this.m_bufPos) - this.TAG_BYTES);
            case 5:
            case 6:
                return r43 + this.m_bufPos + this.TAG_BYTES;
            default:
                return r43 + this.TAG_BYTES;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0011. Please report as an issue. */
    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int r42) {
        int r43;
        int r44 = Math.max(0, r42) - 1;
        switch (AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State[this.m_state.ordinal()]) {
            case 3:
            case 4:
                r44 += this.m_bufPos;
            case 1:
            case 2:
                r43 = r44 - this.TAG_BYTES;
                r44 = Math.max(0, r43);
                break;
            case 5:
            case 6:
                r43 = r44 + this.m_bufPos;
                r44 = Math.max(0, r43);
                break;
        }
        return r44 - (r44 % this.RATE_BYTES);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        KeyParameter key;
        byte[] nonce;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            key = aEADParameters.getKey();
            nonce = aEADParameters.getNonce();
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            int macSize = aEADParameters.getMacSize();
            if (macSize != this.TAG_BYTES * 8) {
                throw new IllegalArgumentException(a.d("Invalid value for MAC size: ", macSize));
            }
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                throw new IllegalArgumentException("invalid parameters passed to Sparkle");
            }
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            CipherParameters parameters = parametersWithIV.getParameters();
            key = parameters instanceof KeyParameter ? (KeyParameter) parameters : null;
            nonce = parametersWithIV.getIV();
            this.initialAssociatedText = null;
        }
        if (key == null) {
            throw new IllegalArgumentException("Sparkle init parameters must include a key");
        }
        int r02 = this.KEY_WORDS * 4;
        if (r02 != key.getKeyLength()) {
            throw new IllegalArgumentException(this.algorithmName + " requires exactly " + r02 + " bytes of key");
        }
        int r03 = this.RATE_WORDS * 4;
        if (nonce == null || r03 != nonce.length) {
            throw new IllegalArgumentException(this.algorithmName + " requires exactly " + r03 + " bytes of IV");
        }
        Pack.littleEndianToInt(key.getKey(), 0, this.f11535k);
        Pack.littleEndianToInt(nonce, 0, this.npub);
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z10)));
        this.m_state = z10 ? State.EncInit : State.DecInit;
        reset();
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b10) {
        checkAAD();
        if (this.m_bufPos == this.RATE_BYTES) {
            processBufferAAD(this.m_buf, 0);
            this.m_bufPos = 0;
        }
        byte[] bArr = this.m_buf;
        int r12 = this.m_bufPos;
        this.m_bufPos = r12 + 1;
        bArr[r12] = b10;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int r6, int r72) {
        if (r6 > bArr.length - r72) {
            throw new DataLengthException("input buffer too short");
        }
        if (r72 <= 0) {
            return;
        }
        checkAAD();
        int r02 = this.m_bufPos;
        if (r02 > 0) {
            int r22 = this.RATE_BYTES - r02;
            if (r72 <= r22) {
                System.arraycopy(bArr, r6, this.m_buf, r02, r72);
                this.m_bufPos += r72;
                return;
            } else {
                System.arraycopy(bArr, r6, this.m_buf, r02, r22);
                r6 += r22;
                r72 -= r22;
                processBufferAAD(this.m_buf, 0);
            }
        }
        while (r72 > this.RATE_BYTES) {
            processBufferAAD(bArr, r6);
            int r03 = this.RATE_BYTES;
            r6 += r03;
            r72 -= r03;
        }
        System.arraycopy(bArr, r6, this.m_buf, 0, r72);
        this.m_bufPos = r72;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b10, byte[] bArr, int r10) throws DataLengthException {
        return processBytes(new byte[]{b10}, 0, 1, bArr, r10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int r72, int r82, byte[] bArr2, int r10) throws DataLengthException {
        int r22;
        int r02;
        if (r72 > bArr.length - r82) {
            throw new DataLengthException("input buffer too short");
        }
        if (checkData()) {
            int r03 = this.m_bufPos;
            if (r03 > 0) {
                int r23 = this.RATE_BYTES - r03;
                if (r82 <= r23) {
                    System.arraycopy(bArr, r72, this.m_buf, r03, r82);
                    this.m_bufPos += r82;
                    return 0;
                }
                System.arraycopy(bArr, r72, this.m_buf, r03, r23);
                r72 += r23;
                r82 -= r23;
                processBufferEncrypt(this.m_buf, 0, bArr2, r10);
                r02 = this.RATE_BYTES;
            } else {
                r02 = 0;
            }
            while (r82 > this.RATE_BYTES) {
                processBufferEncrypt(bArr, r72, bArr2, r10 + r02);
                int r24 = this.RATE_BYTES;
                r72 += r24;
                r82 -= r24;
                r02 += r24;
            }
            System.arraycopy(bArr, r72, this.m_buf, 0, r82);
            this.m_bufPos = r82;
            return r02;
        }
        int r04 = this.m_bufferSizeDecrypt;
        int r25 = this.m_bufPos;
        int r05 = r04 - r25;
        if (r82 <= r05) {
            System.arraycopy(bArr, r72, this.m_buf, r25, r82);
            this.m_bufPos += r82;
            return 0;
        }
        if (r25 > this.RATE_BYTES) {
            processBufferDecrypt(this.m_buf, 0, bArr2, r10);
            int r26 = this.m_bufPos;
            int r32 = this.RATE_BYTES;
            int r27 = r26 - r32;
            this.m_bufPos = r27;
            byte[] bArr3 = this.m_buf;
            System.arraycopy(bArr3, r32, bArr3, 0, r27);
            r22 = this.RATE_BYTES;
            if (r82 <= r05 + r22) {
                System.arraycopy(bArr, r72, this.m_buf, this.m_bufPos, r82);
                this.m_bufPos += r82;
                return r22;
            }
        } else {
            r22 = 0;
        }
        int r06 = this.RATE_BYTES;
        int r33 = this.m_bufPos;
        int r07 = r06 - r33;
        System.arraycopy(bArr, r72, this.m_buf, r33, r07);
        r72 += r07;
        r82 -= r07;
        processBufferDecrypt(this.m_buf, 0, bArr2, r10 + r22);
        r02 = r22 + this.RATE_BYTES;
        while (r82 > this.m_bufferSizeDecrypt) {
            processBufferDecrypt(bArr, r72, bArr2, r10 + r02);
            int r28 = this.RATE_BYTES;
            r72 += r28;
            r82 -= r28;
            r02 += r28;
        }
        System.arraycopy(bArr, r72, this.m_buf, 0, r82);
        this.m_bufPos = r82;
        return r02;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        reset(true);
    }
}
