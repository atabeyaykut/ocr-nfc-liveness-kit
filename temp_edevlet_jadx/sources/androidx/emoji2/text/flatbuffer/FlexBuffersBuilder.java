package androidx.emoji2.text.flatbuffer;

import androidx.emoji2.text.flatbuffer.FlexBuffers;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;

/* loaded from: classes.dex */
public class FlexBuffersBuilder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int BUILDER_FLAG_NONE = 0;
    public static final int BUILDER_FLAG_SHARE_ALL = 7;
    public static final int BUILDER_FLAG_SHARE_KEYS = 1;
    public static final int BUILDER_FLAG_SHARE_KEYS_AND_STRINGS = 3;
    public static final int BUILDER_FLAG_SHARE_KEY_VECTORS = 4;
    public static final int BUILDER_FLAG_SHARE_STRINGS = 2;
    private static final int WIDTH_16 = 1;
    private static final int WIDTH_32 = 2;
    private static final int WIDTH_64 = 3;
    private static final int WIDTH_8 = 0;

    /* renamed from: bb, reason: collision with root package name */
    private final ReadWriteBuf f978bb;
    private boolean finished;
    private final int flags;
    private Comparator<Value> keyComparator;
    private final HashMap<String, Integer> keyPool;
    private final ArrayList<Value> stack;
    private final HashMap<String, Integer> stringPool;

    public static class Value {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        final double dValue;
        long iValue;
        int key;
        final int minBitWidth;
        final int type;

        public Value(int r12, int r22, int r32, double d10) {
            this.key = r12;
            this.type = r22;
            this.minBitWidth = r32;
            this.dValue = d10;
            this.iValue = Long.MIN_VALUE;
        }

        public Value(int r12, int r22, int r32, long j10) {
            this.key = r12;
            this.type = r22;
            this.minBitWidth = r32;
            this.iValue = j10;
            this.dValue = Double.MIN_VALUE;
        }

        public static Value blob(int r72, int r82, int r92, int r10) {
            return new Value(r72, r92, r10, r82);
        }

        public static Value bool(int r72, boolean z10) {
            return new Value(r72, 26, 0, z10 ? 1L : 0L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int elemWidth(int r72, int r82) {
            return elemWidth(this.type, this.minBitWidth, this.iValue, r72, r82);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int elemWidth(int r52, int r6, long j10, int r92, int r10) {
            if (FlexBuffers.isTypeInline(r52)) {
                return r6;
            }
            for (int r53 = 1; r53 <= 32; r53 *= 2) {
                int r62 = FlexBuffersBuilder.widthUInBits((int) (((r10 * r53) + (paddingBytes(r92, r53) + r92)) - j10));
                if ((1 << r62) == r53) {
                    return r62;
                }
            }
            return 3;
        }

        public static Value float32(int r72, float f) {
            return new Value(r72, 3, 2, f);
        }

        public static Value float64(int r72, double d10) {
            return new Value(r72, 3, 3, d10);
        }

        public static Value int16(int r72, int r82) {
            return new Value(r72, 1, 1, r82);
        }

        public static Value int32(int r72, int r82) {
            return new Value(r72, 1, 2, r82);
        }

        public static Value int64(int r72, long j10) {
            return new Value(r72, 1, 3, j10);
        }

        public static Value int8(int r72, int r82) {
            return new Value(r72, 1, 0, r82);
        }

        private static byte packedType(int r02, int r12) {
            return (byte) (r02 | (r12 << 2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int paddingBytes(int r02, int r12) {
            return ((~r02) + 1) & (r12 - 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte storedPackedType() {
            return storedPackedType(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte storedPackedType(int r22) {
            return packedType(storedWidth(r22), this.type);
        }

        private int storedWidth(int r22) {
            return FlexBuffers.isTypeInline(this.type) ? Math.max(this.minBitWidth, r22) : this.minBitWidth;
        }

        public static Value uInt16(int r72, int r82) {
            return new Value(r72, 2, 1, r82);
        }

        public static Value uInt32(int r72, int r82) {
            return new Value(r72, 2, 2, r82);
        }

        public static Value uInt64(int r72, long j10) {
            return new Value(r72, 2, 3, j10);
        }

        public static Value uInt8(int r72, int r82) {
            return new Value(r72, 2, 0, r82);
        }
    }

    public FlexBuffersBuilder() {
        this(256);
    }

    public FlexBuffersBuilder(int r22) {
        this(new ArrayReadWriteBuf(r22), 1);
    }

    public FlexBuffersBuilder(ReadWriteBuf readWriteBuf, int r32) {
        this.stack = new ArrayList<>();
        this.keyPool = new HashMap<>();
        this.stringPool = new HashMap<>();
        this.finished = false;
        this.keyComparator = new Comparator<Value>() { // from class: androidx.emoji2.text.flatbuffer.FlexBuffersBuilder.1
            @Override // java.util.Comparator
            public int compare(Value value, Value value2) {
                byte b10;
                byte b11;
                int r33 = value.key;
                int r42 = value2.key;
                do {
                    b10 = FlexBuffersBuilder.this.f978bb.get(r33);
                    b11 = FlexBuffersBuilder.this.f978bb.get(r42);
                    if (b10 == 0) {
                        return b10 - b11;
                    }
                    r33++;
                    r42++;
                } while (b10 == b11);
                return b10 - b11;
            }
        };
        this.f978bb = readWriteBuf;
        this.flags = r32;
    }

    public FlexBuffersBuilder(ByteBuffer byteBuffer) {
        this(byteBuffer, 1);
    }

    @Deprecated
    public FlexBuffersBuilder(ByteBuffer byteBuffer, int r32) {
        this(new ArrayReadWriteBuf(byteBuffer.array()), r32);
    }

    private int align(int r42) {
        int r43 = 1 << r42;
        int r02 = Value.paddingBytes(this.f978bb.writePosition(), r43);
        while (true) {
            int r12 = r02 - 1;
            if (r02 == 0) {
                return r43;
            }
            this.f978bb.put((byte) 0);
            r02 = r12;
        }
    }

    private Value createKeyVector(int r14, int r15) {
        long j10 = r15;
        int r6 = Math.max(0, widthUInBits(j10));
        int r152 = r14;
        while (r152 < this.stack.size()) {
            r152++;
            r6 = Math.max(r6, Value.elemWidth(4, 0, this.stack.get(r152).key, this.f978bb.writePosition(), r152));
        }
        int r153 = align(r6);
        writeInt(j10, r153);
        int r02 = this.f978bb.writePosition();
        while (r14 < this.stack.size()) {
            int r12 = this.stack.get(r14).key;
            writeOffset(this.stack.get(r14).key, r153);
            r14++;
        }
        return new Value(-1, FlexBuffers.toTypedVector(4, 0), r6, r02);
    }

    private Value createVector(int r16, int r17, int r18, boolean z10, boolean z11, Value value) {
        int r72;
        int typedVector;
        int r22 = r18;
        long j10 = r22;
        int r52 = Math.max(0, widthUInBits(j10));
        if (value != null) {
            r52 = Math.max(r52, value.elemWidth(this.f978bb.writePosition(), 0));
            r72 = 3;
        } else {
            r72 = 1;
        }
        int r82 = 4;
        int r12 = r52;
        for (int r53 = r17; r53 < this.stack.size(); r53++) {
            r12 = Math.max(r12, this.stack.get(r53).elemWidth(this.f978bb.writePosition(), r53 + r72));
            if (z10 && r53 == r17) {
                r82 = this.stack.get(r53).type;
                if (!FlexBuffers.isTypedVectorElementType(r82)) {
                    throw new FlexBuffers.FlexBufferException("TypedVector does not support this element type");
                }
            }
        }
        int r92 = r17;
        int r54 = align(r12);
        if (value != null) {
            writeOffset(value.iValue, r54);
            writeInt(1 << value.minBitWidth, r54);
        }
        if (!z11) {
            writeInt(j10, r54);
        }
        int r32 = this.f978bb.writePosition();
        for (int r42 = r92; r42 < this.stack.size(); r42++) {
            writeAny(this.stack.get(r42), r54);
        }
        if (!z10) {
            while (r92 < this.stack.size()) {
                this.f978bb.put(this.stack.get(r92).storedPackedType(r12));
                r92++;
            }
        }
        if (value != null) {
            typedVector = 9;
        } else if (z10) {
            if (!z11) {
                r22 = 0;
            }
            typedVector = FlexBuffers.toTypedVector(r82, r22);
        } else {
            typedVector = 10;
        }
        return new Value(r16, typedVector, r12, r32);
    }

    private int putKey(String str) {
        if (str == null) {
            return -1;
        }
        int r02 = this.f978bb.writePosition();
        if ((this.flags & 1) != 0) {
            Integer num = this.keyPool.get(str);
            if (num != null) {
                return num.intValue();
            }
            byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
            this.f978bb.put(bytes, 0, bytes.length);
        } else {
            byte[] bytes2 = str.getBytes(StandardCharsets.UTF_8);
            this.f978bb.put(bytes2, 0, bytes2.length);
        }
        this.f978bb.put((byte) 0);
        this.keyPool.put(str, Integer.valueOf(r02));
        return r02;
    }

    private void putUInt(String str, long j10) {
        int r32 = putKey(str);
        int r02 = widthUInBits(j10);
        this.stack.add(r02 == 0 ? Value.uInt8(r32, (int) j10) : r02 == 1 ? Value.uInt16(r32, (int) j10) : r02 == 2 ? Value.uInt32(r32, (int) j10) : Value.uInt64(r32, j10));
    }

    private void putUInt64(String str, long j10) {
        this.stack.add(Value.uInt64(putKey(str), j10));
    }

    public static int widthUInBits(long j10) {
        if (j10 <= FlexBuffers.Unsigned.byteToUnsignedInt((byte) -1)) {
            return 0;
        }
        if (j10 <= FlexBuffers.Unsigned.shortToUnsignedInt((short) -1)) {
            return 1;
        }
        return j10 <= FlexBuffers.Unsigned.intToUnsignedLong(-1) ? 2 : 3;
    }

    private void writeAny(Value value, int r42) {
        int r02 = value.type;
        if (r02 != 0 && r02 != 1 && r02 != 2) {
            if (r02 == 3) {
                writeDouble(value.dValue, r42);
                return;
            } else if (r02 != 26) {
                writeOffset(value.iValue, r42);
                return;
            }
        }
        writeInt(value.iValue, r42);
    }

    private Value writeBlob(int r6, byte[] bArr, int r82, boolean z10) {
        int r02 = widthUInBits(bArr.length);
        writeInt(bArr.length, align(r02));
        int r12 = this.f978bb.writePosition();
        this.f978bb.put(bArr, 0, bArr.length);
        if (z10) {
            this.f978bb.put((byte) 0);
        }
        return Value.blob(r6, r12, r82, r02);
    }

    private void writeDouble(double d10, int r42) {
        if (r42 == 4) {
            this.f978bb.putFloat((float) d10);
        } else if (r42 == 8) {
            this.f978bb.putDouble(d10);
        }
    }

    private void writeInt(long j10, int r42) {
        if (r42 == 1) {
            this.f978bb.put((byte) j10);
            return;
        }
        if (r42 == 2) {
            this.f978bb.putShort((short) j10);
        } else if (r42 == 4) {
            this.f978bb.putInt((int) j10);
        } else {
            if (r42 != 8) {
                return;
            }
            this.f978bb.putLong(j10);
        }
    }

    private void writeOffset(long j10, int r52) {
        writeInt((int) (this.f978bb.writePosition() - j10), r52);
    }

    private Value writeString(int r32, String str) {
        return writeBlob(r32, str.getBytes(StandardCharsets.UTF_8), 5, true);
    }

    public int endMap(String str, int r92) {
        int r12 = putKey(str);
        ArrayList<Value> arrayList = this.stack;
        Collections.sort(arrayList.subList(r92, arrayList.size()), this.keyComparator);
        Value valueCreateVector = createVector(r12, r92, this.stack.size() - r92, false, false, createKeyVector(r92, this.stack.size() - r92));
        while (this.stack.size() > r92) {
            this.stack.remove(r0.size() - 1);
        }
        this.stack.add(valueCreateVector);
        return (int) valueCreateVector.iValue;
    }

    public int endVector(String str, int r92, boolean z10, boolean z11) {
        Value valueCreateVector = createVector(putKey(str), r92, this.stack.size() - r92, z10, z11, null);
        while (this.stack.size() > r92) {
            this.stack.remove(r10.size() - 1);
        }
        this.stack.add(valueCreateVector);
        return (int) valueCreateVector.iValue;
    }

    public ByteBuffer finish() {
        int r02 = align(this.stack.get(0).elemWidth(this.f978bb.writePosition(), 0));
        writeAny(this.stack.get(0), r02);
        this.f978bb.put(this.stack.get(0).storedPackedType());
        this.f978bb.put((byte) r02);
        this.finished = true;
        return ByteBuffer.wrap(this.f978bb.data(), 0, this.f978bb.writePosition());
    }

    public ReadWriteBuf getBuffer() {
        return this.f978bb;
    }

    public int putBlob(String str, byte[] bArr) {
        Value valueWriteBlob = writeBlob(putKey(str), bArr, 25, false);
        this.stack.add(valueWriteBlob);
        return (int) valueWriteBlob.iValue;
    }

    public int putBlob(byte[] bArr) {
        return putBlob(null, bArr);
    }

    public void putBoolean(String str, boolean z10) {
        this.stack.add(Value.bool(putKey(str), z10));
    }

    public void putBoolean(boolean z10) {
        putBoolean(null, z10);
    }

    public void putFloat(double d10) {
        putFloat((String) null, d10);
    }

    public void putFloat(float f) {
        putFloat((String) null, f);
    }

    public void putFloat(String str, double d10) {
        this.stack.add(Value.float64(putKey(str), d10));
    }

    public void putFloat(String str, float f) {
        this.stack.add(Value.float32(putKey(str), f));
    }

    public void putInt(int r22) {
        putInt((String) null, r22);
    }

    public void putInt(long j10) {
        putInt((String) null, j10);
    }

    public void putInt(String str, int r42) {
        putInt(str, r42);
    }

    public void putInt(String str, long j10) {
        ArrayList<Value> arrayList;
        Value valueInt64;
        int r42 = putKey(str);
        if (-128 <= j10 && j10 <= 127) {
            arrayList = this.stack;
            valueInt64 = Value.int8(r42, (int) j10);
        } else if (-32768 <= j10 && j10 <= 32767) {
            arrayList = this.stack;
            valueInt64 = Value.int16(r42, (int) j10);
        } else if (-2147483648L > j10 || j10 > 2147483647L) {
            arrayList = this.stack;
            valueInt64 = Value.int64(r42, j10);
        } else {
            arrayList = this.stack;
            valueInt64 = Value.int32(r42, (int) j10);
        }
        arrayList.add(valueInt64);
    }

    public int putString(String str) {
        return putString(null, str);
    }

    public int putString(String str, String str2) {
        Value valueWriteString;
        int r52 = putKey(str);
        if ((this.flags & 2) != 0) {
            Integer num = this.stringPool.get(str2);
            if (num != null) {
                this.stack.add(Value.blob(r52, num.intValue(), 5, widthUInBits(str2.length())));
                return num.intValue();
            }
            valueWriteString = writeString(r52, str2);
            this.stringPool.put(str2, Integer.valueOf((int) valueWriteString.iValue));
        } else {
            valueWriteString = writeString(r52, str2);
        }
        this.stack.add(valueWriteString);
        return (int) valueWriteString.iValue;
    }

    public void putUInt(int r42) {
        putUInt(null, r42);
    }

    public void putUInt(long j10) {
        putUInt(null, j10);
    }

    public void putUInt64(BigInteger bigInteger) {
        putUInt64(null, bigInteger.longValue());
    }

    public int startMap() {
        return this.stack.size();
    }

    public int startVector() {
        return this.stack.size();
    }
}
