package org.bouncycastle.crypto.digests;

import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Memoable;
import org.jmrtd.PassportService;
import org.jmrtd.lds.CVCAFile;

/* loaded from: classes2.dex */
public class MD2Digest implements ExtendedDigest, Memoable {
    private static final int DIGEST_LENGTH = 16;
    private static final byte[] S = {41, 46, 67, -55, -94, ISO7816.INS_LOAD_KEY_FILE, 124, 1, 61, 54, 84, ISOFileInfo.A1, -20, -16, 6, 19, ISOFileInfo.FCP_BYTE, -89, 5, -13, ISO7816.INS_GET_RESPONSE, -57, 115, ISOFileInfo.SECURITY_ATTR_COMPACT, -104, -109, 43, -39, PSSSigner.TRAILER_IMPLICIT, 76, -126, ISO7816.INS_GET_DATA, PassportService.SFI_COM, -101, 87, 60, -3, -44, ISO7816.INS_CREATE_FILE, 22, 103, CVCAFile.CAR_TAG, ISOFileInfo.FCI_BYTE, 24, ISOFileInfo.LCS_BYTE, 23, -27, 18, -66, 78, -60, ISO7816.INS_UPDATE_BINARY, ISO7816.INS_PUT_DATA, -98, -34, 73, ISOFileInfo.A0, -5, -11, ISOFileInfo.CHANNEL_SECURITY, -69, 47, -18, 122, -87, 104, 121, -111, 21, -78, 7, 63, -108, ISO7816.INS_ENVELOPE, 16, -119, PassportService.SFI_DG11, ISO7816.INS_MSE, 95, 33, ISOFileInfo.DATA_BYTES1, 127, 93, -102, 90, -112, ISO7816.INS_INCREASE, 39, 53, 62, -52, -25, -65, -9, -105, 3, -1, 25, ISO7816.INS_DECREASE, ISO7816.INS_READ_RECORD2, 72, ISOFileInfo.A5, -75, -47, -41, 94, -110, ISO7816.INS_PSO, -84, 86, -86, -58, 79, -72, 56, ISO7816.INS_WRITE_RECORD, -106, -92, 125, ISO7816.INS_READ_RECORD_STAMPED, 118, -4, 107, ISO7816.INS_APPEND_RECORD, -100, 116, 4, -15, 69, -99, ISO7816.INS_MANAGE_CHANNEL, 89, ISOFileInfo.FMD_BYTE, 113, ISOFileInfo.FCI_EXT, ISO7816.INS_VERIFY, -122, 91, -49, 101, -26, 45, -88, 2, 27, 96, 37, -83, -82, ISO7816.INS_READ_BINARY, -71, -10, 28, 70, 97, 105, ISO7816.INS_DECREASE_STAMPED, 64, 126, PassportService.SFI_DG15, 85, 71, -93, 35, -35, 81, -81, 58, -61, 92, -7, -50, -70, -59, -22, 38, ISO7816.INS_UNBLOCK_CHV, 83, PassportService.SFI_DG13, 110, ISOFileInfo.PROP_INFO, 40, -124, 9, -45, -33, -51, -12, 65, ISOFileInfo.DATA_BYTES2, 77, 82, 106, ISO7816.INS_UPDATE_RECORD, 55, -56, 108, -63, ISOFileInfo.AB, -6, ISO7816.INS_CHANGE_CHV, -31, 123, 8, PassportService.SFI_DG12, -67, ISO7816.INS_READ_BINARY2, 74, 120, -120, -107, ISOFileInfo.SECURITY_ATTR_EXP, -29, 99, -24, 109, -23, -53, -43, -2, 59, 0, 29, 57, -14, -17, -73, 14, 102, 88, ISO7816.INS_WRITE_BINARY, ISO7816.INS_DELETE_FILE, -90, 119, 114, -8, -21, 117, 75, 10, 49, ISO7816.INS_REHABILITATE_CHV, 80, ISO7816.INS_READ_BINARY_STAMPED, -113, -19, 31, 26, -37, -103, ISOFileInfo.ENV_TEMP_EF, 51, -97, 17, ISOFileInfo.FILE_IDENTIFIER, 20};
    private byte[] C;
    private int COff;
    private byte[] M;
    private byte[] X;
    private int mOff;
    private final CryptoServicePurpose purpose;
    private int xOff;

