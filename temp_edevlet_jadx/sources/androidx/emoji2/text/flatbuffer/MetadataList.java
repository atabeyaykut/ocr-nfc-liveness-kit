package androidx.emoji2.text.flatbuffer;

import androidx.emoji2.text.flatbuffer.MetadataItem;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class MetadataList extends Table {

    public static final class Vector extends BaseVector {
        public Vector __assign(int r12, int r22, ByteBuffer byteBuffer) {
            __reset(r12, r22, byteBuffer);
            return this;
        }

        public MetadataList get(int r22) {
            return get(new MetadataList(), r22);
        }

        public MetadataList get(MetadataList metadataList, int r32) {
            return metadataList.__assign(Table.__indirect(__element(r32), this.f974bb), this.f974bb);
        }
    }

    public static void ValidateVersion() {
        Constants.FLATBUFFERS_1_12_0();
    }

    public static void addList(FlatBufferBuilder flatBufferBuilder, int r32) {
        flatBufferBuilder.addOffset(1, r32, 0);
    }

    public static void addSourceSha(FlatBufferBuilder flatBufferBuilder, int r32) {
        flatBufferBuilder.addOffset(2, r32, 0);
    }

    public static void addVersion(FlatBufferBuilder flatBufferBuilder, int r22) {
        flatBufferBuilder.addInt(0, r22, 0);
    }

    public static int createListVector(FlatBufferBuilder flatBufferBuilder, int[] r32) {
        flatBufferBuilder.startVector(4, r32.length, 4);
        for (int length = r32.length - 1; length >= 0; length--) {
            flatBufferBuilder.addOffset(r32[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static int createMetadataList(FlatBufferBuilder flatBufferBuilder, int r22, int r32, int r42) {
        flatBufferBuilder.startTable(3);
        addSourceSha(flatBufferBuilder, r42);
        addList(flatBufferBuilder, r32);
        addVersion(flatBufferBuilder, r22);
        return endMetadataList(flatBufferBuilder);
    }

    public static int endMetadataList(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endTable();
    }

    public static void finishMetadataListBuffer(FlatBufferBuilder flatBufferBuilder, int r12) {
        flatBufferBuilder.finish(r12);
    }

    public static void finishSizePrefixedMetadataListBuffer(FlatBufferBuilder flatBufferBuilder, int r12) {
        flatBufferBuilder.finishSizePrefixed(r12);
    }

    public static MetadataList getRootAsMetadataList(ByteBuffer byteBuffer) {
        return getRootAsMetadataList(byteBuffer, new MetadataList());
    }

    public static MetadataList getRootAsMetadataList(ByteBuffer byteBuffer, MetadataList metadataList) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return metadataList.__assign(byteBuffer.position() + byteBuffer.getInt(byteBuffer.position()), byteBuffer);
    }

    public static void startListVector(FlatBufferBuilder flatBufferBuilder, int r22) {
        flatBufferBuilder.startVector(4, r22, 4);
    }

    public static void startMetadataList(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startTable(3);
    }

    public MetadataList __assign(int r12, ByteBuffer byteBuffer) {
        __init(r12, byteBuffer);
        return this;
    }

    public void __init(int r12, ByteBuffer byteBuffer) {
        __reset(r12, byteBuffer);
    }

    public MetadataItem list(int r22) {
        return list(new MetadataItem(), r22);
    }

    public MetadataItem list(MetadataItem metadataItem, int r32) {
        int r02 = __offset(6);
        if (r02 == 0) {
            return null;
        }
        return metadataItem.__assign(__indirect((r32 * 4) + __vector(r02)), this.f980bb);
    }

    public int listLength() {
        int r02 = __offset(6);
        if (r02 != 0) {
            return __vector_len(r02);
        }
        return 0;
    }

    public MetadataItem.Vector listVector() {
        return listVector(new MetadataItem.Vector());
    }

    public MetadataItem.Vector listVector(MetadataItem.Vector vector) {
        int r02 = __offset(6);
        if (r02 != 0) {
            return vector.__assign(__vector(r02), 4, this.f980bb);
        }
        return null;
    }

    public String sourceSha() {
        int r02 = __offset(8);
        if (r02 != 0) {
            return __string(r02 + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer sourceShaAsByteBuffer() {
        return __vector_as_bytebuffer(8, 1);
    }

    public ByteBuffer sourceShaInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 8, 1);
    }

    public int version() {
        int r02 = __offset(4);
        if (r02 != 0) {
            return this.f980bb.getInt(r02 + this.bb_pos);
        }
        return 0;
    }
}
