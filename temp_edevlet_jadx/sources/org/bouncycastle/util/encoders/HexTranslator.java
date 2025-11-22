package org.bouncycastle.util.encoders;

import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public class HexTranslator implements Translator {
    private static final byte[] hexTable = {ISO7816.INS_DECREASE, 49, ISO7816.INS_INCREASE, 51, ISO7816.INS_DECREASE_STAMPED, 53, 54, 55, 56, 57, 97, ISOFileInfo.FCP_BYTE, 99, ISOFileInfo.FMD_BYTE, 101, 102};

    @Override // org.bouncycastle.util.encoders.Translator
    public int decode(byte[] bArr, int r6, int r72, byte[] bArr2, int r92) {
        int r73 = r72 / 2;
        for (int r02 = 0; r02 < r73; r02++) {
            int r12 = (r02 * 2) + r6;
            byte b10 = bArr[r12];
            byte b11 = bArr[r12 + 1];
            if (b10 < 97) {
                bArr2[r92] = (byte) ((b10 + ISO7816.INS_WRITE_BINARY) << 4);
            } else {
                bArr2[r92] = (byte) (((b10 - 97) + 10) << 4);
            }
            if (b11 < 97) {
                bArr2[r92] = (byte) (bArr2[r92] + ((byte) (b11 + ISO7816.INS_WRITE_BINARY)));
            } else {
                bArr2[r92] = (byte) (bArr2[r92] + ((byte) ((b11 - 97) + 10)));
            }
            r92++;
        }
        return r73;
    }

    @Override // org.bouncycastle.util.encoders.Translator
    public int encode(byte[] bArr, int r72, int r82, byte[] bArr2, int r10) {
        int r02 = 0;
        int r12 = 0;
        while (r02 < r82) {
            int r22 = r10 + r12;
            byte[] bArr3 = hexTable;
            bArr2[r22] = bArr3[(bArr[r72] >> 4) & 15];
            bArr2[r22 + 1] = bArr3[bArr[r72] & PassportService.SFI_DG15];
            r72++;
            r02++;
            r12 += 2;
        }
        return r82 * 2;
    }

    @Override // org.bouncycastle.util.encoders.Translator
    public int getDecodedBlockSize() {
        return 1;
    }

    @Override // org.bouncycastle.util.encoders.Translator
    public int getEncodedBlockSize() {
        return 2;
    }
}
