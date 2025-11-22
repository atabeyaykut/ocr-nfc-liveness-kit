package androidx.emoji2.text.flatbuffer;

import java.io.IOException;
import java.io.InputStream;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* loaded from: classes.dex */
public class FlatBufferBuilder {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* renamed from: bb, reason: collision with root package name */
    ByteBuffer f975bb;
    ByteBufferFactory bb_factory;
    boolean finished;
    boolean force_defaults;
    int minalign;
    boolean nested;
    int num_vtables;
    int object_start;
    int space;
    final Utf8 utf8;
    int vector_num_elems;
    int[] vtable;
    int vtable_in_use;
    int[] vtables;

    public static class ByteBufferBackedInputStream extends InputStream {
        ByteBuffer buf;

        public ByteBufferBackedInputStream(ByteBuffer byteBuffer) {
            this.buf = byteBuffer;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            try {
                return this.buf.get() & 255;
            } catch (BufferUnderflowException unused) {
                return -1;
            }
        }
    }

    public static abstract class ByteBufferFactory {
        public abstract ByteBuffer newByteBuffer(int r12);

        public void releaseByteBuffer(ByteBuffer byteBuffer) {
        }
    }

    public static final class HeapByteBufferFactory extends ByteBufferFactory {
        public static final HeapByteBufferFactory INSTANCE = new HeapByteBufferFactory();

        @Override // androidx.emoji2.text.flatbuffer.FlatBufferBuilder.ByteBufferFactory
        public ByteBuffer newByteBuffer(int r22) {
            return ByteBuffer.allocate(r22).order(ByteOrder.LITTLE_ENDIAN);
        }
    }

    public FlatBufferBuilder() {
        this(1024);
    }

    public FlatBufferBuilder(int r42) {
        this(r42, HeapByteBufferFactory.INSTANCE, null, Utf8.getDefault());
    }

    public FlatBufferBuilder(int r32, ByteBufferFactory byteBufferFactory) {
        this(r32, byteBufferFactory, null, Utf8.getDefault());
    }

    public FlatBufferBuilder(int r42, ByteBufferFactory byteBufferFactory, ByteBuffer byteBuffer, Utf8 utf8) {
        this.minalign = 1;
        this.vtable = null;
        this.vtable_in_use = 0;
        this.nested = false;
        this.finished = false;
        this.vtables = new int[16];
        this.num_vtables = 0;
        this.vector_num_elems = 0;
        this.force_defaults = false;
        r42 = r42 <= 0 ? 1 : r42;
        this.bb_factory = byteBufferFactory;
        if (byteBuffer != null) {
            this.f975bb = byteBuffer;
            byteBuffer.clear();
            this.f975bb.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f975bb = byteBufferFactory.newByteBuffer(r42);
        }
        this.utf8 = utf8;
        this.space = this.f975bb.capacity();
    }

    public FlatBufferBuilder(ByteBuffer byteBuffer) {
        this(byteBuffer, new HeapByteBufferFactory());
    }

    public FlatBufferBuilder(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        this(byteBuffer.capacity(), byteBufferFactory, byteBuffer, Utf8.getDefault());
    }

    @Deprecated
    private int dataStart() {
        finished();
        return this.space;
    }

    public static ByteBuffer growByteBuffer(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        int r02 = byteBuffer.capacity();
        if (((-1073741824) & r02) != 0) {
            throw new AssertionError("FlatBuffers: cannot grow buffer beyond 2 gigabytes.");
        }
        int r12 = r02 == 0 ? 1 : r02 << 1;
        byteBuffer.position(0);
        ByteBuffer byteBufferNewByteBuffer = byteBufferFactory.newByteBuffer(r12);
        byteBufferNewByteBuffer.position(byteBufferNewByteBuffer.clear().capacity() - r02);
        byteBufferNewByteBuffer.put(byteBuffer);
        return byteBufferNewByteBuffer;
    }

    public static boolean isFieldPresent(Table table, int r12) {
        return table.__offset(r12) != 0;
    }

    public void Nested(int r22) {
        if (r22 != offset()) {
            throw new AssertionError("FlatBuffers: struct must be serialized inline.");
        }
    }

    public void addBoolean(int r22, boolean z10, boolean z11) {
        if (this.force_defaults || z10 != z11) {
            addBoolean(z10);
            slot(r22);
        }
    }

    public void addBoolean(boolean z10) {
        prep(1, 0);
        putBoolean(z10);
    }

    public void addByte(byte b10) {
        prep(1, 0);
        putByte(b10);
    }

