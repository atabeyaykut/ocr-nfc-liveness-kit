package net.sf.scuba.smartcards;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class CommandAPDU implements Serializable {
    private static final int MAX_APDU_SIZE = 65544;
    private static final long serialVersionUID = 398698301286670877L;
    private byte[] apdu;
    private transient int dataOffset;

    /* renamed from: nc, reason: collision with root package name */
    private transient int f10879nc;

    /* renamed from: ne, reason: collision with root package name */
    private transient int f10880ne;

    public CommandAPDU(int r10, int r11, int r12, int r13) {
        this(r10, r11, r12, r13, null, 0, 0, 0);
    }

    public CommandAPDU(int r10, int r11, int r12, int r13, int r14) {
        this(r10, r11, r12, r13, null, 0, 0, r14);
    }

    public CommandAPDU(int r10, int r11, int r12, int r13, byte[] bArr) {
        this(r10, r11, r12, r13, bArr, 0, arrayLength(bArr), 0);
    }

    public CommandAPDU(int r10, int r11, int r12, int r13, byte[] bArr, int r15) {
        this(r10, r11, r12, r13, bArr, 0, arrayLength(bArr), r15);
    }

    public CommandAPDU(int r10, int r11, int r12, int r13, byte[] bArr, int r15, int r16) {
        this(r10, r11, r12, r13, bArr, r15, r16, 0);
    }

    public CommandAPDU(int r14, int r15, int r16, int r17, byte[] bArr, int r19, int r20, int r21) {
        byte b10;
        checkArrayBounds(bArr, r19, r20);
        if (r20 > 65535) {
            throw new IllegalArgumentException("dataLength is too large");
        }
        if (r21 < 0) {
            throw new IllegalArgumentException("ne must not be negative");
        }
        if (r21 > 65536) {
            throw new IllegalArgumentException("ne is too large");
        }
        this.f10880ne = r21;
        this.f10879nc = r20;
        if (r20 == 0) {
            if (r21 == 0) {
                this.apdu = new byte[4];
                setHeader(r14, r15, r16, r17);
                return;
            }
            if (r21 <= 256) {
                b = r21 != 256 ? (byte) r21 : (byte) 0;
                this.apdu = new byte[5];
                setHeader(r14, r15, r16, r17);
                this.apdu[4] = b;
                return;
            }
            if (r21 == 65536) {
                b10 = 0;
            } else {
                b = (byte) (r21 >> 8);
                b10 = (byte) r21;
            }
            this.apdu = new byte[7];
            setHeader(r14, r15, r16, r17);
            byte[] bArr2 = this.apdu;
            bArr2[5] = b;
            bArr2[6] = b10;
            return;
        }
        if (r21 == 0) {
            if (r20 <= 255) {
                this.apdu = new byte[r20 + 5];
                setHeader(r14, r15, r16, r17);
                byte[] bArr3 = this.apdu;
                bArr3[4] = (byte) r20;
                this.dataOffset = 5;
                System.arraycopy(bArr, r19, bArr3, 5, r20);
                return;
            }
            this.apdu = new byte[r20 + 7];
            setHeader(r14, r15, r16, r17);
            byte[] bArr4 = this.apdu;
            bArr4[4] = 0;
            bArr4[5] = (byte) (r20 >> 8);
            bArr4[6] = (byte) r20;
            this.dataOffset = 7;
            System.arraycopy(bArr, r19, bArr4, 7, r20);
            return;
        }
        if (r20 <= 255 && r21 <= 256) {
            this.apdu = new byte[r20 + 6];
            setHeader(r14, r15, r16, r17);
            byte[] bArr5 = this.apdu;
            bArr5[4] = (byte) r20;
            this.dataOffset = 5;
            System.arraycopy(bArr, r19, bArr5, 5, r20);
            this.apdu[r1.length - 1] = r21 != 256 ? (byte) r21 : (byte) 0;
            return;
        }
        this.apdu = new byte[r20 + 9];
        setHeader(r14, r15, r16, r17);
        byte[] bArr6 = this.apdu;
        bArr6[4] = 0;
        bArr6[5] = (byte) (r20 >> 8);
        bArr6[6] = (byte) r20;
        this.dataOffset = 7;
        System.arraycopy(bArr, r19, bArr6, 7, r20);
        if (r21 != 65536) {
            byte[] bArr7 = this.apdu;
            int length = bArr7.length - 2;
            bArr7[length] = (byte) (r21 >> 8);
            bArr7[length + 1] = (byte) r21;
        }
    }

    public CommandAPDU(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.remaining()];
        this.apdu = bArr;
        byteBuffer.get(bArr);
        parse();
    }

    public CommandAPDU(byte[] bArr) {
        this.apdu = (byte[]) bArr.clone();
        parse();
    }

    public CommandAPDU(byte[] bArr, int r42, int r52) {
        checkArrayBounds(bArr, r42, r52);
        byte[] bArr2 = new byte[r52];
        this.apdu = bArr2;
        System.arraycopy(bArr, r42, bArr2, 0, r52);
        parse();
    }

    private static int arrayLength(byte[] bArr) {
        if (bArr != null) {
            return bArr.length;
        }
        return 0;
    }

    private void checkArrayBounds(byte[] bArr, int r22, int r32) {
        if (r22 < 0 || r32 < 0) {
            throw new IllegalArgumentException("Offset and length must not be negative");
        }
        if (bArr != null) {
            if (r22 > bArr.length - r32) {
                throw new IllegalArgumentException("Offset plus length exceed array size");
            }
        } else if (r22 != 0 && r32 != 0) {
            throw new IllegalArgumentException("offset and length must be 0 if array is null");
        }
    }

    private void parse() {
        byte[] bArr = this.apdu;
        if (bArr.length < 4) {
            throw new IllegalArgumentException("apdu must be at least 4 bytes long");
        }
        if (bArr.length == 4) {
            return;
        }
        int r12 = bArr[4] & 255;
        if (bArr.length == 5) {
            if (r12 == 0) {
                r12 = 256;
            }
            this.f10880ne = r12;
            return;
        }
        if (r12 != 0) {
            if (bArr.length == r12 + 5) {
                this.f10879nc = r12;
                this.dataOffset = 5;
                return;
            } else {
                if (bArr.length == r12 + 6) {
                    this.f10879nc = r12;
                    this.dataOffset = 5;
                    int r02 = bArr[bArr.length - 1] & 255;
                    this.f10880ne = r02 != 0 ? r02 : 256;
                    return;
                }
                throw new IllegalArgumentException("Invalid APDU: length=" + this.apdu.length + ", b1=" + r12);
            }
        }
        if (bArr.length < 7) {
            throw new IllegalArgumentException("Invalid APDU: length=" + this.apdu.length + ", b1=" + r12);
        }
        int r32 = ((bArr[5] & 255) << 8) | (bArr[6] & 255);
        if (bArr.length == 7) {
            if (r32 == 0) {
                r32 = 65536;
            }
            this.f10880ne = r32;
            return;
        }
        if (r32 == 0) {
            throw new IllegalArgumentException("Invalid APDU: length=" + this.apdu.length + ", b1=" + r12 + ", b2||b3=" + r32);
        }
        if (bArr.length == r32 + 7) {
            this.f10879nc = r32;
            this.dataOffset = 7;
            return;
        }
        if (bArr.length == r32 + 9) {
            this.f10879nc = r32;
            this.dataOffset = 7;
            int length = bArr.length - 2;
            int r03 = (bArr[length + 1] & 255) | ((bArr[length] & 255) << 8);
            this.f10880ne = r03 != 0 ? r03 : 65536;
            return;
        }
        throw new IllegalArgumentException("Invalid APDU: length=" + this.apdu.length + ", b1=" + r12 + ", b2||b3=" + r32);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.apdu = (byte[]) objectInputStream.readUnshared();
        parse();
    }

    private void setHeader(int r32, int r42, int r52, int r6) {
        byte[] bArr = this.apdu;
        bArr[0] = (byte) r32;
        bArr[1] = (byte) r42;
        bArr[2] = (byte) r52;
        bArr[3] = (byte) r6;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CommandAPDU) {
            return Arrays.equals(this.apdu, ((CommandAPDU) obj).apdu);
        }
        return false;
    }

    public byte[] getBytes() {
        return (byte[]) this.apdu.clone();
    }

    public int getCLA() {
        return this.apdu[0] & 255;
    }

    public byte[] getData() {
        int r02 = this.f10879nc;
        byte[] bArr = new byte[r02];
        System.arraycopy(this.apdu, this.dataOffset, bArr, 0, r02);
        return bArr;
    }

    public int getINS() {
        return this.apdu[1] & 255;
    }

    public int getNc() {
        return this.f10879nc;
    }

    public int getNe() {
        return this.f10880ne;
    }

    public int getP1() {
        return this.apdu[2] & 255;
    }

    public int getP2() {
        return this.apdu[3] & 255;
    }

    public int hashCode() {
        return Arrays.hashCode(this.apdu);
    }

    public String toString() {
        return "CommmandAPDU: " + this.apdu.length + " bytes, nc=" + this.f10879nc + ", ne=" + this.f10880ne;
    }
}
