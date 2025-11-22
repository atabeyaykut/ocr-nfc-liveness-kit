package org.bouncycastle.util.encoders;

import java.io.IOException;
import java.io.OutputStream;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.jmrtd.lds.CVCAFile;

/* loaded from: classes2.dex */
public class Base64Encoder implements Encoder {
    protected final byte[] encodingTable = {65, CVCAFile.CAR_TAG, 67, ISO7816.INS_REHABILITATE_CHV, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, ISOFileInfo.FCP_BYTE, 99, ISOFileInfo.FMD_BYTE, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, ISOFileInfo.FCI_BYTE, ISO7816.INS_MANAGE_CHANNEL, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, ISO7816.INS_DECREASE, 49, ISO7816.INS_INCREASE, 51, ISO7816.INS_DECREASE_STAMPED, 53, 54, 55, 56, 57, 43, 47};
    protected byte padding = 61;
    protected final byte[] decodingTable = new byte[128];

    public Base64Encoder() {
        initialiseDecodingTable();
    }

    private int decodeLastBlock(OutputStream outputStream, char c10, char c11, char c12, char c13) throws IOException {
        char c14 = this.padding;
        if (c12 == c14) {
            if (c13 != c14) {
                throw new IOException("invalid characters encountered at end of base64 data");
            }
            byte[] bArr = this.decodingTable;
            byte b10 = bArr[c10];
            byte b11 = bArr[c11];
            if ((b10 | b11) < 0) {
                throw new IOException("invalid characters encountered at end of base64 data");
            }
            outputStream.write((b10 << 2) | (b11 >> 4));
            return 1;
        }
        if (c13 == c14) {
            byte[] bArr2 = this.decodingTable;
            byte b12 = bArr2[c10];
            byte b13 = bArr2[c11];
            byte b14 = bArr2[c12];
            if ((b12 | b13 | b14) < 0) {
                throw new IOException("invalid characters encountered at end of base64 data");
            }
            outputStream.write((b12 << 2) | (b13 >> 4));
            outputStream.write((b13 << 4) | (b14 >> 2));
            return 2;
        }
        byte[] bArr3 = this.decodingTable;
        byte b15 = bArr3[c10];
        byte b16 = bArr3[c11];
        byte b17 = bArr3[c12];
        byte b18 = bArr3[c13];
        if ((b15 | b16 | b17 | b18) < 0) {
            throw new IOException("invalid characters encountered at end of base64 data");
        }
        outputStream.write((b15 << 2) | (b16 >> 4));
        outputStream.write((b16 << 4) | (b17 >> 2));
        outputStream.write((b17 << 6) | b18);
        return 3;
    }

    private boolean ignore(char c10) {
        return c10 == '\n' || c10 == '\r' || c10 == '\t' || c10 == ' ';
    }

    private int nextI(String str, int r32, int r42) {
        while (r32 < r42 && ignore(str.charAt(r32))) {
            r32++;
        }
        return r32;
    }