    public void addByte(int r22, byte b10, int r42) {
        if (this.force_defaults || b10 != r42) {
            addByte(b10);
            slot(r22);
        }
    }

    public void addDouble(double d10) {
        prep(8, 0);
        putDouble(d10);
    }

    public void addDouble(int r22, double d10, double d11) {
        if (this.force_defaults || d10 != d11) {
            addDouble(d10);
            slot(r22);
        }
    }

    public void addFloat(float f) {
        prep(4, 0);
        putFloat(f);
    }

    public void addFloat(int r42, float f, double d10) {
        if (this.force_defaults || f != d10) {
            addFloat(f);
            slot(r42);
        }
    }

    public void addInt(int r32) {
        prep(4, 0);
        putInt(r32);
    }

    public void addInt(int r22, int r32, int r42) {
        if (this.force_defaults || r32 != r42) {
            addInt(r32);
            slot(r22);
        }
    }

    public void addLong(int r22, long j10, long j11) {
        if (this.force_defaults || j10 != j11) {
            addLong(j10);
            slot(r22);
        }
    }

    public void addLong(long j10) {
        prep(8, 0);
        putLong(j10);
    }

    public void addOffset(int r32) {
        prep(4, 0);
        putInt((offset() - r32) + 4);
    }

    public void addOffset(int r22, int r32, int r42) {
        if (this.force_defaults || r32 != r42) {
            addOffset(r32);
            slot(r22);
        }
    }

    public void addShort(int r22, short s7, int r42) {
        if (this.force_defaults || s7 != r42) {
            addShort(s7);
            slot(r22);
        }
    }

    public void addShort(short s7) {
        prep(2, 0);
        putShort(s7);
    }

    public void addStruct(int r12, int r22, int r32) {
        if (r22 != r32) {
            Nested(r22);
            slot(r12);
        }
    }

    public void clear() {
        this.space = this.f975bb.capacity();
        this.f975bb.clear();
        this.minalign = 1;
        while (true) {
            int r02 = this.vtable_in_use;
            if (r02 <= 0) {
                this.vtable_in_use = 0;
                this.nested = false;
                this.finished = false;
                this.object_start = 0;
                this.num_vtables = 0;
                this.vector_num_elems = 0;
                return;
            }
            int[] r22 = this.vtable;
            int r03 = r02 - 1;
            this.vtable_in_use = r03;
            r22[r03] = 0;
        }
    }

    public int createByteVector(ByteBuffer byteBuffer) {
        int r02 = byteBuffer.remaining();
        startVector(1, r02, 1);
        ByteBuffer byteBuffer2 = this.f975bb;
        int r22 = this.space - r02;
        this.space = r22;
        byteBuffer2.position(r22);
        this.f975bb.put(byteBuffer);
        return endVector();
    }

    public int createByteVector(byte[] bArr) {
        int length = bArr.length;
        startVector(1, length, 1);
        ByteBuffer byteBuffer = this.f975bb;
        int r22 = this.space - length;
        this.space = r22;
        byteBuffer.position(r22);
        this.f975bb.put(bArr);
        return endVector();
    }

    public int createByteVector(byte[] bArr, int r42, int r52) {
        startVector(1, r52, 1);
        ByteBuffer byteBuffer = this.f975bb;
        int r12 = this.space - r52;
        this.space = r12;
        byteBuffer.position(r12);
        this.f975bb.put(bArr, r42, r52);
        return endVector();
    }

    public <T extends Table> int createSortedVectorOfTables(T t10, int[] r32) {
        t10.sortTables(r32, this.f975bb);
        return createVectorOfTables(r32);
    }

    public int createString(CharSequence charSequence) {
        int r02 = this.utf8.encodedLength(charSequence);
        addByte((byte) 0);
        startVector(1, r02, 1);
        ByteBuffer byteBuffer = this.f975bb;
        int r22 = this.space - r02;
        this.space = r22;
        byteBuffer.position(r22);
        this.utf8.encodeUtf8(charSequence, this.f975bb);
        return endVector();
    }

    public int createString(ByteBuffer byteBuffer) {
        int r02 = byteBuffer.remaining();
        addByte((byte) 0);
        startVector(1, r02, 1);
        ByteBuffer byteBuffer2 = this.f975bb;
        int r22 = this.space - r02;
        this.space = r22;
        byteBuffer2.position(r22);
        this.f975bb.put(byteBuffer);
        return endVector();
    }

