package androidx.emoji2.text.flatbuffer;

import androidx.appcompat.widget.v;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.hpke.HPKE;

/* loaded from: classes.dex */
public class FlexBuffers {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final ReadBuf EMPTY_BB = new ArrayReadWriteBuf(new byte[]{0}, 1);
    public static final int FBT_BLOB = 25;
    public static final int FBT_BOOL = 26;
    public static final int FBT_FLOAT = 3;
    public static final int FBT_INDIRECT_FLOAT = 8;
    public static final int FBT_INDIRECT_INT = 6;
    public static final int FBT_INDIRECT_UINT = 7;
    public static final int FBT_INT = 1;
    public static final int FBT_KEY = 4;
    public static final int FBT_MAP = 9;
    public static final int FBT_NULL = 0;
    public static final int FBT_STRING = 5;
    public static final int FBT_UINT = 2;
    public static final int FBT_VECTOR = 10;
    public static final int FBT_VECTOR_BOOL = 36;
    public static final int FBT_VECTOR_FLOAT = 13;
    public static final int FBT_VECTOR_FLOAT2 = 18;
    public static final int FBT_VECTOR_FLOAT3 = 21;
    public static final int FBT_VECTOR_FLOAT4 = 24;
    public static final int FBT_VECTOR_INT = 11;
    public static final int FBT_VECTOR_INT2 = 16;
    public static final int FBT_VECTOR_INT3 = 19;
    public static final int FBT_VECTOR_INT4 = 22;
    public static final int FBT_VECTOR_KEY = 14;
    public static final int FBT_VECTOR_STRING_DEPRECATED = 15;
    public static final int FBT_VECTOR_UINT = 12;
    public static final int FBT_VECTOR_UINT2 = 17;
    public static final int FBT_VECTOR_UINT3 = 20;
    public static final int FBT_VECTOR_UINT4 = 23;

    public static class Blob extends Sized {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        static final Blob EMPTY = new Blob(FlexBuffers.EMPTY_BB, 1, 1);

        public Blob(ReadBuf readBuf, int r22, int r32) {
            super(readBuf, r22, r32);
        }

        public static Blob empty() {
            return EMPTY;
        }

        public ByteBuffer data() {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.f976bb.data());
            byteBufferWrap.position(this.end);
            byteBufferWrap.limit(size() + this.end);
            return byteBufferWrap.asReadOnlyBuffer().slice();
        }

        public byte get(int r32) {
            return this.f976bb.get(this.end + r32);
        }

