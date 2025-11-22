package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes.dex */
public class Table {

    /* renamed from: bb, reason: collision with root package name */
    protected ByteBuffer f980bb;
    protected int bb_pos;
    Utf8 utf8 = Utf8.getDefault();
    private int vtable_size;
    private int vtable_start;

    public static boolean __has_identifier(ByteBuffer byteBuffer, String str) {
        if (str.length() != 4) {
            throw new AssertionError("FlatBuffers: file identifier must be length 4");
        }
        for (int r22 = 0; r22 < 4; r22++) {
            if (str.charAt(r22) != ((char) byteBuffer.get(byteBuffer.position() + 4 + r22))) {
                return false;
            }
        }
        return true;
    }

    public static int __indirect(int r02, ByteBuffer byteBuffer) {
        return byteBuffer.getInt(r02) + r02;
    }

    public static int __offset(int r12, int r22, ByteBuffer byteBuffer) {
        int r02 = byteBuffer.capacity() - r22;
        return byteBuffer.getShort((r12 + r02) - byteBuffer.getInt(r02)) + r02;
    }

    public static String __string(int r12, ByteBuffer byteBuffer, Utf8 utf8) {
        int r02 = byteBuffer.getInt(r12) + r12;
        return utf8.decodeUtf8(byteBuffer, r02 + 4, byteBuffer.getInt(r02));
    }

    public static Table __union(Table table, int r12, ByteBuffer byteBuffer) {
        table.__reset(__indirect(r12, byteBuffer), byteBuffer);
        return table;
    }

    public static int compareStrings(int r82, int r92, ByteBuffer byteBuffer) {
        int r02 = byteBuffer.getInt(r82) + r82;
        int r83 = byteBuffer.getInt(r92) + r92;
        int r93 = byteBuffer.getInt(r02);
        int r12 = byteBuffer.getInt(r83);
        int r03 = r02 + 4;
        int r84 = r83 + 4;
        int r22 = Math.min(r93, r12);
        for (int r32 = 0; r32 < r22; r32++) {
            int r42 = r32 + r03;
            int r6 = r32 + r84;
            if (byteBuffer.get(r42) != byteBuffer.get(r6)) {
                return byteBuffer.get(r42) - byteBuffer.get(r6);
            }
        }
        return r93 - r12;
    }

    public static int compareStrings(int r72, byte[] bArr, ByteBuffer byteBuffer) {
        int r02 = byteBuffer.getInt(r72) + r72;
        int r73 = byteBuffer.getInt(r02);
        int length = bArr.length;
        int r03 = r02 + 4;
        int r22 = Math.min(r73, length);
        for (int r32 = 0; r32 < r22; r32++) {
            int r42 = r32 + r03;
            if (byteBuffer.get(r42) != bArr[r32]) {
                return byteBuffer.get(r42) - bArr[r32];
            }
        }
        return r73 - length;
    }

    public int __indirect(int r22) {
        return this.f980bb.getInt(r22) + r22;
    }

    public int __offset(int r32) {
        if (r32 < this.vtable_size) {
            return this.f980bb.getShort(this.vtable_start + r32);
        }
        return 0;
    }

    public void __reset() {
        __reset(0, null);
    }

    public void __reset(int r12, ByteBuffer byteBuffer) {
        short s7;
        this.f980bb = byteBuffer;
        if (byteBuffer != null) {
            this.bb_pos = r12;
            int r13 = r12 - byteBuffer.getInt(r12);
            this.vtable_start = r13;
            s7 = this.f980bb.getShort(r13);
        } else {
            s7 = 0;
            this.bb_pos = 0;
            this.vtable_start = 0;
        }
        this.vtable_size = s7;
    }

    public String __string(int r32) {
        return __string(r32, this.f980bb, this.utf8);
    }

    public Table __union(Table table, int r32) {
        return __union(table, r32, this.f980bb);
    }

    public int __vector(int r22) {
        int r23 = r22 + this.bb_pos;
        return this.f980bb.getInt(r23) + r23 + 4;
    }

    public ByteBuffer __vector_as_bytebuffer(int r32, int r42) {
        int r33 = __offset(r32);
        if (r33 == 0) {
            return null;
        }
        ByteBuffer byteBufferOrder = this.f980bb.duplicate().order(ByteOrder.LITTLE_ENDIAN);
        int r12 = __vector(r33);
        byteBufferOrder.position(r12);
        byteBufferOrder.limit((__vector_len(r33) * r42) + r12);
        return byteBufferOrder;
    }

    public ByteBuffer __vector_in_bytebuffer(ByteBuffer byteBuffer, int r32, int r42) {
        int r33 = __offset(r32);
        if (r33 == 0) {
            return null;
        }
        int r02 = __vector(r33);
        byteBuffer.rewind();
        byteBuffer.limit((__vector_len(r33) * r42) + r02);
        byteBuffer.position(r02);
        return byteBuffer;
    }

    public int __vector_len(int r22) {
        int r23 = r22 + this.bb_pos;
        return this.f980bb.getInt(this.f980bb.getInt(r23) + r23);
    }

    public ByteBuffer getByteBuffer() {
        return this.f980bb;
    }

    public int keysCompare(Integer num, Integer num2, ByteBuffer byteBuffer) {
        return 0;
    }

    public void sortTables(int[] r52, final ByteBuffer byteBuffer) {
        Integer[] numArr = new Integer[r52.length];
        for (int r22 = 0; r22 < r52.length; r22++) {
            numArr[r22] = Integer.valueOf(r52[r22]);
        }
        Arrays.sort(numArr, new Comparator<Integer>() { // from class: androidx.emoji2.text.flatbuffer.Table.1
            @Override // java.util.Comparator
            public int compare(Integer num, Integer num2) {
                return Table.this.keysCompare(num, num2, byteBuffer);
            }
        });
        for (int r12 = 0; r12 < r52.length; r12++) {
            r52[r12] = numArr[r12].intValue();
        }
    }
}
