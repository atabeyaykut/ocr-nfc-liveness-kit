package org.ejbca.cvc;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public abstract class CVCObject implements Serializable {
    public static final int CVC_VERSION = 0;
    private static final int INT_LENGTH = 4;
    private static final int LONG_LENGTH = 8;
    public static final String NEWLINE = System.getProperty("line.separator");
    private static final long serialVersionUID = 1;
    private AbstractSequence parent;
    private final CVCTagEnum tag;

    public CVCObject(CVCTagEnum cVCTagEnum) {
        this.tag = cVCTagEnum;
    }

    public static int decodeLength(DataInputStream dataInputStream) throws IOException {
        int r02 = dataInputStream.read();
        return r02 > 127 ? (r02 & 15) == 1 ? dataInputStream.readUnsignedByte() : dataInputStream.readShort() : r02;
    }

    public static byte[] encodeLength(int r52) {
        int r02 = r52 > 127 ? r52 > 255 ? 2 : 1 : 0;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(r02 + 1);
        if (r02 == 0) {
            byteBufferAllocate.put(0, (byte) r52);
        } else {
            byteBufferAllocate.put(0, (byte) (r02 + 128));
            if (r02 == 1) {
                byteBufferAllocate.put(1, (byte) r52);
            } else {
                byteBufferAllocate.putShort(1, (short) r52);
            }
        }
        return byteBufferAllocate.array();
    }

    public static byte[] toByteArray(Integer num) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt(num.intValue());
        return trimByteArray(byteBufferAllocate.array());
    }

    public static byte[] toByteArray(Long l5) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.putLong(l5.longValue());
        return trimByteArray(byteBufferAllocate.array());
    }

    public static byte[] trimByteArray(byte[] bArr) {
        int r12 = 0;
        boolean z10 = false;
        while (r12 < bArr.length) {
            z10 = bArr[r12] != 0;
            if (z10) {
                break;
            }
            r12++;
        }
        if (!z10) {
            return new byte[]{0};
        }
        byte[] bArr2 = new byte[bArr.length - r12];
        System.arraycopy(bArr, r12, bArr2, 0, bArr.length - r12);
        return bArr2;
    }

    public abstract int encode(DataOutputStream dataOutputStream) throws IOException;

    public String getAsText() {
        return getAsText("", true);
    }

    public String getAsText(String str) {
        return getAsText(str, true);
    }

    public String getAsText(String str, boolean z10) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        if (z10) {
            stringBuffer.append(Integer.toHexString(getTag().getValue()));
            stringBuffer.append(' ');
        }
        stringBuffer.append(getTag().name());
        stringBuffer.append("  ");
        return stringBuffer.toString();
    }

    public String getAsText(boolean z10) {
        return getAsText("", z10);
    }

    public AbstractSequence getParent() {
        return this.parent;
    }

    public CVCTagEnum getTag() {
        return this.tag;
    }

    public void setParent(AbstractSequence abstractSequence) {
        this.parent = abstractSequence;
    }
}
