package org.bouncycastle.crypto.macs;

import ab.b;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.params.ParametersWithSBox;
import org.bouncycastle.util.Pack;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public class GOST28147Mac implements Mac {
    private static final int BLOCK_SIZE = 8;
    private static final int MAC_SIZE = 4;
    private byte[] S;
    private byte[] buf;
    private int bufOff;
    private boolean firstStep;
    private byte[] mac;
    private byte[] macIV;
    private final CryptoServicePurpose purpose;
    private int[] workingKey;

    public GOST28147Mac() {
        this(CryptoServicePurpose.AUTHENTICATION);
    }

    public GOST28147Mac(CryptoServicePurpose cryptoServicePurpose) {
        this.firstStep = true;
        this.workingKey = null;
        this.macIV = null;
        this.S = new byte[]{9, 6, 3, 2, 8, PassportService.SFI_DG11, 1, 7, 10, 4, 14, PassportService.SFI_DG15, PassportService.SFI_DG12, 0, PassportService.SFI_DG13, 5, 3, 7, 14, 9, 8, 10, PassportService.SFI_DG15, 0, 5, 2, 6, PassportService.SFI_DG12, PassportService.SFI_DG11, 4, PassportService.SFI_DG13, 1, 14, 4, 6, 2, PassportService.SFI_DG11, 3, PassportService.SFI_DG13, 8, PassportService.SFI_DG12, PassportService.SFI_DG15, 5, 10, 0, 7, 1, 9, 14, 7, 10, PassportService.SFI_DG12, PassportService.SFI_DG13, 1, 3, 9, 0, 2, PassportService.SFI_DG11, 4, PassportService.SFI_DG15, 8, 5, 6, PassportService.SFI_DG11, 5, 1, 9, 8, PassportService.SFI_DG13, PassportService.SFI_DG15, 0, 14, 4, 2, 3, PassportService.SFI_DG12, 7, 10, 6, 3, 10, PassportService.SFI_DG13, PassportService.SFI_DG12, 1, 2, 0, PassportService.SFI_DG11, 7, 5, 9, 4, 8, PassportService.SFI_DG15, 14, 6, 1, PassportService.SFI_DG13, 2, 9, 7, 10, 6, 0, 8, PassportService.SFI_DG12, 4, 5, PassportService.SFI_DG15, 3, PassportService.SFI_DG11, 14, PassportService.SFI_DG11, 10, PassportService.SFI_DG15, 5, 0, PassportService.SFI_DG12, 14, 8, 6, 2, 3, 9, 1, 7, PassportService.SFI_DG13, 4};
        this.purpose = cryptoServicePurpose;
        this.mac = new byte[8];
        this.buf = new byte[8];
        this.bufOff = 0;
    }

    private static void CM5func(byte[] bArr, int r42, byte[] bArr2, byte[] bArr3) {
        for (int r02 = 0; r02 < 8; r02++) {
            bArr3[r02] = (byte) (bArr[r42 + r02] ^ bArr2[r02]);
        }
    }

    private int[] generateWorkingKey(byte[] bArr) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Key length invalid. Key needs to be 32 byte - 256 bit!!!");
        }
        int[] r12 = new int[8];
        for (int r22 = 0; r22 != 8; r22++) {
            r12[r22] = Pack.littleEndianToInt(bArr, r22 * 4);
        }
        return r12;
    }

    private void gost28147MacFunc(int[] r6, byte[] bArr, int r82, byte[] bArr2, int r10) {
        int r02 = Pack.littleEndianToInt(bArr, r82);
        int r72 = Pack.littleEndianToInt(bArr, r82 + 4);
        for (int r12 = 0; r12 < 2; r12++) {
            int r22 = 0;
            while (r22 < 8) {
                int r73 = r72 ^ gost28147_mainStep(r02, r6[r22]);
                r22++;
                int r42 = r02;
                r02 = r73;
                r72 = r42;
            }
        }
        Pack.intToLittleEndian(r02, bArr2, r10);
        Pack.intToLittleEndian(r72, bArr2, r10 + 4);
    }

    private int gost28147_mainStep(int r32, int r42) {
        int r43 = r42 + r32;
        byte[] bArr = this.S;
        int r02 = (bArr[((r43 >> 0) & 15) + 0] << 0) + (bArr[((r43 >> 4) & 15) + 16] << 4) + (bArr[((r43 >> 8) & 15) + 32] << 8) + (bArr[((r43 >> 12) & 15) + 48] << PassportService.SFI_DG12) + (bArr[((r43 >> 16) & 15) + 64] << 16) + (bArr[((r43 >> 20) & 15) + 80] << 20) + (bArr[((r43 >> 24) & 15) + 96] << 24) + (bArr[((r43 >> 28) & 15) + 112] << 28);
        return (r02 << 11) | (r02 >>> 21);
    }

    private void recursiveInit(CipherParameters cipherParameters) throws IllegalArgumentException {
        CipherParameters parameters;
        if (cipherParameters == null) {
            return;
        }
        if (cipherParameters instanceof ParametersWithSBox) {
            ParametersWithSBox parametersWithSBox = (ParametersWithSBox) cipherParameters;
            System.arraycopy(parametersWithSBox.getSBox(), 0, this.S, 0, parametersWithSBox.getSBox().length);
            parameters = parametersWithSBox.getParameters();
        } else if (cipherParameters instanceof KeyParameter) {
            this.workingKey = generateWorkingKey(((KeyParameter) cipherParameters).getKey());
            parameters = null;
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameter passed to GOST28147 init - "));
            }
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] bArr = parametersWithIV.getIV();
            byte[] bArr2 = this.mac;
            System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
            this.macIV = parametersWithIV.getIV();
            parameters = parametersWithIV.getParameters();
        }
        recursiveInit(parameters);
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int r11) throws IllegalStateException, DataLengthException {
        while (true) {
            int r02 = this.bufOff;
            if (r02 >= 8) {
                break;
            }
            this.buf[r02] = 0;
            this.bufOff = r02 + 1;
        }
        byte[] bArr2 = this.buf;
        byte[] bArr3 = new byte[bArr2.length];
        if (this.firstStep) {
            this.firstStep = false;
            System.arraycopy(bArr2, 0, bArr3, 0, this.mac.length);
        } else {
            CM5func(bArr2, 0, this.mac, bArr3);
        }
        gost28147MacFunc(this.workingKey, bArr3, 0, this.mac, 0);
        byte[] bArr4 = this.mac;
        System.arraycopy(bArr4, (bArr4.length / 2) - 4, bArr, r11, 4);
        reset();
        return 4;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "GOST28147Mac";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 4;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        reset();
        this.buf = new byte[8];
        this.macIV = null;
        recursiveInit(cipherParameters);
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 178, cipherParameters, this.purpose));
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        int r12 = 0;
        while (true) {
            byte[] bArr = this.buf;
            if (r12 >= bArr.length) {
                this.bufOff = 0;
                this.firstStep = true;
                return;
            } else {
                bArr[r12] = 0;
                r12++;
            }
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b10) throws IllegalStateException {
        int r02 = this.bufOff;
        byte[] bArr = this.buf;
        if (r02 == bArr.length) {
            byte[] bArr2 = new byte[bArr.length];
            if (this.firstStep) {
                this.firstStep = false;
                byte[] bArr3 = this.macIV;
                if (bArr3 != null) {
                    CM5func(bArr, 0, bArr3, bArr2);
                } else {
                    System.arraycopy(bArr, 0, bArr2, 0, this.mac.length);
                }
            } else {
                CM5func(bArr, 0, this.mac, bArr2);
            }
            gost28147MacFunc(this.workingKey, bArr2, 0, this.mac, 0);
            this.bufOff = 0;
        }
        byte[] bArr4 = this.buf;
        int r12 = this.bufOff;
        this.bufOff = r12 + 1;
        bArr4[r12] = b10;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int r12, int r13) throws IllegalStateException, DataLengthException {
        if (r13 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int r02 = this.bufOff;
        int r14 = 8 - r02;
        if (r13 > r14) {
            System.arraycopy(bArr, r12, this.buf, r02, r14);
            byte[] bArr2 = this.buf;
            byte[] bArr3 = new byte[bArr2.length];
            if (this.firstStep) {
                this.firstStep = false;
                byte[] bArr4 = this.macIV;
                if (bArr4 != null) {
                    CM5func(bArr2, 0, bArr4, bArr3);
                } else {
                    System.arraycopy(bArr2, 0, bArr3, 0, this.mac.length);
                }
            } else {
                CM5func(bArr2, 0, this.mac, bArr3);
            }
            gost28147MacFunc(this.workingKey, bArr3, 0, this.mac, 0);
            this.bufOff = 0;
            r13 -= r14;
            r12 += r14;
            while (r13 > 8) {
                CM5func(bArr, r12, this.mac, bArr3);
                gost28147MacFunc(this.workingKey, bArr3, 0, this.mac, 0);
                r13 -= 8;
                r12 += 8;
            }
        }
        System.arraycopy(bArr, r12, this.buf, this.bufOff, r13);
        this.bufOff += r13;
    }
}
