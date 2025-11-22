package org.bouncycastle.util.encoders;

import java.io.IOException;
import java.io.OutputStream;
import net.sf.scuba.smartcards.ISO7816;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;
import org.jmrtd.lds.CVCAFile;

/* loaded from: classes2.dex */
public class Base32Encoder implements Encoder {
    private static final byte[] DEAULT_ENCODING_TABLE = {65, CVCAFile.CAR_TAG, 67, ISO7816.INS_REHABILITATE_CHV, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, ISO7816.INS_INCREASE, 51, ISO7816.INS_DECREASE_STAMPED, 53, 54, 55};
    private static final byte DEFAULT_PADDING = 61;
    private final byte[] decodingTable;
    private final byte[] encodingTable;
    private final byte padding;

    public Base32Encoder() {
        this.decodingTable = new byte[128];
        this.encodingTable = DEAULT_ENCODING_TABLE;
        this.padding = DEFAULT_PADDING;
        initialiseDecodingTable();
    }

    public Base32Encoder(byte[] bArr, byte b10) {
        this.decodingTable = new byte[128];
        if (bArr.length != 32) {
            throw new IllegalArgumentException("encoding table needs to be length 32");
        }
        this.encodingTable = Arrays.clone(bArr);
        this.padding = b10;
        initialiseDecodingTable();
    }

    private int decodeLastBlock(OutputStream outputStream, char c10, char c11, char c12, char c13, char c14, char c15, char c16, char c17) throws IOException {
        char c18 = this.padding;
        if (c17 != c18) {
            byte[] bArr = this.decodingTable;
            byte b10 = bArr[c10];
            byte b11 = bArr[c11];
            byte b12 = bArr[c12];
            byte b13 = bArr[c13];
            byte b14 = bArr[c14];
            byte b15 = bArr[c15];
            byte b16 = bArr[c16];
            byte b17 = bArr[c17];
            if ((b10 | b11 | b12 | b13 | b14 | b15 | b16 | b17) < 0) {
                throw new IOException("invalid characters encountered at end of base32 data");
            }
            outputStream.write((b10 << 3) | (b11 >> 2));
            outputStream.write((b11 << 6) | (b12 << 1) | (b13 >> 4));
            outputStream.write((b13 << 4) | (b14 >> 1));
            outputStream.write((b14 << 7) | (b15 << 2) | (b16 >> 3));
            outputStream.write((b16 << 5) | b17);
            return 5;
        }
        if (c16 != c18) {
            byte[] bArr2 = this.decodingTable;
            byte b18 = bArr2[c10];
            byte b19 = bArr2[c11];
            byte b20 = bArr2[c12];
            byte b21 = bArr2[c13];
            byte b22 = bArr2[c14];
            byte b23 = bArr2[c15];
            byte b24 = bArr2[c16];
            if ((b18 | b19 | b20 | b21 | b22 | b23 | b24) < 0) {
                throw new IOException("invalid characters encountered at end of base32 data");
            }
            outputStream.write((b18 << 3) | (b19 >> 2));
            outputStream.write((b19 << 6) | (b20 << 1) | (b21 >> 4));
            outputStream.write((b21 << 4) | (b22 >> 1));
            outputStream.write((b22 << 7) | (b23 << 2) | (b24 >> 3));
            return 4;
        }
        if (c15 != c18) {
            throw new IOException("invalid characters encountered at end of base32 data");
        }
        if (c14 != c18) {
            byte[] bArr3 = this.decodingTable;
            byte b25 = bArr3[c10];
            byte b26 = bArr3[c11];
            byte b27 = bArr3[c12];
            byte b28 = bArr3[c13];
            byte b29 = bArr3[c14];
            if ((b25 | b26 | b27 | b28 | b29) < 0) {
                throw new IOException("invalid characters encountered at end of base32 data");
            }
            outputStream.write((b25 << 3) | (b26 >> 2));
            outputStream.write((b26 << 6) | (b27 << 1) | (b28 >> 4));
            outputStream.write((b28 << 4) | (b29 >> 1));
            return 3;
        }
        if (c13 == c18) {
            if (c12 != c18) {
                throw new IOException("invalid characters encountered at end of base32 data");
            }
            byte[] bArr4 = this.decodingTable;
            byte b30 = bArr4[c10];
            byte b31 = bArr4[c11];
            if ((b30 | b31) < 0) {
                throw new IOException("invalid characters encountered at end of base32 data");
            }
            outputStream.write((b30 << 3) | (b31 >> 2));
            return 1;
        }
        byte[] bArr5 = this.decodingTable;
        byte b32 = bArr5[c10];
        byte b33 = bArr5[c11];
        byte b34 = bArr5[c12];
        byte b35 = bArr5[c13];
        if ((b32 | b33 | b34 | b35) < 0) {
            throw new IOException("invalid characters encountered at end of base32 data");
        }
        outputStream.write((b32 << 3) | (b33 >> 2));
        outputStream.write((b33 << 6) | (b34 << 1) | (b35 >> 4));
        return 2;
    }