    private int nextI(byte[] bArr, int r32, int r42) {
        while (r32 < r42 && ignore((char) bArr[r32])) {
            r32++;
        }
        return r32;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(String str, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[54];
        int length = str.length();
        while (length > 0 && ignore(str.charAt(length - 1))) {
            length--;
        }
        if (length == 0) {
            return 0;
        }
        int r72 = length;
        int r82 = 0;
        while (r72 > 0 && r82 != 4) {
            if (!ignore(str.charAt(r72 - 1))) {
                r82++;
            }
            r72--;
        }
        int r83 = nextI(str, 0, r72);
        int r92 = 0;
        int r10 = 0;
        while (r83 < r72) {
            int r12 = r83 + 1;
            byte b10 = this.decodingTable[str.charAt(r83)];
            int r11 = nextI(str, r12, r72);
            int r13 = r11 + 1;
            byte b11 = this.decodingTable[str.charAt(r11)];
            int r122 = nextI(str, r13, r72);
            int r14 = r122 + 1;
            byte b12 = this.decodingTable[str.charAt(r122)];
            int r132 = nextI(str, r14, r72);
            int r15 = r132 + 1;
            byte b13 = this.decodingTable[str.charAt(r132)];
            if ((b10 | b11 | b12 | b13) < 0) {
                throw new IOException("invalid characters encountered in base64 data");
            }
            int r142 = r92 + 1;
            bArr[r92] = (byte) ((b10 << 2) | (b11 >> 4));
            int r84 = r142 + 1;
            bArr[r142] = (byte) ((b11 << 4) | (b12 >> 2));
            r92 = r84 + 1;
            bArr[r84] = (byte) ((b12 << 6) | b13);
            r10 += 3;
            if (r92 == 54) {
                outputStream.write(bArr);
                r92 = 0;
            }
            r83 = nextI(str, r15, r72);
        }
        if (r92 > 0) {
            outputStream.write(bArr, 0, r92);
        }
        int r22 = nextI(str, r83, length);
        int r32 = nextI(str, r22 + 1, length);
        int r52 = nextI(str, r32 + 1, length);
        return r10 + decodeLastBlock(outputStream, str.charAt(r22), str.charAt(r32), str.charAt(r52), str.charAt(nextI(str, r52 + 1, length)));
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(byte[] bArr, int r19, int r20, OutputStream outputStream) throws IOException {
        byte[] bArr2 = new byte[54];
        int r52 = r19 + r20;
        while (r52 > r19 && ignore((char) bArr[r52 - 1])) {
            r52--;
        }
        if (r52 == 0) {
            return 0;
        }
        int r82 = r52;
        int r92 = 0;
        while (r82 > r19 && r92 != 4) {
            if (!ignore((char) bArr[r82 - 1])) {
                r92++;
            }
            r82--;
        }
        int r12 = nextI(bArr, r19, r82);
        int r93 = 0;
        int r10 = 0;
        while (r12 < r82) {
            int r122 = r12 + 1;
            byte b10 = this.decodingTable[bArr[r12]];
            int r11 = nextI(bArr, r122, r82);
            int r13 = r11 + 1;
            byte b11 = this.decodingTable[bArr[r11]];
            int r123 = nextI(bArr, r13, r82);
            int r14 = r123 + 1;
            byte b12 = this.decodingTable[bArr[r123]];
            int r132 = nextI(bArr, r14, r82);
            int r15 = r132 + 1;
            byte b13 = this.decodingTable[bArr[r132]];
            if ((b10 | b11 | b12 | b13) < 0) {
                throw new IOException("invalid characters encountered in base64 data");
            }
            int r142 = r93 + 1;
            bArr2[r93] = (byte) ((b10 << 2) | (b11 >> 4));
            int r16 = r142 + 1;
            bArr2[r142] = (byte) ((b11 << 4) | (b12 >> 2));
            r93 = r16 + 1;
            bArr2[r16] = (byte) ((b12 << 6) | b13);
            if (r93 == 54) {
                outputStream.write(bArr2);
                r93 = 0;
            }
            r10 += 3;
            r12 = nextI(bArr, r15, r82);
        }
        if (r93 > 0) {
            outputStream.write(bArr2, 0, r93);
        }
        int r17 = nextI(bArr, r12, r52);
        int r32 = nextI(bArr, r17 + 1, r52);
        int r42 = nextI(bArr, r32 + 1, r52);
        return r10 + decodeLastBlock(outputStream, (char) bArr[r17], (char) bArr[r32], (char) bArr[r42], (char) bArr[nextI(bArr, r42 + 1, r52)]);
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int encode(byte[] bArr, int r12, int r13, OutputStream outputStream) throws IOException {
        if (r13 < 0) {
            return 0;
        }
        byte[] bArr2 = new byte[72];
        int r82 = r13;
        while (r82 > 0) {
            int r92 = Math.min(54, r82);
            outputStream.write(bArr2, 0, encode(bArr, r12, r92, bArr2, 0));
            r12 += r92;
            r82 -= r92;
        }
        return ((r13 + 2) / 3) * 4;
    }

    public int encode(byte[] bArr, int r12, int r13, byte[] bArr2, int r15) throws IOException {
        int r02 = (r12 + r13) - 2;
        int r22 = r12;
        int r32 = r15;
        while (r22 < r02) {
            int r42 = r22 + 1;
            byte b10 = bArr[r22];
            int r52 = r42 + 1;
            int r43 = bArr[r42] & 255;
            int r6 = r52 + 1;
            int r53 = bArr[r52] & 255;
            int r72 = r32 + 1;
            byte[] bArr3 = this.encodingTable;
            bArr2[r32] = bArr3[(b10 >>> 2) & 63];
            int r33 = r72 + 1;
            bArr2[r72] = bArr3[((b10 << 4) | (r43 >>> 4)) & 63];
            int r23 = r33 + 1;
            bArr2[r33] = bArr3[((r43 << 2) | (r53 >>> 6)) & 63];
            r32 = r23 + 1;
            bArr2[r23] = bArr3[r53 & 63];
            r22 = r6;
        }
        int r132 = r13 - (r22 - r12);
        if (r132 == 1) {
            int r11 = bArr[r22] & 255;
            int r122 = r32 + 1;
            byte[] bArr4 = this.encodingTable;
            bArr2[r32] = bArr4[(r11 >>> 2) & 63];
            int r03 = r122 + 1;
            bArr2[r122] = bArr4[(r11 << 4) & 63];
            int r112 = r03 + 1;
            byte b11 = this.padding;
            bArr2[r03] = b11;
            r32 = r112 + 1;
            bArr2[r112] = b11;
        } else if (r132 == 2) {
            int r133 = bArr[r22] & 255;
            int r113 = bArr[r22 + 1] & 255;
            int r123 = r32 + 1;
            byte[] bArr5 = this.encodingTable;
            bArr2[r32] = bArr5[(r133 >>> 2) & 63];
            int r24 = r123 + 1;
            bArr2[r123] = bArr5[((r133 << 4) | (r113 >>> 4)) & 63];
            int r124 = r24 + 1;
            bArr2[r24] = bArr5[(r113 << 2) & 63];
            r32 = r124 + 1;
            bArr2[r124] = this.padding;
        }
        return r32 - r15;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getEncodedLength(int r12) {
        return ((r12 + 2) / 3) * 4;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getMaxDecodedLength(int r12) {
        return (r12 / 4) * 3;
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
                return;
            }
            this.decodingTable[bArr2[r02]] = (byte) r02;
            r02++;
        }
    }
}
