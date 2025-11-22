package org.bouncycastle.crypto.engines;

import ab.b;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithSBox;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public class GOST28147Engine implements BlockCipher {
    protected static final int BLOCK_SIZE = 8;
    private boolean forEncryption;
    private static byte[] Sbox_Default = {4, 10, 9, 2, PassportService.SFI_DG13, 8, 0, 14, 6, PassportService.SFI_DG11, 1, PassportService.SFI_DG12, 7, PassportService.SFI_DG15, 5, 3, 14, PassportService.SFI_DG11, 4, PassportService.SFI_DG12, 6, PassportService.SFI_DG13, PassportService.SFI_DG15, 10, 2, 3, 8, 1, 0, 7, 5, 9, 5, 8, 1, PassportService.SFI_DG13, 10, 3, 4, 2, 14, PassportService.SFI_DG15, PassportService.SFI_DG12, 7, 6, 0, 9, PassportService.SFI_DG11, 7, PassportService.SFI_DG13, 10, 1, 0, 8, 9, PassportService.SFI_DG15, 14, 4, 6, PassportService.SFI_DG12, PassportService.SFI_DG11, 2, 5, 3, 6, PassportService.SFI_DG12, 7, 1, 5, PassportService.SFI_DG15, PassportService.SFI_DG13, 8, 4, 10, 9, 14, 0, 3, PassportService.SFI_DG11, 2, 4, PassportService.SFI_DG11, 10, 0, 7, 2, 1, PassportService.SFI_DG13, 3, 6, 8, 5, 9, PassportService.SFI_DG12, PassportService.SFI_DG15, 14, PassportService.SFI_DG13, PassportService.SFI_DG11, 4, 1, 3, PassportService.SFI_DG15, 5, 9, 0, 10, 14, 7, 6, 8, 2, PassportService.SFI_DG12, 1, PassportService.SFI_DG15, PassportService.SFI_DG13, 0, 5, 7, 10, 4, 9, 2, 3, 14, 6, PassportService.SFI_DG11, 8, PassportService.SFI_DG12};
    private static byte[] ESbox_Test = {4, 2, PassportService.SFI_DG15, 5, 9, 1, 0, 8, 14, 3, PassportService.SFI_DG11, PassportService.SFI_DG12, PassportService.SFI_DG13, 7, 10, 6, PassportService.SFI_DG12, 9, PassportService.SFI_DG15, 14, 8, 1, 3, 10, 2, 7, 4, PassportService.SFI_DG13, 6, 0, PassportService.SFI_DG11, 5, PassportService.SFI_DG13, 8, 14, PassportService.SFI_DG12, 7, 3, 9, 10, 1, 5, 2, 4, 6, PassportService.SFI_DG15, 0, PassportService.SFI_DG11, 14, 9, PassportService.SFI_DG11, 2, 5, PassportService.SFI_DG15, 7, 1, 0, PassportService.SFI_DG13, PassportService.SFI_DG12, 6, 10, 4, 3, 8, 3, 14, 5, 9, 6, 8, 0, PassportService.SFI_DG13, 10, PassportService.SFI_DG11, 7, PassportService.SFI_DG12, 2, 1, PassportService.SFI_DG15, 4, 8, PassportService.SFI_DG15, 6, PassportService.SFI_DG11, 1, 9, PassportService.SFI_DG12, 5, PassportService.SFI_DG13, 3, 7, 10, 0, 14, 2, 4, 9, PassportService.SFI_DG11, PassportService.SFI_DG12, 0, 3, 6, 7, 5, 4, 8, 14, PassportService.SFI_DG15, 1, 10, 2, PassportService.SFI_DG13, PassportService.SFI_DG12, 6, 5, 2, PassportService.SFI_DG11, 0, 9, PassportService.SFI_DG13, 3, 14, 7, 10, PassportService.SFI_DG15, 4, 1, 8};
    private static byte[] ESbox_A = {9, 6, 3, 2, 8, PassportService.SFI_DG11, 1, 7, 10, 4, 14, PassportService.SFI_DG15, PassportService.SFI_DG12, 0, PassportService.SFI_DG13, 5, 3, 7, 14, 9, 8, 10, PassportService.SFI_DG15, 0, 5, 2, 6, PassportService.SFI_DG12, PassportService.SFI_DG11, 4, PassportService.SFI_DG13, 1, 14, 4, 6, 2, PassportService.SFI_DG11, 3, PassportService.SFI_DG13, 8, PassportService.SFI_DG12, PassportService.SFI_DG15, 5, 10, 0, 7, 1, 9, 14, 7, 10, PassportService.SFI_DG12, PassportService.SFI_DG13, 1, 3, 9, 0, 2, PassportService.SFI_DG11, 4, PassportService.SFI_DG15, 8, 5, 6, PassportService.SFI_DG11, 5, 1, 9, 8, PassportService.SFI_DG13, PassportService.SFI_DG15, 0, 14, 4, 2, 3, PassportService.SFI_DG12, 7, 10, 6, 3, 10, PassportService.SFI_DG13, PassportService.SFI_DG12, 1, 2, 0, PassportService.SFI_DG11, 7, 5, 9, 4, 8, PassportService.SFI_DG15, 14, 6, 1, PassportService.SFI_DG13, 2, 9, 7, 10, 6, 0, 8, PassportService.SFI_DG12, 4, 5, PassportService.SFI_DG15, 3, PassportService.SFI_DG11, 14, PassportService.SFI_DG11, 10, PassportService.SFI_DG15, 5, 0, PassportService.SFI_DG12, 14, 8, 6, 2, 3, 9, 1, 7, PassportService.SFI_DG13, 4};
    private static byte[] ESbox_B = {8, 4, PassportService.SFI_DG11, 1, 3, 5, 0, 9, 2, 14, 10, PassportService.SFI_DG12, PassportService.SFI_DG13, 6, 7, PassportService.SFI_DG15, 0, 1, 2, 10, 4, PassportService.SFI_DG13, 5, PassportService.SFI_DG12, 9, 7, 3, PassportService.SFI_DG15, PassportService.SFI_DG11, 8, 6, 14, 14, PassportService.SFI_DG12, 0, 10, 9, 2, PassportService.SFI_DG13, PassportService.SFI_DG11, 7, 5, 8, PassportService.SFI_DG15, 3, 6, 1, 4, 7, 5, 0, PassportService.SFI_DG13, PassportService.SFI_DG11, 6, 1, 2, 3, 10, PassportService.SFI_DG12, PassportService.SFI_DG15, 4, 14, 9, 8, 2, 7, PassportService.SFI_DG12, PassportService.SFI_DG15, 9, 5, 10, PassportService.SFI_DG11, 1, 4, 0, PassportService.SFI_DG13, 6, 8, 14, 3, 8, 3, 2, 6, 4, PassportService.SFI_DG13, 14, PassportService.SFI_DG11, PassportService.SFI_DG12, 1, 7, PassportService.SFI_DG15, 10, 0, 9, 5, 5, 2, 10, PassportService.SFI_DG11, 9, 1, PassportService.SFI_DG12, 3, 7, 4, PassportService.SFI_DG13, 0, 6, PassportService.SFI_DG15, 8, 14, 0, 4, PassportService.SFI_DG11, 14, 8, 3, 7, 1, 10, 2, 9, 6, PassportService.SFI_DG15, PassportService.SFI_DG13, 5, PassportService.SFI_DG12};
    private static byte[] ESbox_C = {1, PassportService.SFI_DG11, PassportService.SFI_DG12, 2, 9, PassportService.SFI_DG13, 0, PassportService.SFI_DG15, 4, 5, 8, 14, 10, 7, 6, 3, 0, 1, 7, PassportService.SFI_DG13, PassportService.SFI_DG11, 4, 5, 2, 8, 14, PassportService.SFI_DG15, PassportService.SFI_DG12, 9, 10, 6, 3, 8, 2, 5, 0, 4, 9, PassportService.SFI_DG15, 10, 3, 7, PassportService.SFI_DG12, PassportService.SFI_DG13, 6, 14, 1, PassportService.SFI_DG11, 3, 6, 0, 1, 5, PassportService.SFI_DG13, 10, 8, PassportService.SFI_DG11, 2, 9, 7, 14, PassportService.SFI_DG15, PassportService.SFI_DG12, 4, 8, PassportService.SFI_DG13, PassportService.SFI_DG11, 0, 4, 5, 1, 2, 9, 3, PassportService.SFI_DG12, 14, 6, PassportService.SFI_DG15, 10, 7, PassportService.SFI_DG12, 9, PassportService.SFI_DG11, 1, 8, 14, 2, 4, 7, 3, 6, 5, 10, 0, PassportService.SFI_DG15, PassportService.SFI_DG13, 10, 9, 6, 8, PassportService.SFI_DG13, 14, 2, 0, PassportService.SFI_DG15, 3, 5, PassportService.SFI_DG11, 4, 1, PassportService.SFI_DG12, 7, 7, 4, 0, 5, 10, 2, PassportService.SFI_DG15, 14, PassportService.SFI_DG12, 6, 1, PassportService.SFI_DG11, PassportService.SFI_DG13, 9, 3, 8};
    private static byte[] ESbox_D = {PassportService.SFI_DG15, PassportService.SFI_DG12, 2, 10, 6, 4, 5, 0, 7, 9, 14, PassportService.SFI_DG13, 1, PassportService.SFI_DG11, 8, 3, PassportService.SFI_DG11, 6, 3, 4, PassportService.SFI_DG12, PassportService.SFI_DG15, 14, 2, 7, PassportService.SFI_DG13, 8, 0, 5, 10, 9, 1, 1, PassportService.SFI_DG12, PassportService.SFI_DG11, 0, PassportService.SFI_DG15, 14, 6, 5, 10, PassportService.SFI_DG13, 4, 8, 9, 3, 7, 2, 1, 5, 14, PassportService.SFI_DG12, 10, 7, 0, PassportService.SFI_DG13, 6, 2, PassportService.SFI_DG11, 4, 9, 3, PassportService.SFI_DG15, 8, 0, PassportService.SFI_DG12, 8, 9, PassportService.SFI_DG13, 2, 10, PassportService.SFI_DG11, 7, 3, 6, 5, 4, 14, PassportService.SFI_DG15, 1, 8, 0, PassportService.SFI_DG15, 3, 2, 5, 14, PassportService.SFI_DG11, 1, 10, 4, 7, PassportService.SFI_DG12, 9, PassportService.SFI_DG13, 6, 3, 0, 6, PassportService.SFI_DG15, 1, 14, 9, 2, PassportService.SFI_DG13, 8, PassportService.SFI_DG12, 4, PassportService.SFI_DG11, 10, 5, 7, 1, 10, 6, 8, PassportService.SFI_DG15, PassportService.SFI_DG11, 0, 4, PassportService.SFI_DG12, 3, 5, 9, 7, PassportService.SFI_DG13, 2, 14};
    private static byte[] Param_Z = {PassportService.SFI_DG12, 4, 6, 2, 10, 5, PassportService.SFI_DG11, 9, 14, 8, PassportService.SFI_DG13, 7, 0, 3, PassportService.SFI_DG15, 1, 6, 8, 2, 3, 9, 10, 5, PassportService.SFI_DG12, 1, 14, 4, 7, PassportService.SFI_DG11, PassportService.SFI_DG13, 0, PassportService.SFI_DG15, PassportService.SFI_DG11, 3, 5, 8, 2, PassportService.SFI_DG15, 10, PassportService.SFI_DG13, 14, 1, 7, 4, PassportService.SFI_DG12, 9, 6, 0, PassportService.SFI_DG12, 8, 2, 1, PassportService.SFI_DG13, 4, PassportService.SFI_DG15, 6, 7, 0, 10, 5, 3, 14, 9, PassportService.SFI_DG11, 7, PassportService.SFI_DG15, 5, 10, 8, 1, 6, PassportService.SFI_DG13, 0, 9, 3, 14, PassportService.SFI_DG11, 4, 2, PassportService.SFI_DG12, 5, PassportService.SFI_DG13, PassportService.SFI_DG15, 6, 9, 2, PassportService.SFI_DG12, 10, PassportService.SFI_DG11, 7, 8, 1, 4, 3, 14, 0, 8, 14, 2, 5, 6, 9, 1, PassportService.SFI_DG12, PassportService.SFI_DG15, 4, PassportService.SFI_DG11, 0, PassportService.SFI_DG13, 10, 3, 7, 1, 7, 14, PassportService.SFI_DG13, 0, 5, 8, 3, 4, PassportService.SFI_DG15, 10, 6, 9, PassportService.SFI_DG12, PassportService.SFI_DG11, 2};
    private static byte[] DSbox_Test = {4, 10, 9, 2, PassportService.SFI_DG13, 8, 0, 14, 6, PassportService.SFI_DG11, 1, PassportService.SFI_DG12, 7, PassportService.SFI_DG15, 5, 3, 14, PassportService.SFI_DG11, 4, PassportService.SFI_DG12, 6, PassportService.SFI_DG13, PassportService.SFI_DG15, 10, 2, 3, 8, 1, 0, 7, 5, 9, 5, 8, 1, PassportService.SFI_DG13, 10, 3, 4, 2, 14, PassportService.SFI_DG15, PassportService.SFI_DG12, 7, 6, 0, 9, PassportService.SFI_DG11, 7, PassportService.SFI_DG13, 10, 1, 0, 8, 9, PassportService.SFI_DG15, 14, 4, 6, PassportService.SFI_DG12, PassportService.SFI_DG11, 2, 5, 3, 6, PassportService.SFI_DG12, 7, 1, 5, PassportService.SFI_DG15, PassportService.SFI_DG13, 8, 4, 10, 9, 14, 0, 3, PassportService.SFI_DG11, 2, 4, PassportService.SFI_DG11, 10, 0, 7, 2, 1, PassportService.SFI_DG13, 3, 6, 8, 5, 9, PassportService.SFI_DG12, PassportService.SFI_DG15, 14, PassportService.SFI_DG13, PassportService.SFI_DG11, 4, 1, 3, PassportService.SFI_DG15, 5, 9, 0, 10, 14, 7, 6, 8, 2, PassportService.SFI_DG12, 1, PassportService.SFI_DG15, PassportService.SFI_DG13, 0, 5, 7, 10, 4, 9, 2, 3, 14, 6, PassportService.SFI_DG11, 8, PassportService.SFI_DG12};
    private static byte[] DSbox_A = {10, 4, 5, 6, 8, 1, 3, 7, PassportService.SFI_DG13, PassportService.SFI_DG12, 14, 0, 9, 2, PassportService.SFI_DG11, PassportService.SFI_DG15, 5, PassportService.SFI_DG15, 4, 0, 2, PassportService.SFI_DG13, PassportService.SFI_DG11, 9, 1, 7, 6, 3, PassportService.SFI_DG12, 14, 10, 8, 7, PassportService.SFI_DG15, PassportService.SFI_DG12, 14, 9, 4, 1, 0, 3, PassportService.SFI_DG11, 5, 2, 6, 10, 8, PassportService.SFI_DG13, 4, 10, 7, PassportService.SFI_DG12, 0, PassportService.SFI_DG15, 2, 8, 14, 1, 6, 5, PassportService.SFI_DG13, PassportService.SFI_DG11, 9, 3, 7, 6, 4, PassportService.SFI_DG11, 9, PassportService.SFI_DG12, 2, 10, 1, 8, 0, 14, PassportService.SFI_DG15, PassportService.SFI_DG13, 3, 5, 7, 6, 2, 4, PassportService.SFI_DG13, 9, PassportService.SFI_DG15, 0, 10, 1, 5, PassportService.SFI_DG11, 8, 14, PassportService.SFI_DG12, 3, PassportService.SFI_DG13, 14, 4, 1, 7, 0, 5, 10, 3, PassportService.SFI_DG12, 8, PassportService.SFI_DG15, 6, 2, 9, PassportService.SFI_DG11, 1, 3, 10, 9, 5, PassportService.SFI_DG11, 4, PassportService.SFI_DG15, 8, 6, 7, 14, PassportService.SFI_DG13, 0, 2, PassportService.SFI_DG12};
    private static Hashtable sBoxes = new Hashtable();
    private int[] workingKey = null;
    private byte[] S = Sbox_Default;

    static {
        addSBox("Default", Sbox_Default);
        addSBox("E-TEST", ESbox_Test);
        addSBox("E-A", ESbox_A);
        addSBox("E-B", ESbox_B);
        addSBox("E-C", ESbox_C);
        addSBox("E-D", ESbox_D);
        addSBox("Param-Z", Param_Z);
        addSBox("D-TEST", DSbox_Test);
        addSBox("D-A", DSbox_A);
    }

    public GOST28147Engine() {
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 178));
    }

    private void GOST28147Func(int[] r92, byte[] bArr, int r11, byte[] bArr2, int r13) {
        int r112;
        int r10;
        int r02 = bytesToint(bArr, r11);
        int r102 = bytesToint(bArr, r11 + 4);
        int r12 = 7;
        if (this.forEncryption) {
            for (int r113 = 0; r113 < 3; r113++) {
                int r52 = 0;
                while (r52 < 8) {
                    int r103 = r102 ^ GOST28147_mainStep(r02, r92[r52]);
                    r52++;
                    int r72 = r02;
                    r02 = r103;
                    r102 = r72;
                }
            }
            r112 = r102;
            r10 = r02;
            while (r12 > 0) {
                int r114 = r112 ^ GOST28147_mainStep(r10, r92[r12]);
                r12--;
                r112 = r10;
                r10 = r114;
            }
        } else {
            int r115 = 0;
            while (r115 < 8) {
                int r104 = r102 ^ GOST28147_mainStep(r02, r92[r115]);
                r115++;
                int r73 = r02;
                r02 = r104;
                r102 = r73;
            }
            r112 = r102;
            r10 = r02;
            for (int r03 = 0; r03 < 3; r03++) {
                int r32 = 7;
                while (r32 >= 0 && (r03 != 2 || r32 != 0)) {
                    int r116 = r112 ^ GOST28147_mainStep(r10, r92[r32]);
                    r32--;
                    r112 = r10;
                    r10 = r116;
                }
            }
        }
        int r93 = GOST28147_mainStep(r10, r92[0]) ^ r112;
        intTobytes(r10, bArr2, r13);
        intTobytes(r93, bArr2, r13 + 4);
    }

    private int GOST28147_mainStep(int r32, int r42) {
        int r43 = r42 + r32;
        byte[] bArr = this.S;
        int r02 = (bArr[((r43 >> 0) & 15) + 0] << 0) + (bArr[((r43 >> 4) & 15) + 16] << 4) + (bArr[((r43 >> 8) & 15) + 32] << 8) + (bArr[((r43 >> 12) & 15) + 48] << PassportService.SFI_DG12) + (bArr[((r43 >> 16) & 15) + 64] << 16) + (bArr[((r43 >> 20) & 15) + 80] << 20) + (bArr[((r43 >> 24) & 15) + 96] << 24) + (bArr[((r43 >> 28) & 15) + 112] << 28);
        return (r02 << 11) | (r02 >>> 21);
    }

    private static void addSBox(String str, byte[] bArr) {
        sBoxes.put(Strings.toUpperCase(str), bArr);
    }

    private int bytesToint(byte[] bArr, int r52) {
        return ((bArr[r52 + 3] << 24) & ViewCompat.MEASURED_STATE_MASK) + ((bArr[r52 + 2] << 16) & 16711680) + ((bArr[r52 + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + (bArr[r52] & 255);
    }

    private int[] generateWorkingKey(boolean z10, byte[] bArr) {
        this.forEncryption = z10;
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Key length invalid. Key needs to be 32 byte - 256 bit!!!");
        }
        int[] r02 = new int[8];
        for (int r12 = 0; r12 != 8; r12++) {
            r02[r12] = bytesToint(bArr, r12 * 4);
        }
        return r02;
    }

    public static byte[] getSBox(String str) {
        byte[] bArr = (byte[]) sBoxes.get(Strings.toUpperCase(str));
        if (bArr != null) {
            return Arrays.clone(bArr);
        }
        throw new IllegalArgumentException("Unknown S-Box - possible types: \"Default\", \"E-Test\", \"E-A\", \"E-B\", \"E-C\", \"E-D\", \"Param-Z\", \"D-Test\", \"D-A\".");
    }

    public static String getSBoxName(byte[] bArr) {
        Enumeration enumerationKeys = sBoxes.keys();
        while (enumerationKeys.hasMoreElements()) {
            String str = (String) enumerationKeys.nextElement();
            if (Arrays.areEqual((byte[]) sBoxes.get(str), bArr)) {
                return str;
            }
        }
        throw new IllegalArgumentException("SBOX provided did not map to a known one");
    }

    private void intTobytes(int r32, byte[] bArr, int r52) {
        bArr[r52 + 3] = (byte) (r32 >>> 24);
        bArr[r52 + 2] = (byte) (r32 >>> 16);
        bArr[r52 + 1] = (byte) (r32 >>> 8);
        bArr[r52] = (byte) r32;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "GOST28147";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithSBox) {
            ParametersWithSBox parametersWithSBox = (ParametersWithSBox) cipherParameters;
            byte[] sBox = parametersWithSBox.getSBox();
            if (sBox.length != Sbox_Default.length) {
                throw new IllegalArgumentException("invalid S-box passed to GOST28147 init");
            }
            this.S = Arrays.clone(sBox);
            if (parametersWithSBox.getParameters() != null) {
                this.workingKey = generateWorkingKey(z10, ((KeyParameter) parametersWithSBox.getParameters()).getKey());
            }
        } else if (cipherParameters instanceof KeyParameter) {
            this.workingKey = generateWorkingKey(z10, ((KeyParameter) cipherParameters).getKey());
        } else if (cipherParameters != null) {
            throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameter passed to GOST28147 init - "));
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 178, cipherParameters, Utils.getPurpose(z10)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r82, byte[] bArr2, int r10) {
        int[] r12 = this.workingKey;
        if (r12 == null) {
            throw new IllegalStateException("GOST28147 engine not initialised");
        }
        if (r82 + 8 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r10 + 8 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        GOST28147Func(r12, bArr, r82, bArr2, r10);
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