    private void encodeBlock(byte[] bArr, int r82, byte[] bArr2, int r10) {
        int r02 = r82 + 1;
        byte b10 = bArr[r82];
        int r12 = r02 + 1;
        int r03 = bArr[r02] & 255;
        int r22 = r12 + 1;
        int r13 = bArr[r12] & 255;
        int r32 = r22 + 1;
        int r23 = bArr[r22] & 255;
        int r72 = bArr[r32] & 255;
        int r33 = r10 + 1;
        byte[] bArr3 = this.encodingTable;
        bArr2[r10] = bArr3[(b10 >>> 3) & 31];
        int r102 = r33 + 1;
        bArr2[r33] = bArr3[((b10 << 2) | (r03 >>> 6)) & 31];
        int r83 = r102 + 1;
        bArr2[r102] = bArr3[(r03 >>> 1) & 31];
        int r103 = r83 + 1;
        bArr2[r83] = bArr3[((r03 << 4) | (r13 >>> 4)) & 31];
        int r84 = r103 + 1;
        bArr2[r103] = bArr3[((r13 << 1) | (r23 >>> 7)) & 31];
        int r104 = r84 + 1;
        bArr2[r84] = bArr3[(r23 >>> 2) & 31];
        bArr2[r104] = bArr3[((r23 << 3) | (r72 >>> 5)) & 31];
        bArr2[r104 + 1] = bArr3[r72 & 31];
    }

    private boolean ignore(char c10) {
        return c10 == '\n' || c10 == '\r' || c10 == '\t' || c10 == ' ';
    }