    public ByteBuffer createUnintializedVector(int r22, int r32, int r42) {
        int r02 = r22 * r32;
        startVector(r22, r32, r42);
        ByteBuffer byteBuffer = this.f975bb;
        int r33 = this.space - r02;
        this.space = r33;
        byteBuffer.position(r33);
        ByteBuffer byteBufferOrder = this.f975bb.slice().order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.limit(r02);
        return byteBufferOrder;
    }

    public int createVectorOfTables(int[] r32) {
        notNested();
        startVector(4, r32.length, 4);
        for (int length = r32.length - 1; length >= 0; length--) {
            addOffset(r32[length]);
        }
        return endVector();
    }

    public ByteBuffer dataBuffer() {
        finished();
        return this.f975bb;
    }

    public int endTable() {
        int r32;
        if (this.vtable == null || !this.nested) {
            throw new AssertionError("FlatBuffers: endTable called without startTable");
        }
        addInt(0);
        int r12 = offset();
        int r22 = this.vtable_in_use - 1;
        while (r22 >= 0 && this.vtable[r22] == 0) {
            r22--;
        }
        int r33 = r22 + 1;
        while (r22 >= 0) {
            int r42 = this.vtable[r22];
            addShort((short) (r42 != 0 ? r12 - r42 : 0));
            r22--;
        }
        addShort((short) (r12 - this.object_start));
        addShort((short) ((r33 + 2) * 2));
        int r34 = 0;
        loop2: while (true) {
            if (r34 >= this.num_vtables) {
                r32 = 0;
                break;
            }
            int r43 = this.f975bb.capacity() - this.vtables[r34];
            int r52 = this.space;
            short s7 = this.f975bb.getShort(r43);
            if (s7 == this.f975bb.getShort(r52)) {
                for (int r72 = 2; r72 < s7; r72 += 2) {
                    if (this.f975bb.getShort(r43 + r72) != this.f975bb.getShort(r52 + r72)) {
                        break;
                    }
                }
                r32 = this.vtables[r34];
                break loop2;
            }
            r34++;
        }
        if (r32 != 0) {
            int r23 = this.f975bb.capacity() - r12;
            this.space = r23;
            this.f975bb.putInt(r23, r32 - r12);
        } else {
            int r35 = this.num_vtables;
            int[] r44 = this.vtables;
            if (r35 == r44.length) {
                this.vtables = Arrays.copyOf(r44, r35 * 2);
            }
            int[] r24 = this.vtables;
            int r36 = this.num_vtables;
            this.num_vtables = r36 + 1;
            r24[r36] = offset();
            ByteBuffer byteBuffer = this.f975bb;
            byteBuffer.putInt(byteBuffer.capacity() - r12, offset() - r12);
        }
        this.nested = false;
        return r12;
    }

    public int endVector() {
        if (!this.nested) {
            throw new AssertionError("FlatBuffers: endVector called without startVector");
        }
        this.nested = false;
        putInt(this.vector_num_elems);
        return offset();
    }

    public void finish(int r22) {
        finish(r22, false);
    }

    public void finish(int r22, String str) {
        finish(r22, str, false);
    }

    public void finish(int r42, String str, boolean z10) {
        prep(this.minalign, (z10 ? 4 : 0) + 8);
        if (str.length() != 4) {
            throw new AssertionError("FlatBuffers: file identifier must be length 4");
        }
        for (int r02 = 3; r02 >= 0; r02--) {
            addByte((byte) str.charAt(r02));
        }
        finish(r42, z10);
    }

    public void finish(int r42, boolean z10) {
        prep(this.minalign, (z10 ? 4 : 0) + 4);
        addOffset(r42);
        if (z10) {
            addInt(this.f975bb.capacity() - this.space);
        }
        this.f975bb.position(this.space);
        this.finished = true;
    }

    public void finishSizePrefixed(int r22) {
        finish(r22, true);
    }

    public void finishSizePrefixed(int r22, String str) {
        finish(r22, str, true);
    }

    public void finished() {
        if (!this.finished) {
            throw new AssertionError("FlatBuffers: you can only access the serialized buffer after it has been finished by FlatBufferBuilder.finish().");
        }
    }

    public FlatBufferBuilder forceDefaults(boolean z10) {
        this.force_defaults = z10;
        return this;
    }

    public FlatBufferBuilder init(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        this.bb_factory = byteBufferFactory;
        this.f975bb = byteBuffer;
        byteBuffer.clear();
        this.f975bb.order(ByteOrder.LITTLE_ENDIAN);
        this.minalign = 1;
        this.space = this.f975bb.capacity();
        this.vtable_in_use = 0;
        this.nested = false;
        this.finished = false;
        this.object_start = 0;
        this.num_vtables = 0;
        this.vector_num_elems = 0;
        return this;
    }