    public MD2Digest() {
        this(CryptoServicePurpose.ANY);
    }

    public MD2Digest(CryptoServicePurpose cryptoServicePurpose) {
        this.X = new byte[48];
        this.M = new byte[16];
        this.C = new byte[16];
        this.purpose = cryptoServicePurpose;
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, 64, cryptoServicePurpose));
        reset();
    }

    public MD2Digest(MD2Digest mD2Digest) {
        this.X = new byte[48];
        this.M = new byte[16];
        this.C = new byte[16];
        CryptoServicePurpose cryptoServicePurpose = mD2Digest.purpose;
        this.purpose = cryptoServicePurpose;
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, 64, cryptoServicePurpose));
        copyIn(mD2Digest);
    }

    private void copyIn(MD2Digest mD2Digest) {
        byte[] bArr = mD2Digest.X;
        System.arraycopy(bArr, 0, this.X, 0, bArr.length);
        this.xOff = mD2Digest.xOff;
        byte[] bArr2 = mD2Digest.M;
        System.arraycopy(bArr2, 0, this.M, 0, bArr2.length);
        this.mOff = mD2Digest.mOff;
        byte[] bArr3 = mD2Digest.C;
        System.arraycopy(bArr3, 0, this.C, 0, bArr3.length);
        this.COff = mD2Digest.COff;
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new MD2Digest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r6) {
        int length = this.M.length;
        int r12 = this.mOff;
        byte b10 = (byte) (length - r12);
        while (true) {
            byte[] bArr2 = this.M;
            if (r12 >= bArr2.length) {
                processCheckSum(bArr2);
                processBlock(this.M);
                processBlock(this.C);
                System.arraycopy(this.X, this.xOff, bArr, r6, 16);
                reset();
                return 16;
            }
            bArr2[r12] = b10;
            r12++;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "MD2";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 16;
    }

    public void processBlock(byte[] bArr) {
        for (int r12 = 0; r12 < 16; r12++) {
            byte[] bArr2 = this.X;
            bArr2[r12 + 16] = bArr[r12];
            bArr2[r12 + 32] = (byte) (bArr[r12] ^ bArr2[r12]);
        }
        int r13 = 0;
        for (int r72 = 0; r72 < 18; r72++) {
            for (int r22 = 0; r22 < 48; r22++) {
                byte[] bArr3 = this.X;
                byte b10 = (byte) (S[r13] ^ bArr3[r22]);
                bArr3[r22] = b10;
                r13 = b10 & 255;
            }
            r13 = (r13 + r72) % 256;
        }
    }

    public void processCheckSum(byte[] bArr) {
        byte b10 = this.C[15];
        for (int r12 = 0; r12 < 16; r12++) {
            byte[] bArr2 = this.C;
            b10 = (byte) (S[(b10 ^ bArr[r12]) & 255] ^ bArr2[r12]);
            bArr2[r12] = b10;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.xOff = 0;
        int r12 = 0;
        while (true) {
            byte[] bArr = this.X;
            if (r12 == bArr.length) {
                break;
            }
            bArr[r12] = 0;
            r12++;
        }
        this.mOff = 0;
        int r13 = 0;
        while (true) {
            byte[] bArr2 = this.M;
            if (r13 == bArr2.length) {
                break;
            }
            bArr2[r13] = 0;
            r13++;
        }
        this.COff = 0;
        int r14 = 0;
        while (true) {
            byte[] bArr3 = this.C;
            if (r14 == bArr3.length) {
                return;
            }
            bArr3[r14] = 0;
            r14++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        copyIn((MD2Digest) memoable);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        byte[] bArr = this.M;
        int r12 = this.mOff;
        int r22 = r12 + 1;
        this.mOff = r22;
        bArr[r12] = b10;
        if (r22 == 16) {
            processCheckSum(bArr);
            processBlock(this.M);
            this.mOff = 0;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r52, int r6) {
        while (this.mOff != 0 && r6 > 0) {
            update(bArr[r52]);
            r52++;
            r6--;
        }
        while (r6 >= 16) {
            System.arraycopy(bArr, r52, this.M, 0, 16);
            processCheckSum(this.M);
            processBlock(this.M);
            r6 -= 16;
            r52 += 16;
        }
        while (r6 > 0) {
            update(bArr[r52]);
            r52++;
            r6--;
        }
    }
}
