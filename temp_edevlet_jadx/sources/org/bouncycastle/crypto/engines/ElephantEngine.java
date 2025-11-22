package org.bouncycastle.crypto.engines;

import androidx.camera.camera2.internal.c;
import java.io.ByteArrayOutputStream;
import java.util.Arrays;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.modes.AEADCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.jmrtd.PassportService;
import org.jmrtd.lds.CVCAFile;

/* loaded from: classes2.dex */
public class ElephantEngine implements AEADCipher {
    private final int BLOCK_SIZE;
    private final byte CRYPTO_ABYTES;

    /* renamed from: ad, reason: collision with root package name */
    private byte[] f11510ad;
    private int adOff;
    private int adlen;
    private final String algorithmName;
    private final byte[] buffer;
    private byte[] current_mask;
    private byte[] expanded_key;
    private boolean forEncryption;
    private boolean initialised;
    private byte[] inputMessage;
    private int inputOff;
    private byte lfsrIV;
    private int nBits;
    private final int nRounds;
    private int nSBox;
    private int nb_its;
    private byte[] next_mask;
    private byte[] npub;
    private final byte[] outputMessage;
    private final ElephantParameters parameters;
    private byte[] previous_mask;
    private final byte[] previous_outputMessage;
    private byte[] tag;
    private final byte[] tag_buffer;
    private final byte CRYPTO_KEYBYTES = 16;
    private final byte CRYPTO_NPUBBYTES = PassportService.SFI_DG12;
    private State m_state = State.Uninitialized;
    private final ByteArrayOutputStream aadData = new ByteArrayOutputStream();
    private final byte[] sBoxLayer = {-18, -19, -21, ISO7816.INS_CREATE_FILE, ISO7816.INS_APPEND_RECORD, -31, ISO7816.INS_DELETE_FILE, -17, -25, -22, -24, -27, -23, -20, -29, -26, -34, -35, -37, ISO7816.INS_WRITE_BINARY, ISO7816.INS_WRITE_RECORD, -47, -44, -33, -41, ISO7816.INS_PUT_DATA, ISO7816.INS_LOAD_KEY_FILE, -43, -39, ISO7816.INS_UPDATE_RECORD, -45, ISO7816.INS_UPDATE_BINARY, -66, -67, -69, ISO7816.INS_READ_BINARY, -78, ISO7816.INS_READ_BINARY2, ISO7816.INS_READ_BINARY_STAMPED, -65, -73, -70, -72, -75, -71, PSSSigner.TRAILER_IMPLICIT, ISO7816.INS_READ_RECORD2, ISO7816.INS_READ_RECORD_STAMPED, 14, PassportService.SFI_DG13, PassportService.SFI_DG11, 0, 2, 1, 4, PassportService.SFI_DG15, 7, 10, 8, 5, 9, PassportService.SFI_DG12, 3, 6, 46, 45, 43, ISO7816.INS_VERIFY, ISO7816.INS_MSE, 33, ISO7816.INS_CHANGE_CHV, 47, 39, ISO7816.INS_PSO, 40, 37, 41, ISO7816.INS_UNBLOCK_CHV, 35, 38, PassportService.SFI_COM, 29, 27, 16, 18, 17, 20, 31, 23, 26, 24, 21, 25, 28, 19, 22, 78, 77, 75, 64, CVCAFile.CAR_TAG, 65, ISO7816.INS_REHABILITATE_CHV, 79, 71, 74, 72, 69, 73, 76, 67, 70, -2, -3, -5, -16, -14, -15, -12, -1, -9, -6, -8, -11, -7, -4, -13, -10, 126, 125, 123, ISO7816.INS_MANAGE_CHANNEL, 114, 113, 116, 127, 119, 122, 120, 117, 121, 124, 115, 118, -82, -83, ISOFileInfo.AB, ISOFileInfo.A0, -94, ISOFileInfo.A1, -92, -81, -89, -86, -88, ISOFileInfo.A5, -87, -84, -93, -90, ISOFileInfo.CHANNEL_SECURITY, ISOFileInfo.ENV_TEMP_EF, ISOFileInfo.SECURITY_ATTR_EXP, ISOFileInfo.DATA_BYTES1, -126, ISOFileInfo.DATA_BYTES2, -124, -113, ISOFileInfo.FCI_EXT, ISOFileInfo.LCS_BYTE, -120, ISOFileInfo.PROP_INFO, -119, ISOFileInfo.SECURITY_ATTR_COMPACT, ISOFileInfo.FILE_IDENTIFIER, -122, 94, 93, 91, 80, 82, 81, 84, 95, 87, 90, 88, 85, 89, 92, 83, 86, -98, -99, -101, -112, -110, -111, -108, -97, -105, -102, -104, -107, -103, -100, -109, -106, -50, -51, -53, ISO7816.INS_GET_RESPONSE, ISO7816.INS_ENVELOPE, -63, -60, -49, -57, ISO7816.INS_GET_DATA, -56, -59, -55, -52, -61, -58, 62, 61, 59, ISO7816.INS_DECREASE, ISO7816.INS_INCREASE, 49, ISO7816.INS_DECREASE_STAMPED, 63, 55, 58, 56, 53, 57, 60, 51, 54, 110, 109, 107, 96, ISOFileInfo.FCP_BYTE, 97, ISOFileInfo.FMD_BYTE, ISOFileInfo.FCI_BYTE, 103, 106, 104, 101, 105, 108, 99, 102};
    private final byte[] KeccakRoundConstants = {1, -126, ISOFileInfo.LCS_BYTE, 0, ISOFileInfo.SECURITY_ATTR_EXP, 1, ISOFileInfo.DATA_BYTES2, 9, ISOFileInfo.LCS_BYTE, -120, 9, 10, ISOFileInfo.SECURITY_ATTR_EXP, ISOFileInfo.SECURITY_ATTR_EXP, -119, 3, 2, ISOFileInfo.DATA_BYTES1};
    private final int[] KeccakRhoOffsets = {0, 1, 6, 4, 3, 4, 4, 6, 7, 4, 3, 2, 3, 1, 7, 1, 5, 7, 5, 0, 2, 2, 5, 0, 6};