    private int nextI(byte[] bArr, int r32, int r42) {
        while (r32 < r42 && ignore((char) bArr[r32])) {
            r32++;
        }
        return r32;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(String str, OutputStream outputStream) throws IOException {
        byte[] byteArray = Strings.toByteArray(str);
        return decode(byteArray, 0, byteArray.length, outputStream);
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int decode(byte[] bArr, int r21, int r22, OutputStream outputStream) throws IOException {
        byte[] bArr2 = new byte[55];
        int r52 = r21 + r22;
        while (r52 > r21 && ignore((char) bArr[r52 - 1])) {
            r52--;
        }
        if (r52 == 0) {
            return 0;
        }
        int r72 = r52;
        int r82 = 0;
        while (r72 > r21 && r82 != 8) {
            if (!ignore((char) bArr[r72 - 1])) {
                r82++;
            }
            r72--;
        }
        int r12 = nextI(bArr, r21, r72);
        int r83 = 0;
        int r11 = 0;
        while (r12 < r72) {
            int r122 = r12 + 1;
            byte b10 = this.decodingTable[bArr[r12]];
            int r92 = nextI(bArr, r122, r72);
            int r13 = r92 + 1;
            byte b11 = this.decodingTable[bArr[r92]];
            int r123 = nextI(bArr, r13, r72);
            int r14 = r123 + 1;
            byte b12 = this.decodingTable[bArr[r123]];
            int r132 = nextI(bArr, r14, r72);
            int r15 = r132 + 1;
            byte b13 = this.decodingTable[bArr[r132]];
            int r142 = nextI(bArr, r15, r72);
            int r6 = r142 + 1;
            byte b14 = this.decodingTable[bArr[r142]];
            int r62 = nextI(bArr, r6, r72);
            int r32 = r62 + 1;
            byte b15 = this.decodingTable[bArr[r62]];
            int r33 = nextI(bArr, r32, r72);
            int r16 = r52;
            int r53 = r33 + 1;
            byte b16 = this.decodingTable[bArr[r33]];
            int r54 = nextI(bArr, r53, r72);
            int r17 = r72;
            int r73 = r54 + 1;
            byte b17 = this.decodingTable[bArr[r54]];
            if ((b10 | b11 | b12 | b13 | b14 | b15 | b16 | b17) < 0) {
                throw new IOException("invalid characters encountered in base32 data");
            }
            int r152 = r83 + 1;
            bArr2[r83] = (byte) ((b10 << 3) | (b11 >> 2));
            int r18 = r152 + 1;
            bArr2[r152] = (byte) ((b11 << 6) | (b12 << 1) | (b13 >> 4));
            int r84 = r18 + 1;
            bArr2[r18] = (byte) ((b13 << 4) | (b14 >> 1));
            int r19 = r84 + 1;
            bArr2[r84] = (byte) ((b15 << 2) | (b14 << 7) | (b16 >> 3));
            int r63 = r19 + 1;
            bArr2[r19] = (byte) ((b16 << 5) | b17);
            if (r63 == 55) {
                outputStream.write(bArr2);
                r83 = 0;
            } else {
                r83 = r63;
            }
            r11 += 5;
            r12 = nextI(bArr, r73, r17);
            r72 = r17;
            r52 = r16;
        }
        int r162 = r52;
        if (r83 > 0) {
            outputStream.write(bArr2, 0, r83);
        }
        int r110 = nextI(bArr, r12, r162);
        int r34 = nextI(bArr, r110 + 1, r162);
        int r42 = nextI(bArr, r34 + 1, r162);
        int r64 = nextI(bArr, r42 + 1, r162);
        int r74 = nextI(bArr, r64 + 1, r162);
        int r85 = nextI(bArr, r74 + 1, r162);
        int r93 = nextI(bArr, r85 + 1, r162);
        return r11 + decodeLastBlock(outputStream, (char) bArr[r110], (char) bArr[r34], (char) bArr[r42], (char) bArr[r64], (char) bArr[r74], (char) bArr[r85], (char) bArr[r93], (char) bArr[nextI(bArr, r93 + 1, r162)]);
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int encode(byte[] bArr, int r12, int r13, OutputStream outputStream) throws IOException {
        if (r13 < 0) {
            return 0;
        }
        byte[] bArr2 = new byte[72];
        int r82 = r13;
        while (r82 > 0) {
            int r92 = Math.min(45, r82);
            outputStream.write(bArr2, 0, encode(bArr, r12, r92, bArr2, 0));
            r12 += r92;
            r82 -= r92;
        }
        return ((r13 + 2) / 3) * 4;
    }

    public int encode(byte[] bArr, int r6, int r72, byte[] bArr2, int r92) throws IOException {
        int r02 = (r6 + r72) - 4;
        int r22 = r6;
        int r32 = r92;
        while (r22 < r02) {
            encodeBlock(bArr, r22, bArr2, r32);
            r22 += 5;
            r32 += 8;
        }
        int r73 = r72 - (r22 - r6);
        if (r73 > 0) {
            byte[] bArr3 = new byte[5];
            System.arraycopy(bArr, r22, bArr3, 0, r73);
            encodeBlock(bArr3, 0, bArr2, r32);
            if (r73 == 1) {
                byte b10 = this.padding;
                bArr2[r32 + 2] = b10;
                bArr2[r32 + 3] = b10;
                bArr2[r32 + 4] = b10;
                bArr2[r32 + 5] = b10;
                bArr2[r32 + 6] = b10;
                bArr2[r32 + 7] = b10;
            } else if (r73 == 2) {
                byte b11 = this.padding;
                bArr2[r32 + 4] = b11;
                bArr2[r32 + 5] = b11;
                bArr2[r32 + 6] = b11;
                bArr2[r32 + 7] = b11;
            } else if (r73 == 3) {
                byte b12 = this.padding;
                bArr2[r32 + 5] = b12;
                bArr2[r32 + 6] = b12;
                bArr2[r32 + 7] = b12;
            } else if (r73 == 4) {
                bArr2[r32 + 7] = this.padding;
            }
            r32 += 8;
        }
        return r32 - r92;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getEncodedLength(int r12) {
        return ((r12 + 4) / 5) * 8;
    }

    @Override // org.bouncycastle.util.encoders.Encoder
    public int getMaxDecodedLength(int r12) {
        return (r12 / 8) * 5;
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