        public byte[] getBytes() {
            int size = size();
            byte[] bArr = new byte[size];
            for (int r22 = 0; r22 < size; r22++) {
                bArr[r22] = this.f976bb.get(this.end + r22);
            }
            return bArr;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Sized
        public /* bridge */ /* synthetic */ int size() {
            return super.size();
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public String toString() {
            return this.f976bb.getString(this.end, size());
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder toString(StringBuilder sb2) {
            sb2.append('\"');
            sb2.append(this.f976bb.getString(this.end, size()));
            sb2.append('\"');
            return sb2;
        }
    }

    public static class FlexBufferException extends RuntimeException {
        public FlexBufferException(String str) {
            super(str);
        }
    }

    public static class Key extends Object {
        private static final Key EMPTY = new Key(FlexBuffers.EMPTY_BB, 0, 0);

        public Key(ReadBuf readBuf, int r22, int r32) {
            super(readBuf, r22, r32);
        }

        public static Key empty() {
            return EMPTY;
        }

        public int compareTo(byte[] bArr) {
            byte b10;
            byte b11;
            int r02 = this.end;
            int r12 = 0;
            do {
                b10 = this.f976bb.get(r02);
                b11 = bArr[r12];
                if (b10 == 0) {
                    return b10 - b11;
                }
                r02++;
                r12++;
                if (r12 == bArr.length) {
                    return b10 - b11;
                }
            } while (b10 == b11);
            return b10 - b11;
        }

        public boolean equals(java.lang.Object obj) {
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            return key.end == this.end && key.byteWidth == this.byteWidth;
        }

        public int hashCode() {
            return this.end ^ this.byteWidth;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public String toString() {
            int r02 = this.end;
            while (this.f976bb.get(r02) != 0) {
                r02++;
            }
            int r12 = this.end;
            return this.f976bb.getString(r12, r02 - r12);
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder toString(StringBuilder sb2) {
            sb2.append(toString());
            return sb2;
        }
    }

    public static class KeyVector {
        private final TypedVector vec;

        public KeyVector(TypedVector typedVector) {
            this.vec = typedVector;
        }

        public Key get(int r42) {
            if (r42 >= size()) {
                return Key.EMPTY;
            }
            TypedVector typedVector = this.vec;
            int r43 = (r42 * typedVector.byteWidth) + typedVector.end;
            TypedVector typedVector2 = this.vec;
            ReadBuf readBuf = typedVector2.f976bb;
            return new Key(readBuf, FlexBuffers.indirect(readBuf, r43, typedVector2.byteWidth), 1);
        }

        public int size() {
            return this.vec.size();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('[');
            for (int r12 = 0; r12 < this.vec.size(); r12++) {
                this.vec.get(r12).toString(sb2);
                if (r12 != this.vec.size() - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append("]");
            return sb2.toString();
        }
    }

    public static class Map extends Vector {
        private static final Map EMPTY_MAP = new Map(FlexBuffers.EMPTY_BB, 1, 1);

        public Map(ReadBuf readBuf, int r22, int r32) {
            super(readBuf, r22, r32);
        }

        private int binarySearch(KeyVector keyVector, byte[] bArr) {
            int size = keyVector.size() - 1;
            int r12 = 0;
            while (r12 <= size) {
                int r22 = (r12 + size) >>> 1;
                int r32 = keyVector.get(r22).compareTo(bArr);
                if (r32 < 0) {
                    r12 = r22 + 1;
                } else {
                    if (r32 <= 0) {
                        return r22;
                    }
                    size = r22 - 1;
                }
            }
            return -(r12 + 1);
        }

        public static Map empty() {
            return EMPTY_MAP;
        }

        public Reference get(String str) {
            return get(str.getBytes(StandardCharsets.UTF_8));
        }

        public Reference get(byte[] bArr) {
            KeyVector keyVectorKeys = keys();
            int size = keyVectorKeys.size();
            int r32 = binarySearch(keyVectorKeys, bArr);
            return (r32 < 0 || r32 >= size) ? Reference.NULL_REFERENCE : get(r32);
        }

        public KeyVector keys() {
            int r02 = this.end - (this.byteWidth * 3);
            ReadBuf readBuf = this.f976bb;
            int r42 = FlexBuffers.indirect(readBuf, r02, this.byteWidth);
            ReadBuf readBuf2 = this.f976bb;
            int r6 = this.byteWidth;
            return new KeyVector(new TypedVector(readBuf, r42, FlexBuffers.readInt(readBuf2, r02 + r6, r6), 4));
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Vector, androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder toString(StringBuilder sb2) {
            sb2.append("{ ");
            KeyVector keyVectorKeys = keys();
            int size = size();
            Vector vectorValues = values();
            for (int r32 = 0; r32 < size; r32++) {
                sb2.append('\"');
                sb2.append(keyVectorKeys.get(r32).toString());
                sb2.append("\" : ");
                sb2.append(vectorValues.get(r32).toString());
                if (r32 != size - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append(" }");
            return sb2;
        }

        public Vector values() {
            return new Vector(this.f976bb, this.end, this.byteWidth);
        }
    }

    public static abstract class Object {

        /* renamed from: bb, reason: collision with root package name */
        ReadBuf f976bb;
        int byteWidth;
        int end;

        public Object(ReadBuf readBuf, int r22, int r32) {
            this.f976bb = readBuf;
            this.end = r22;
            this.byteWidth = r32;
        }

        public String toString() {
            return toString(new StringBuilder(128)).toString();
        }

        public abstract StringBuilder toString(StringBuilder sb2);
    }

    public static class Reference {
        private static final Reference NULL_REFERENCE = new Reference(FlexBuffers.EMPTY_BB, 0, 1, 0);

        /* renamed from: bb, reason: collision with root package name */
        private ReadBuf f977bb;
        private int byteWidth;
        private int end;
        private int parentWidth;
        private int type;

        public Reference(ReadBuf readBuf, int r10, int r11, int r12) {
            this(readBuf, r10, r11, 1 << (r12 & 3), r12 >> 2);
        }

        public Reference(ReadBuf readBuf, int r22, int r32, int r42, int r52) {
            this.f977bb = readBuf;
            this.end = r22;
            this.parentWidth = r32;
            this.byteWidth = r42;
            this.type = r52;
        }

        public Blob asBlob() {
            if (!isBlob() && !isString()) {
                return Blob.empty();
            }
            ReadBuf readBuf = this.f977bb;
            return new Blob(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
        }

        public boolean asBoolean() {
            return isBoolean() ? this.f977bb.get(this.end) != 0 : asUInt() != 0;
        }

        public double asFloat() {
            int r02 = this.type;
            if (r02 == 3) {
                return FlexBuffers.readDouble(this.f977bb, this.end, this.parentWidth);
            }
            if (r02 == 1) {
                return FlexBuffers.readInt(this.f977bb, this.end, this.parentWidth);
            }
            if (r02 != 2) {
                if (r02 == 5) {
                    return Double.parseDouble(asString());
                }
                if (r02 == 6) {
                    ReadBuf readBuf = this.f977bb;
                    return FlexBuffers.readInt(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
                }
                if (r02 == 7) {
                    ReadBuf readBuf2 = this.f977bb;
                    return FlexBuffers.readUInt(readBuf2, FlexBuffers.indirect(readBuf2, this.end, this.parentWidth), this.byteWidth);
                }
                if (r02 == 8) {
                    ReadBuf readBuf3 = this.f977bb;
                    return FlexBuffers.readDouble(readBuf3, FlexBuffers.indirect(readBuf3, this.end, this.parentWidth), this.byteWidth);
                }
                if (r02 == 10) {
                    return asVector().size();
                }
                if (r02 != 26) {
                    return 0.0d;
                }
            }
            return FlexBuffers.readUInt(this.f977bb, this.end, this.parentWidth);
        }

        public int asInt() {
            ReadBuf readBuf;
            int r12;
            int r02 = this.type;
            if (r02 == 1) {
                return FlexBuffers.readInt(this.f977bb, this.end, this.parentWidth);
            }
            if (r02 == 2) {
                readBuf = this.f977bb;
                r12 = this.end;
            } else {
                if (r02 == 3) {
                    return (int) FlexBuffers.readDouble(this.f977bb, this.end, this.parentWidth);
                }
                if (r02 == 5) {
                    return Integer.parseInt(asString());
                }
                if (r02 == 6) {
                    ReadBuf readBuf2 = this.f977bb;
                    return FlexBuffers.readInt(readBuf2, FlexBuffers.indirect(readBuf2, this.end, this.parentWidth), this.byteWidth);
                }
                if (r02 != 7) {
                    if (r02 == 8) {
                        ReadBuf readBuf3 = this.f977bb;
                        return (int) FlexBuffers.readDouble(readBuf3, FlexBuffers.indirect(readBuf3, this.end, this.parentWidth), this.byteWidth);
                    }
                    if (r02 == 10) {
                        return asVector().size();
                    }
                    if (r02 != 26) {
                        return 0;
                    }
                    return FlexBuffers.readInt(this.f977bb, this.end, this.parentWidth);
                }
                readBuf = this.f977bb;
                r12 = FlexBuffers.indirect(readBuf, this.end, this.parentWidth);
            }
            return (int) FlexBuffers.readUInt(readBuf, r12, this.parentWidth);
        }

        public Key asKey() {
            if (!isKey()) {
                return Key.empty();
            }
            ReadBuf readBuf = this.f977bb;
            return new Key(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
        }

        public long asLong() {
            int r02 = this.type;
            if (r02 == 1) {
                return FlexBuffers.readLong(this.f977bb, this.end, this.parentWidth);
            }
            if (r02 == 2) {
                return FlexBuffers.readUInt(this.f977bb, this.end, this.parentWidth);
            }
            if (r02 == 3) {
                return (long) FlexBuffers.readDouble(this.f977bb, this.end, this.parentWidth);
            }
            if (r02 == 5) {
                try {
                    return Long.parseLong(asString());
                } catch (NumberFormatException unused) {
                    return 0L;
                }
            }
            if (r02 == 6) {
                ReadBuf readBuf = this.f977bb;
                return FlexBuffers.readLong(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            if (r02 == 7) {
                ReadBuf readBuf2 = this.f977bb;
                return FlexBuffers.readUInt(readBuf2, FlexBuffers.indirect(readBuf2, this.end, this.parentWidth), this.parentWidth);
            }
            if (r02 == 8) {
                ReadBuf readBuf3 = this.f977bb;
                return (long) FlexBuffers.readDouble(readBuf3, FlexBuffers.indirect(readBuf3, this.end, this.parentWidth), this.byteWidth);
            }
            if (r02 == 10) {
                return asVector().size();
            }
            if (r02 != 26) {
                return 0L;
            }
            return FlexBuffers.readInt(this.f977bb, this.end, this.parentWidth);
        }

        public Map asMap() {
            if (!isMap()) {
                return Map.empty();
            }
            ReadBuf readBuf = this.f977bb;
            return new Map(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
        }

        public String asString() {
            if (isString()) {
                int r02 = FlexBuffers.indirect(this.f977bb, this.end, this.parentWidth);
                ReadBuf readBuf = this.f977bb;
                int r22 = this.byteWidth;
                return this.f977bb.getString(r02, (int) FlexBuffers.readUInt(readBuf, r02 - r22, r22));
            }
            if (!isKey()) {
                return "";
            }
            int r03 = FlexBuffers.indirect(this.f977bb, this.end, this.byteWidth);
            int r12 = r03;
            while (this.f977bb.get(r12) != 0) {
                r12++;
            }
            return this.f977bb.getString(r03, r12 - r03);
        }

        public long asUInt() {
            int r02 = this.type;
            if (r02 == 2) {
                return FlexBuffers.readUInt(this.f977bb, this.end, this.parentWidth);
            }
            if (r02 == 1) {
                return FlexBuffers.readLong(this.f977bb, this.end, this.parentWidth);
            }
            if (r02 == 3) {
                return (long) FlexBuffers.readDouble(this.f977bb, this.end, this.parentWidth);
            }
            if (r02 == 10) {
                return asVector().size();
            }
            if (r02 == 26) {
                return FlexBuffers.readInt(this.f977bb, this.end, this.parentWidth);
            }
            if (r02 == 5) {
                return Long.parseLong(asString());
            }
            if (r02 == 6) {
                ReadBuf readBuf = this.f977bb;
                return FlexBuffers.readLong(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            if (r02 == 7) {
                ReadBuf readBuf2 = this.f977bb;
                return FlexBuffers.readUInt(readBuf2, FlexBuffers.indirect(readBuf2, this.end, this.parentWidth), this.byteWidth);
            }
            if (r02 != 8) {
                return 0L;
            }
            ReadBuf readBuf3 = this.f977bb;
            return (long) FlexBuffers.readDouble(readBuf3, FlexBuffers.indirect(readBuf3, this.end, this.parentWidth), this.parentWidth);
        }

        public Vector asVector() {
            if (isVector()) {
                ReadBuf readBuf = this.f977bb;
                return new Vector(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            int r02 = this.type;
            if (r02 == 15) {
                ReadBuf readBuf2 = this.f977bb;
                return new TypedVector(readBuf2, FlexBuffers.indirect(readBuf2, this.end, this.parentWidth), this.byteWidth, 4);
            }
            if (!FlexBuffers.isTypedVector(r02)) {
                return Vector.empty();
            }
            ReadBuf readBuf3 = this.f977bb;
            return new TypedVector(readBuf3, FlexBuffers.indirect(readBuf3, this.end, this.parentWidth), this.byteWidth, FlexBuffers.toTypedVectorElementType(this.type));
        }

        public int getType() {
            return this.type;
        }

        public boolean isBlob() {
            return this.type == 25;
        }

        public boolean isBoolean() {
            return this.type == 26;
        }

        public boolean isFloat() {
            int r02 = this.type;
            return r02 == 3 || r02 == 8;
        }

        public boolean isInt() {
            int r02 = this.type;
            return r02 == 1 || r02 == 6;
        }

        public boolean isIntOrUInt() {
            return isInt() || isUInt();
        }

        public boolean isKey() {
            return this.type == 4;
        }

        public boolean isMap() {
            return this.type == 9;
        }

        public boolean isNull() {
            return this.type == 0;
        }

        public boolean isNumeric() {
            return isIntOrUInt() || isFloat();
        }

        public boolean isString() {
            return this.type == 5;
        }

        public boolean isTypedVector() {
            return FlexBuffers.isTypedVector(this.type);
        }

        public boolean isUInt() {
            int r02 = this.type;
            return r02 == 2 || r02 == 7;
        }

        public boolean isVector() {
            int r02 = this.type;
            return r02 == 10 || r02 == 9;
        }

        public String toString() {
            return toString(new StringBuilder(128)).toString();
        }

        public StringBuilder toString(StringBuilder sb2) {
            int r02 = this.type;
            if (r02 != 36) {
                switch (r02) {
                    case 0:
                        sb2.append("null");
                        return sb2;
                    case 1:
                    case 6:
                        sb2.append(asLong());
                        return sb2;
                    case 2:
                    case 7:
                        sb2.append(asUInt());
                        return sb2;
                    case 3:
                    case 8:
                        sb2.append(asFloat());
                        return sb2;
                    case 4:
                        Key keyAsKey = asKey();
                        sb2.append('\"');
                        StringBuilder string = keyAsKey.toString(sb2);
                        string.append('\"');
                        return string;
                    case 5:
                        sb2.append('\"');
                        sb2.append(asString());
                        sb2.append('\"');
                        return sb2;
                    case 9:
                        return asMap().toString(sb2);
                    case 10:
                        return asVector().toString(sb2);
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                        break;
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                        throw new FlexBufferException("not_implemented:" + this.type);
                    case 25:
                        return asBlob().toString(sb2);
                    case 26:
                        sb2.append(asBoolean());
                        return sb2;
                    default:
                        return sb2;
                }
            }
            sb2.append(asVector());
            return sb2;
        }
    }

    public static abstract class Sized extends Object {
        protected final int size;

        public Sized(ReadBuf readBuf, int r22, int r32) {
            super(readBuf, r22, r32);
            this.size = FlexBuffers.readInt(this.f976bb, r22 - r32, r32);
        }

        public int size() {
            return this.size;
        }
    }

    public static class TypedVector extends Vector {
        private static final TypedVector EMPTY_VECTOR = new TypedVector(FlexBuffers.EMPTY_BB, 1, 1, 1);
        private final int elemType;

        public TypedVector(ReadBuf readBuf, int r22, int r32, int r42) {
            super(readBuf, r22, r32);
            this.elemType = r42;
        }

        public static TypedVector empty() {
            return EMPTY_VECTOR;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Vector
        public Reference get(int r82) {
            if (r82 >= size()) {
                return Reference.NULL_REFERENCE;
            }
            return new Reference(this.f976bb, (r82 * this.byteWidth) + this.end, this.byteWidth, 1, this.elemType);
        }

        public int getElemType() {
            return this.elemType;
        }

        public boolean isEmptyVector() {
            return this == EMPTY_VECTOR;
        }
    }

    public static class Unsigned {
        public static int byteToUnsignedInt(byte b10) {
            return b10 & 255;
        }

        public static long intToUnsignedLong(int r42) {
            return r42 & BodyPartID.bodyIdMax;
        }

        public static int shortToUnsignedInt(short s7) {
            return s7 & HPKE.aead_EXPORT_ONLY;
        }
    }

    public static class Vector extends Sized {
        private static final Vector EMPTY_VECTOR = new Vector(FlexBuffers.EMPTY_BB, 1, 1);

        public Vector(ReadBuf readBuf, int r22, int r32) {
            super(readBuf, r22, r32);
        }

        public static Vector empty() {
            return EMPTY_VECTOR;
        }

        public Reference get(int r10) {
            long size = size();
            long j10 = r10;
            if (j10 >= size) {
                return Reference.NULL_REFERENCE;
            }
            return new Reference(this.f976bb, (r10 * this.byteWidth) + this.end, this.byteWidth, Unsigned.byteToUnsignedInt(this.f976bb.get((int) v.b(size, this.byteWidth, this.end, j10))));
        }

        public boolean isEmpty() {
            return this == EMPTY_VECTOR;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Sized
        public /* bridge */ /* synthetic */ int size() {
            return super.size();
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public /* bridge */ /* synthetic */ String toString() {
            return super.toString();
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder toString(StringBuilder sb2) {
            sb2.append("[ ");
            int size = size();
            for (int r12 = 0; r12 < size; r12++) {
                get(r12).toString(sb2);
                if (r12 != size - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append(" ]");
            return sb2;
        }
    }

    public static Reference getRoot(ReadBuf readBuf) {
        int r02 = readBuf.limit() - 1;
        byte b10 = readBuf.get(r02);
        int r03 = r02 - 1;
        return new Reference(readBuf, r03 - b10, b10, Unsigned.byteToUnsignedInt(readBuf.get(r03)));
    }

    @Deprecated
    public static Reference getRoot(ByteBuffer byteBuffer) {
        return getRoot(byteBuffer.hasArray() ? new ArrayReadWriteBuf(byteBuffer.array(), byteBuffer.limit()) : new ByteBufferReadWriteBuf(byteBuffer));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int indirect(ReadBuf readBuf, int r32, int r42) {
        return (int) (r32 - readUInt(readBuf, r32, r42));
    }

    public static boolean isTypeInline(int r12) {
        return r12 <= 3 || r12 == 26;
    }

    public static boolean isTypedVector(int r12) {
        return (r12 >= 11 && r12 <= 15) || r12 == 36;
    }

    public static boolean isTypedVectorElementType(int r22) {
        return (r22 >= 1 && r22 <= 4) || r22 == 26;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double readDouble(ReadBuf readBuf, int r22, int r32) {
        if (r32 == 4) {
            return readBuf.getFloat(r22);
        }
        if (r32 != 8) {
            return -1.0d;
        }
        return readBuf.getDouble(r22);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int readInt(ReadBuf readBuf, int r12, int r22) {
        return (int) readLong(readBuf, r12, r22);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long readLong(ReadBuf readBuf, int r22, int r32) {
        int r12;
        if (r32 == 1) {
            r12 = readBuf.get(r22);
        } else if (r32 == 2) {
            r12 = readBuf.getShort(r22);
        } else {
            if (r32 != 4) {
                if (r32 != 8) {
                    return -1L;
                }
                return readBuf.getLong(r22);
            }
            r12 = readBuf.getInt(r22);
        }
        return r12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long readUInt(ReadBuf readBuf, int r22, int r32) {
        if (r32 == 1) {
            return Unsigned.byteToUnsignedInt(readBuf.get(r22));
        }
        if (r32 == 2) {
            return Unsigned.shortToUnsignedInt(readBuf.getShort(r22));
        }
        if (r32 == 4) {
            return Unsigned.intToUnsignedLong(readBuf.getInt(r22));
        }
        if (r32 != 8) {
            return -1L;
        }
        return readBuf.getLong(r22);
    }

    public static int toTypedVector(int r12, int r22) {
        if (r22 == 0) {
            return (r12 - 1) + 11;
        }
        if (r22 == 2) {
            return (r12 - 1) + 16;
        }
        if (r22 == 3) {
            return (r12 - 1) + 19;
        }
        if (r22 != 4) {
            return 0;
        }
        return (r12 - 1) + 22;
    }

    public static int toTypedVectorElementType(int r02) {
        return (r02 - 11) + 1;
    }
}