    /* renamed from: org.bouncycastle.crypto.engines.ElephantEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters;
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State;

        static {
            int[] r02 = new int[State.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State = r02;
            try {
                r02[State.EncInit.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[State.DecInit.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[State.Uninitialized.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[State.DecFinal.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[State.EncFinal.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[State.EncAad.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[State.EncData.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[State.DecData.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[State.DecAad.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            int[] r32 = new int[ElephantParameters.values().length];
            $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters = r32;
            try {
                r32[ElephantParameters.elephant160.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters[ElephantParameters.elephant176.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters[ElephantParameters.elephant200.ordinal()] = 3;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public enum ElephantParameters {
        elephant160,
        elephant176,
        elephant200
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

    public ElephantEngine(ElephantParameters elephantParameters) {
        String str;
        int r32 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters[elephantParameters.ordinal()];
        if (r32 == 1) {
            this.BLOCK_SIZE = 20;
            this.nBits = 160;
            this.nSBox = 20;
            this.nRounds = 80;
            this.lfsrIV = (byte) 117;
            this.CRYPTO_ABYTES = (byte) 8;
            str = "Elephant 160 AEAD";
        } else if (r32 == 2) {
            this.BLOCK_SIZE = 22;
            this.nBits = 176;
            this.nSBox = 22;
            this.nRounds = 90;
            this.lfsrIV = (byte) 69;
            this.CRYPTO_ABYTES = (byte) 8;
            str = "Elephant 176 AEAD";
        } else {
            if (r32 != 3) {
                throw new IllegalArgumentException("Invalid parameter settings for Elephant");
            }
            this.BLOCK_SIZE = 25;
            this.nRounds = 18;
            this.CRYPTO_ABYTES = (byte) 16;
            str = "Elephant 200 AEAD";
        }
        this.algorithmName = str;
        this.parameters = elephantParameters;
        int r72 = this.BLOCK_SIZE;
        this.tag_buffer = new byte[r72];
        this.previous_mask = new byte[r72];
        this.current_mask = new byte[r72];
        this.next_mask = new byte[r72];
        this.buffer = new byte[r72];
        this.previous_outputMessage = new byte[r72];
        this.outputMessage = new byte[r72];
        this.initialised = false;
        reset(false);
    }

    private void KeccakP200Round(byte[] bArr, int r11) {
        byte[] bArr2 = new byte[25];
        for (int r22 = 0; r22 < 5; r22++) {
            for (int r42 = 0; r42 < 5; r42++) {
                bArr2[r22] = (byte) (bArr2[r22] ^ bArr[index(r22, r42)]);
            }
        }
        int r23 = 0;
        while (r23 < 5) {
            int r52 = r23 + 1;
            bArr2[r23 + 5] = (byte) (bArr2[(r23 + 4) % 5] ^ ROL8(bArr2[r52 % 5], 1));
            r23 = r52;
        }
        for (int r24 = 0; r24 < 5; r24++) {
            for (int r43 = 0; r43 < 5; r43++) {
                int r53 = index(r24, r43);
                bArr[r53] = (byte) (bArr[r53] ^ bArr2[r24 + 5]);
            }
        }
        for (int r25 = 0; r25 < 5; r25++) {
            for (int r44 = 0; r44 < 5; r44++) {
                bArr2[index(r25, r44)] = ROL8(bArr[index(r25, r44)], this.KeccakRhoOffsets[index(r25, r44)]);
            }
        }
        for (int r26 = 0; r26 < 5; r26++) {
            for (int r45 = 0; r45 < 5; r45++) {
                bArr[index(r45, ((r45 * 3) + (r26 * 2)) % 5)] = bArr2[index(r26, r45)];
            }
        }
        for (int r27 = 0; r27 < 5; r27++) {
            int r46 = 0;
            while (r46 < 5) {
                int r6 = r46 + 1;
                bArr2[r46] = (byte) (bArr[index(r46, r27)] ^ ((~bArr[index(r6 % 5, r27)]) & bArr[index((r46 + 2) % 5, r27)]));
                r46 = r6;
            }
            for (int r47 = 0; r47 < 5; r47++) {
                bArr[index(r47, r27)] = bArr2[r47];
            }
        }
        bArr[0] = (byte) (this.KeccakRoundConstants[r11] ^ bArr[0]);
    }

    private byte ROL8(byte b10, int r32) {
        int r22 = b10;
        if (r32 != 0) {
            int r23 = b10 & 255;
            r22 = (r23 >>> (8 - r32)) ^ (r23 << r32);
        }
        return (byte) r22;
    }

    private void checkAad() {
        int r02 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[this.m_state.ordinal()];
        if (r02 == 5) {
            throw new IllegalArgumentException(c.h(new StringBuilder(), this.algorithmName, " cannot be reused for encryption"));
        }
        if (r02 == 7) {
            throw new IllegalArgumentException(c.h(new StringBuilder(), this.algorithmName, " cannot process AAD when the length of the ciphertext to be processed exceeds the a block size"));
        }
        if (r02 == 8) {
            throw new IllegalArgumentException(c.h(new StringBuilder(), this.algorithmName, " cannot process AAD when the length of the plaintext to be processed exceeds the a block size"));
        }
    }

    private void get_c_block(byte[] bArr, byte[] bArr2, int r6, int r72, int r82) {
        int r02 = this.BLOCK_SIZE;
        int r83 = r82 * r02;
        if (r83 == r72) {
            Arrays.fill(bArr, 0, r02, (byte) 0);
            bArr[0] = 1;
            return;
        }
        int r73 = r72 - r83;
        if (r02 <= r73) {
            System.arraycopy(bArr2, r6, bArr, 0, r02);
            return;
        }
        if (r73 > 0) {
            System.arraycopy(bArr2, r6, bArr, 0, r73);
        }
        Arrays.fill(bArr, r73, this.BLOCK_SIZE, (byte) 0);
        bArr[r73] = 1;
    }

    private int index(int r12, int r22) {
        return (r22 * 5) + r12;
    }

    private void lfsr_step(byte[] bArr, byte[] bArr2) {
        int r02 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters[this.parameters.ordinal()];
        if (r02 == 1) {
            int r03 = this.BLOCK_SIZE - 1;
            byte b10 = bArr2[0];
            int r32 = (bArr2[3] & 255) << 7;
            int r12 = (bArr2[13] & 255) >>> 7;
            bArr[r03] = (byte) (r12 ^ (r32 ^ (((b10 & 255) >>> 5) | ((b10 & 255) << 3))));
        } else if (r02 == 2) {
            bArr[this.BLOCK_SIZE - 1] = (byte) ((rotl(bArr2[0]) ^ ((bArr2[3] & 255) << 7)) ^ ((bArr2[19] & 255) >>> 7));
        } else if (r02 == 3) {
            bArr[this.BLOCK_SIZE - 1] = (byte) ((bArr2[13] << 1) ^ (rotl(bArr2[0]) ^ rotl(bArr2[2])));
        }
        System.arraycopy(bArr2, 1, bArr, 0, this.BLOCK_SIZE - 1);
    }

    private void permutation(byte[] bArr) {
        int r82;
        int r02 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters[this.parameters.ordinal()];
        if (r02 != 1 && r02 != 2) {
            if (r02 != 3) {
                return;
            }
            for (int r32 = 0; r32 < this.nRounds; r32++) {
                KeccakP200Round(bArr, r32);
            }
            return;
        }
        byte b10 = this.lfsrIV;
        byte[] bArr2 = new byte[this.nSBox];
        for (int r6 = 0; r6 < this.nRounds; r6++) {
            bArr[0] = (byte) (bArr[0] ^ b10);
            int r72 = this.nSBox - 1;
            byte b11 = bArr[r72];
            int r10 = b10 & ISO7816.INS_VERIFY;
            int r11 = b10 & 64;
            bArr[r72] = (byte) (b11 ^ ((byte) (((((((((b10 & 1) << 7) | ((b10 & 2) << 5)) | ((b10 & 4) << 3)) | ((b10 & 8) << 1)) | ((b10 & 16) >>> 1)) | (r10 >>> 3)) | (r11 >>> 5)) | ((b10 & ISOFileInfo.DATA_BYTES1) >>> 7))));
            b10 = (byte) (((b10 << 1) | ((r11 >>> 6) ^ (r10 >>> 5))) & CertificateBody.profileType);
            for (int r73 = 0; r73 < this.nSBox; r73++) {
                bArr[r73] = this.sBoxLayer[bArr[r73] & 255];
            }
            Arrays.fill(bArr2, (byte) 0);
            int r74 = 0;
            while (true) {
                r82 = this.nSBox;
                if (r74 < r82) {
                    for (int r83 = 0; r83 < 8; r83++) {
                        int r92 = (r74 << 3) + r83;
                        int r102 = this.nBits;
                        if (r92 != r102 - 1) {
                            r92 = ((r92 * r102) >> 2) % (r102 - 1);
                        }
                        int r103 = r92 >>> 3;
                        bArr2[r103] = (byte) (((((bArr[r74] & 255) >>> r83) & 1) << (r92 & 7)) ^ bArr2[r103]);
                    }
                    r74++;
                }
            }
            System.arraycopy(bArr2, 0, bArr, 0, r82);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void processAADBytes(byte[] r9) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.engines.ElephantEngine.processAADBytes(byte[]):void");
    }

    private int processBytes(byte[] bArr, byte[] bArr2, int r19, int r20, int r21, int r22, int r23, int r24) {
        int r10 = this.nb_its;
        int r02 = 0;
        while (r10 < r20) {
            lfsr_step(this.next_mask, this.current_mask);
            if (r10 < r21) {
                System.arraycopy(this.npub, 0, this.buffer, 0, 12);
                Arrays.fill(this.buffer, 12, this.BLOCK_SIZE, (byte) 0);
                xor_block(this.buffer, this.current_mask, 0, this.BLOCK_SIZE);
                xor_block(this.buffer, this.next_mask, 0, this.BLOCK_SIZE);
                permutation(this.buffer);
                xor_block(this.buffer, this.current_mask, 0, this.BLOCK_SIZE);
                xor_block(this.buffer, this.next_mask, 0, this.BLOCK_SIZE);
                int r12 = r10 == r21 + (-1) ? r23 - (this.BLOCK_SIZE * r10) : this.BLOCK_SIZE;
                xor_block(this.buffer, bArr, 0, r12);
                System.arraycopy(this.buffer, 0, bArr2, r19, r12);
                if (this.forEncryption) {
                    System.arraycopy(this.buffer, 0, this.outputMessage, 0, r12);
                } else {
                    System.arraycopy(bArr, 0, this.outputMessage, 0, r12);
                }
                r02 += r12;
            }
            int r14 = r02;
            if (r10 > 0 && r10 <= r22) {
                get_c_block(this.buffer, this.previous_outputMessage, 0, r23, r10 - 1);
                xor_block(this.buffer, this.previous_mask, 0, this.BLOCK_SIZE);
                xor_block(this.buffer, this.next_mask, 0, this.BLOCK_SIZE);
                permutation(this.buffer);
                xor_block(this.buffer, this.previous_mask, 0, this.BLOCK_SIZE);
                xor_block(this.buffer, this.next_mask, 0, this.BLOCK_SIZE);
                xor_block(this.tag_buffer, this.buffer, 0, this.BLOCK_SIZE);
            }
            r10++;
            if (r10 < r24) {
                processAADBytes(this.buffer);
                xor_block(this.buffer, this.next_mask, 0, this.BLOCK_SIZE);
                permutation(this.buffer);
                xor_block(this.buffer, this.next_mask, 0, this.BLOCK_SIZE);
                xor_block(this.tag_buffer, this.buffer, 0, this.BLOCK_SIZE);
            }
            byte[] bArr3 = this.previous_mask;
            this.previous_mask = this.current_mask;
            this.current_mask = this.next_mask;
            this.next_mask = bArr3;
            System.arraycopy(this.outputMessage, 0, this.previous_outputMessage, 0, this.BLOCK_SIZE);
            r02 = r14;
        }
        return r02;
    }

    private void reset(boolean z10) {
        if (z10) {
            this.tag = null;
        }
        this.aadData.reset();
        Arrays.fill(this.tag_buffer, (byte) 0);
        this.inputOff = 0;
        this.nb_its = 0;
        this.adOff = -1;
    }

    private byte rotl(byte b10) {
        int r22 = b10 & 255;
        return (byte) ((r22 >>> 7) | (r22 << 1));
    }

    private void xor_block(byte[] bArr, byte[] bArr2, int r6, int r72) {
        for (int r02 = 0; r02 < r72; r02++) {
            bArr[r02] = (byte) (bArr[r02] ^ bArr2[r02 + r6]);
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int r13) throws InvalidCipherTextException, IllegalStateException {
        if (!this.initialised) {
            throw new IllegalArgumentException(c.h(new StringBuilder(), this.algorithmName, " needs call init function before doFinal"));
        }
        int r02 = this.inputOff;
        boolean z10 = this.forEncryption;
        if ((z10 && r02 + r13 + this.CRYPTO_ABYTES > bArr.length) || (!z10 && (r02 + r13) - this.CRYPTO_ABYTES > bArr.length)) {
            throw new OutputLengthException("output buffer is too short");
        }
        byte[] byteArray = this.aadData.toByteArray();
        int r22 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[this.m_state.ordinal()];
        if (r22 == 1 || r22 == 2) {
            processAADBytes(this.tag_buffer);
        }
        int r23 = this.nb_its;
        int r32 = this.BLOCK_SIZE;
        int r10 = ((r23 * r32) + r02) - (this.forEncryption ? (byte) 0 : this.CRYPTO_ABYTES);
        int r6 = (r10 / r32) + 1;
        int length = ((byteArray.length + 12) / r32) + 1;
        int r03 = processBytes(this.inputMessage, bArr, r13, Math.max(r6 + 1, length - 1), r10 % r32 != 0 ? r6 : r6 - 1, r6, r10, length) + r13;
        this.tag = new byte[this.CRYPTO_ABYTES];
        xor_block(this.tag_buffer, this.expanded_key, 0, this.BLOCK_SIZE);
        permutation(this.tag_buffer);
        xor_block(this.tag_buffer, this.expanded_key, 0, this.BLOCK_SIZE);
        if (this.forEncryption) {
            System.arraycopy(this.tag_buffer, 0, this.tag, 0, this.CRYPTO_ABYTES);
            byte[] bArr2 = this.tag;
            System.arraycopy(bArr2, 0, bArr, r03, bArr2.length);
            r10 += this.CRYPTO_ABYTES;
        } else {
            this.inputOff -= this.CRYPTO_ABYTES;
            for (int r04 = 0; r04 < this.CRYPTO_ABYTES; r04++) {
                if (this.tag_buffer[r04] != this.inputMessage[this.inputOff + r04]) {
                    throw new IllegalArgumentException("Mac does not match");
                }
            }
        }
        reset(false);
        return r10;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.algorithmName;
    }

    public int getBlockSize() {
        return this.CRYPTO_ABYTES;
    }

    public int getIVBytesSize() {
        return 12;
    }

    public int getKeyBytesSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return this.tag;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int r42) {
        int r02 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[this.m_state.ordinal()];
        if (r02 != 1) {
            if (r02 == 3) {
                throw new IllegalArgumentException(c.h(new StringBuilder(), this.algorithmName, " needs call init function before getUpdateOutputSize"));
            }
            if (r02 == 4 || r02 == 5) {
                return 0;
            }
            if (r02 != 6 && r02 != 7) {
                return Math.max(0, r42 - this.CRYPTO_ABYTES);
            }
        }
        return r42 + this.CRYPTO_ABYTES;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int r42) {
        int r02 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[this.m_state.ordinal()];
        if (r02 != 1) {
            if (r02 == 3) {
                throw new IllegalArgumentException(c.h(new StringBuilder(), this.algorithmName, " needs call init function before getUpdateOutputSize"));
            }
            if (r02 == 4 || r02 == 5) {
                return 0;
            }
            if (r02 != 6 && r02 != 7) {
                return Math.max(0, (r42 + this.inputOff) - this.CRYPTO_ABYTES);
            }
        }
        return this.inputOff + r42 + this.CRYPTO_ABYTES;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.forEncryption = z10;
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException(c.h(new StringBuilder(), this.algorithmName, " init parameters must include an IV"));
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] bArr = parametersWithIV.getIV();
        this.npub = bArr;
        if (bArr == null || bArr.length != 12) {
            throw new IllegalArgumentException(c.h(new StringBuilder(), this.algorithmName, " requires exactly 12 bytes of IV"));
        }
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            throw new IllegalArgumentException(c.h(new StringBuilder(), this.algorithmName, " init parameters must include a key"));
        }
        byte[] key = ((KeyParameter) parametersWithIV.getParameters()).getKey();
        if (key.length != 16) {
            throw new IllegalArgumentException(c.h(new StringBuilder(), this.algorithmName, " key must be 128 bits long"));
        }
        byte[] bArr2 = new byte[this.BLOCK_SIZE];
        this.expanded_key = bArr2;
        System.arraycopy(key, 0, bArr2, 0, 16);
        permutation(this.expanded_key);
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z10)));
        this.initialised = true;
        this.m_state = z10 ? State.EncInit : State.DecInit;
        this.inputMessage = new byte[this.BLOCK_SIZE + (z10 ? (byte) 0 : this.CRYPTO_ABYTES)];
        reset(false);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b10) {
        this.aadData.write(b10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int r42, int r52) {
        if (r42 + r52 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        this.aadData.write(bArr, r42, r52);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b10, byte[] bArr, int r10) throws DataLengthException {
        return processBytes(new byte[]{b10}, 0, 1, bArr, r10);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int r18, int r19, byte[] bArr2, int r21) throws DataLengthException {
        if (r18 + r19 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        byte[] byteArray = this.aadData.toByteArray();
        int r12 = this.inputOff;
        if ((r12 + r19) - (this.forEncryption ? (byte) 0 : this.CRYPTO_ABYTES) < this.BLOCK_SIZE) {
            System.arraycopy(bArr, r18, this.inputMessage, r12, r19);
            this.inputOff += r19;
            return 0;
        }
        int r13 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State[this.m_state.ordinal()];
        if (r13 == 1 || r13 == 2) {
            processAADBytes(this.tag_buffer);
        }
        int r72 = (this.inputOff + r19) - (this.forEncryption ? (byte) 0 : this.CRYPTO_ABYTES);
        int length = byteArray.length;
        int r14 = this.BLOCK_SIZE;
        int r142 = r72 / r14;
        int r52 = (r72 % r14 != 0 ? r142 : r142 - 1) + 1;
        int r82 = ((length + 12) / r14) + 1;
        int r02 = Math.max(r142, 1) * this.BLOCK_SIZE;
        byte[] bArr3 = new byte[r02];
        System.arraycopy(this.inputMessage, 0, bArr3, 0, this.inputOff);
        int r22 = this.inputOff;
        int r15 = r02 - r22;
        System.arraycopy(bArr, r18, bArr3, r22, r02 - r22);
        processBytes(bArr3, bArr2, r21, r142, r52, r142, r72, r82);
        int r03 = r19 - r15;
        this.inputOff = r03;
        System.arraycopy(bArr, r18 + r15, this.inputMessage, 0, r03);
        this.nb_its += r142;
        return r142 * this.BLOCK_SIZE;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        reset(true);
    }
}
