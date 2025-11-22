package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class MetadataItem extends Table {

    public static final class Vector extends BaseVector {
        public Vector __assign(int r12, int r22, ByteBuffer byteBuffer) {
            __reset(r12, r22, byteBuffer);
            return this;
        }

        public MetadataItem get(int r22) {
            return get(new MetadataItem(), r22);
        }

        public MetadataItem get(MetadataItem metadataItem, int r32) {
            return metadataItem.__assign(Table.__indirect(__element(r32), this.f974bb), this.f974bb);
        }
    }

    public static void ValidateVersion() {
        Constants.FLATBUFFERS_1_12_0();
    }

    public static void addCodepoints(FlatBufferBuilder flatBufferBuilder, int r32) {
        flatBufferBuilder.addOffset(6, r32, 0);
    }

    public static void addCompatAdded(FlatBufferBuilder flatBufferBuilder, short s7) {
        flatBufferBuilder.addShort(3, s7, 0);
    }

    public static void addEmojiStyle(FlatBufferBuilder flatBufferBuilder, boolean z10) {
        flatBufferBuilder.addBoolean(1, z10, false);
    }

    public static void addHeight(FlatBufferBuilder flatBufferBuilder, short s7) {
        flatBufferBuilder.addShort(5, s7, 0);
    }

    public static void addId(FlatBufferBuilder flatBufferBuilder, int r22) {
        flatBufferBuilder.addInt(0, r22, 0);
    }

    public static void addSdkAdded(FlatBufferBuilder flatBufferBuilder, short s7) {
        flatBufferBuilder.addShort(2, s7, 0);
    }

    public static void addWidth(FlatBufferBuilder flatBufferBuilder, short s7) {
        flatBufferBuilder.addShort(4, s7, 0);
    }

    public static int createCodepointsVector(FlatBufferBuilder flatBufferBuilder, int[] r32) {
        flatBufferBuilder.startVector(4, r32.length, 4);
        for (int length = r32.length - 1; length >= 0; length--) {
            flatBufferBuilder.addInt(r32[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static int createMetadataItem(FlatBufferBuilder flatBufferBuilder, int r22, boolean z10, short s7, short s10, short s11, short s12, int r82) {
        flatBufferBuilder.startTable(7);
        addCodepoints(flatBufferBuilder, r82);
        addId(flatBufferBuilder, r22);
        addHeight(flatBufferBuilder, s12);
        addWidth(flatBufferBuilder, s11);
        addCompatAdded(flatBufferBuilder, s10);
        addSdkAdded(flatBufferBuilder, s7);
        addEmojiStyle(flatBufferBuilder, z10);
        return endMetadataItem(flatBufferBuilder);
    }

    public static int endMetadataItem(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endTable();
    }

    public static MetadataItem getRootAsMetadataItem(ByteBuffer byteBuffer) {
        return getRootAsMetadataItem(byteBuffer, new MetadataItem());
    }

    public static MetadataItem getRootAsMetadataItem(ByteBuffer byteBuffer, MetadataItem metadataItem) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return metadataItem.__assign(byteBuffer.position() + byteBuffer.getInt(byteBuffer.position()), byteBuffer);
    }

    public static void startCodepointsVector(FlatBufferBuilder flatBufferBuilder, int r22) {
        flatBufferBuilder.startVector(4, r22, 4);
    }

    public static void startMetadataItem(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startTable(7);
    }

    public MetadataItem __assign(int r12, ByteBuffer byteBuffer) {
        __init(r12, byteBuffer);
        return this;
    }

    public void __init(int r12, ByteBuffer byteBuffer) {
        __reset(r12, byteBuffer);
    }

    public int codepoints(int r32) {
        int r02 = __offset(16);
        if (r02 == 0) {
            return 0;
        }
        return this.f980bb.getInt((r32 * 4) + __vector(r02));
    }

    public ByteBuffer codepointsAsByteBuffer() {
        return __vector_as_bytebuffer(16, 4);
    }

    public ByteBuffer codepointsInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 16, 4);
    }

    public int codepointsLength() {
        int r02 = __offset(16);
        if (r02 != 0) {
            return __vector_len(r02);
        }
        return 0;
    }

    public IntVector codepointsVector() {
        return codepointsVector(new IntVector());
    }

    public IntVector codepointsVector(IntVector intVector) {
        int r02 = __offset(16);
        if (r02 != 0) {
            return intVector.__assign(__vector(r02), this.f980bb);
        }
        return null;
    }

    public short compatAdded() {
        int r02 = __offset(10);
        if (r02 != 0) {
            return this.f980bb.getShort(r02 + this.bb_pos);
        }
        return (short) 0;
    }

    public boolean emojiStyle() {
        int r02 = __offset(6);
        return (r02 == 0 || this.f980bb.get(r02 + this.bb_pos) == 0) ? false : true;
    }

    public short height() {
        int r02 = __offset(14);
        if (r02 != 0) {
            return this.f980bb.getShort(r02 + this.bb_pos);
        }
        return (short) 0;
    }

    public int id() {
        int r02 = __offset(4);
        if (r02 != 0) {
            return this.f980bb.getInt(r02 + this.bb_pos);
        }
        return 0;
    }

    public short sdkAdded() {
        int r02 = __offset(8);
        if (r02 != 0) {
            return this.f980bb.getShort(r02 + this.bb_pos);
        }
        return (short) 0;
    }

    public short width() {
        int r02 = __offset(12);
        if (r02 != 0) {
            return this.f980bb.getShort(r02 + this.bb_pos);
        }
        return (short) 0;
    }
}
