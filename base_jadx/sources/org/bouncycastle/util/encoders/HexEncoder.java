package org.bouncycastle.util.encoders;

import java.io.IOException;
import java.io.OutputStream;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;

/* loaded from: classes2.dex */
public class HexEncoder implements Encoder {
    protected final byte[] encodingTable = {ISO7816.INS_DECREASE, 49, ISO7816.INS_INCREASE, 51, ISO7816.INS_DECREASE_STAMPED, 53, 54, 55, 56, 57, 97, ISOFileInfo.FCP_BYTE, 99, ISOFileInfo.FMD_BYTE, 101, 102};
    protected final byte[] decodingTable = new byte[128];

    public HexEncoder() {
        initialiseDecodingTable();
    }

    private static boolean ignore(char c10) {
        return c10 == '\n' || c10 == '\r' || c10 == '\t' || c10 == ' ';
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(String str, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[36];
        int length = str.length();
        while (length > 0 && ignore(str.charAt(length - 1))) {
            length--;
        }
        int r42 = 0;
        int r52 = 0;
        int r6 = 0;
        while (r42 < length) {
            while (r42 < length && ignore(str.charAt(r42))) {
                r42++;
            }
            int r82 = r42 + 1;
            byte b10 = this.decodingTable[str.charAt(r42)];
            while (r82 < length && ignore(str.charAt(r82))) {
                r82++;
            }
            int r92 = r82 + 1;
            byte b11 = this.decodingTable[str.charAt(r82)];
            if ((b10 | b11) < 0) {
                throw new IOException("invalid characters encountered in Hex string");
            }
            int r83 = r52 + 1;
            bArr[r52] = (byte) ((b10 << 4) | b11);
            if (r83 == 36) {
                outputStream.write(bArr);
                r52 = 0;
            } else {
                r52 = r83;
            }
            r6++;
            r42 = r92;
        }
        if (r52 > 0) {
            outputStream.write(bArr, 0, r52);
        }
        return r6;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(byte[] bArr, int r10, int r11, OutputStream outputStream) throws IOException {
        byte[] bArr2 = new byte[36];
        int r112 = r11 + r10;
        while (r112 > r10 && ignore((char) bArr[r112 - 1])) {
            r112--;
        }
        int r32 = 0;
        int r42 = 0;
        while (r10 < r112) {
            while (r10 < r112 && ignore((char) bArr[r10])) {
                r10++;
            }
            int r6 = r10 + 1;
            byte b10 = this.decodingTable[bArr[r10]];
            while (r6 < r112 && ignore((char) bArr[r6])) {
                r6++;
            }
            int r72 = r6 + 1;
            byte b11 = this.decodingTable[bArr[r6]];
            if ((b10 | b11) < 0) {
                throw new IOException("invalid characters encountered in Hex data");
            }
            int r62 = r32 + 1;
            bArr2[r32] = (byte) ((b10 << 4) | b11);
            if (r62 == 36) {
                outputStream.write(bArr2);
                r32 = 0;
            } else {
                r32 = r62;
            }
            r42++;
            r10 = r72;
        }
        if (r32 > 0) {
            outputStream.write(bArr2, 0, r32);
        }
        return r42;
    }

    public byte[] decodeStrict(String str, int r72, int r82) throws IOException {
        if (str == null) {
            throw new NullPointerException("'str' cannot be null");
        }
        if (r72 < 0 || r82 < 0 || r72 > str.length() - r82) {
            throw new IndexOutOfBoundsException("invalid offset and/or length specified");
        }
        if ((r82 & 1) != 0) {
            throw new IOException("a hexadecimal encoding must have an even number of characters");
        }
        int r83 = r82 >>> 1;
        byte[] bArr = new byte[r83];
        int r12 = 0;
        while (r12 < r83) {
            int r32 = r72 + 1;
            int r42 = r32 + 1;
            int r73 = (this.decodingTable[str.charAt(r72)] << 4) | this.decodingTable[str.charAt(r32)];
            if (r73 < 0) {
                throw new IOException("invalid characters encountered in Hex string");
            }
            bArr[r12] = (byte) r73;
            r12++;
            r72 = r42;
        }
        return bArr;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int encode(byte[] bArr, int r12, int r13, OutputStream outputStream) throws IOException {
        if (r13 < 0) {
            return 0;
        }
        byte[] bArr2 = new byte[72];
        int r82 = r13;
        while (r82 > 0) {
            int r92 = Math.min(36, r82);
            outputStream.write(bArr2, 0, encode(bArr, r12, r92, bArr2, 0));
            r12 += r92;
            r82 -= r92;
        }
        return r13 * 2;
    }

    public int encode(byte[] bArr, int r72, int r82, byte[] bArr2, int r10) throws IOException {
        int r83 = r82 + r72;
        int r02 = r10;
        while (r72 < r83) {
            int r12 = r72 + 1;
            int r73 = bArr[r72] & 255;
            int r22 = r02 + 1;
            byte[] bArr3 = this.encodingTable;
            bArr2[r02] = bArr3[r73 >>> 4];
            r02 = r22 + 1;
            bArr2[r22] = bArr3[r73 & 15];
            r72 = r12;
        }
        return r02 - r10;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getEncodedLength(int r12) {
        return r12 * 2;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getMaxDecodedLength(int r12) {
        return r12 / 2;
    }

    public void initialiseDecodingTable() {
        int r02 = 0;
        int r12 = 0;
        while (true) {
            byte[] bArr = this.decodingTable;
            if (r12 >= bArr.length) {
                break;
            }
            bArr[r12] = -1;
            r12++;
        }
        while (true) {
            byte[] bArr2 = this.encodingTable;
            if (r02 >= bArr2.length) {
                byte[] bArr3 = this.decodingTable;
                bArr3[65] = bArr3[97];
                bArr3[66] = bArr3[98];
                bArr3[67] = bArr3[99];
                bArr3[68] = bArr3[100];
                bArr3[69] = bArr3[101];
                bArr3[70] = bArr3[102];
                return;
            }
            this.decodingTable[bArr2[r02]] = (byte) r02;
            r02++;
        }
    }
}