    public void notNested() {
        if (this.nested) {
            throw new AssertionError("FlatBuffers: object serialization must not be nested.");
        }
    }

    public int offset() {
        return this.f975bb.capacity() - this.space;
    }

    public void pad(int r52) {
        for (int r12 = 0; r12 < r52; r12++) {
            ByteBuffer byteBuffer = this.f975bb;
            int r32 = this.space - 1;
            this.space = r32;
            byteBuffer.put(r32, (byte) 0);
        }
    }

    public void prep(int r52, int r6) {
        if (r52 > this.minalign) {
            this.minalign = r52;
        }
        int r02 = ((~((this.f975bb.capacity() - this.space) + r6)) + 1) & (r52 - 1);
        while (this.space < r02 + r52 + r6) {
            int r12 = this.f975bb.capacity();
            ByteBuffer byteBuffer = this.f975bb;
            ByteBuffer byteBufferGrowByteBuffer = growByteBuffer(byteBuffer, this.bb_factory);
            this.f975bb = byteBufferGrowByteBuffer;
            if (byteBuffer != byteBufferGrowByteBuffer) {
                this.bb_factory.releaseByteBuffer(byteBuffer);
            }
            this.space = (this.f975bb.capacity() - r12) + this.space;
        }
        pad(r02);
    }

    public void putBoolean(boolean z10) {
        ByteBuffer byteBuffer = this.f975bb;
        int r12 = this.space - 1;
        this.space = r12;
        byteBuffer.put(r12, z10 ? (byte) 1 : (byte) 0);
    }

    public void putByte(byte b10) {
        ByteBuffer byteBuffer = this.f975bb;
        int r12 = this.space - 1;
        this.space = r12;
        byteBuffer.put(r12, b10);
    }

    public void putDouble(double d10) {
        ByteBuffer byteBuffer = this.f975bb;
        int r12 = this.space - 8;
        this.space = r12;
        byteBuffer.putDouble(r12, d10);
    }

    public void putFloat(float f) {
        ByteBuffer byteBuffer = this.f975bb;
        int r12 = this.space - 4;
        this.space = r12;
        byteBuffer.putFloat(r12, f);
    }

    public void putInt(int r32) {
        ByteBuffer byteBuffer = this.f975bb;
        int r12 = this.space - 4;
        this.space = r12;
        byteBuffer.putInt(r12, r32);
    }

    public void putLong(long j10) {
        ByteBuffer byteBuffer = this.f975bb;
        int r12 = this.space - 8;
        this.space = r12;
        byteBuffer.putLong(r12, j10);
    }

    public void putShort(short s7) {
        ByteBuffer byteBuffer = this.f975bb;
        int r12 = this.space - 2;
        this.space = r12;
        byteBuffer.putShort(r12, s7);
    }

    public void required(int r32, int r42) {
        int r02 = this.f975bb.capacity() - r32;
        if (!(this.f975bb.getShort((r02 - this.f975bb.getInt(r02)) + r42) != 0)) {
            throw new AssertionError(androidx.appcompat.graphics.drawable.a.f("FlatBuffers: field ", r42, " must be set"));
        }
    }

    public byte[] sizedByteArray() {
        return sizedByteArray(this.space, this.f975bb.capacity() - this.space);
    }

    public byte[] sizedByteArray(int r22, int r32) {
        finished();
        byte[] bArr = new byte[r32];
        this.f975bb.position(r22);
        this.f975bb.get(bArr);
        return bArr;
    }

    public InputStream sizedInputStream() {
        finished();
        ByteBuffer byteBufferDuplicate = this.f975bb.duplicate();
        byteBufferDuplicate.position(this.space);
        byteBufferDuplicate.limit(this.f975bb.capacity());
        return new ByteBufferBackedInputStream(byteBufferDuplicate);
    }

    public void slot(int r32) {
        this.vtable[r32] = offset();
    }

    public void startTable(int r32) {
        notNested();
        int[] r02 = this.vtable;
        if (r02 == null || r02.length < r32) {
            this.vtable = new int[r32];
        }
        this.vtable_in_use = r32;
        Arrays.fill(this.vtable, 0, r32, 0);
        this.nested = true;
        this.object_start = offset();
    }

    public void startVector(int r12, int r22, int r32) {
        notNested();
        this.vector_num_elems = r22;
        int r13 = r12 * r22;
        prep(4, r13);
        prep(r32, r13);
        this.nested = true;
    }
}
