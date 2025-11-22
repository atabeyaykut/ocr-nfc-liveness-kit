package org.bson.types;

import androidx.browser.browseractions.a;
import androidx.core.view.ViewCompat;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.security.SecureRandom;
import java.util.Date;
import java.util.concurrent.atomic.AtomicInteger;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public final class ObjectId implements Comparable<ObjectId>, Serializable {

    /* renamed from: e, reason: collision with root package name */
    public static final int f12072e;
    public static final short f;

    /* renamed from: g, reason: collision with root package name */
    public static final AtomicInteger f12073g = new AtomicInteger(new SecureRandom().nextInt());

    /* renamed from: h, reason: collision with root package name */
    public static final char[] f12074h = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: a, reason: collision with root package name */
    public final int f12075a;

    /* renamed from: b, reason: collision with root package name */
    public final int f12076b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12077c;

    /* renamed from: d, reason: collision with root package name */
    public final short f12078d;

    static {
        try {
            SecureRandom secureRandom = new SecureRandom();
            f12072e = secureRandom.nextInt(16777216);
            f = (short) secureRandom.nextInt(32768);
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public ObjectId() {
        this(new Date());
    }

    public ObjectId(int r22, int r32) {
        this(r22, r32, true);
    }

    public ObjectId(int r42, int r52, int r6) {
        this(new byte[]{(byte) (r42 >> 24), (byte) (r42 >> 16), (byte) (r42 >> 8), (byte) r42, (byte) (r52 >> 24), (byte) (r52 >> 16), (byte) (r52 >> 8), (byte) r52, (byte) (r6 >> 24), (byte) (r6 >> 16), (byte) (r6 >> 8), (byte) r6});
    }

    @Deprecated
    public ObjectId(int r72, int r82, short s7, int r10) {
        this(r72, r82, s7, r10, true);
    }

    private ObjectId(int r32, int r42, short s7, int r6, boolean z10) {
        if ((r42 & ViewCompat.MEASURED_STATE_MASK) != 0) {
            throw new IllegalArgumentException("The machine identifier must be between 0 and 16777215 (it must fit in three bytes).");
        }
        if (z10 && (r6 & ViewCompat.MEASURED_STATE_MASK) != 0) {
            throw new IllegalArgumentException("The counter must be between 0 and 16777215 (it must fit in three bytes).");
        }
        this.f12075a = r32;
        this.f12076b = 16777215 & r6;
        this.f12077c = r42;
        this.f12078d = s7;
    }

    private ObjectId(int r72, int r82, boolean z10) {
        this(r72, f12072e, f, r82, z10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ObjectId(String str) {
        boolean z10;
        if (str == null) {
            throw new IllegalArgumentException();
        }
        int length = str.length();
        if (length != 24) {
            z10 = false;
            break;
        }
        for (int r12 = 0; r12 < length; r12++) {
            char cCharAt = str.charAt(r12);
            if ((cCharAt < '0' || cCharAt > '9') && ((cCharAt < 'a' || cCharAt > 'f') && (cCharAt < 'A' || cCharAt > 'F'))) {
                z10 = false;
                break;
            }
        }
        z10 = true;
        if (!z10) {
            throw new IllegalArgumentException(a.a("invalid hexadecimal representation of an ObjectId: [", str, "]"));
        }
        byte[] bArr = new byte[12];
        for (int r22 = 0; r22 < 12; r22++) {
            int r32 = r22 * 2;
            bArr[r22] = (byte) Integer.parseInt(str.substring(r32, r32 + 2), 16);
        }
        this(bArr);
    }

    @Override // java.lang.Comparable
    public final int compareTo(ObjectId objectId) {
        ObjectId objectId2 = objectId;
        objectId2.getClass();
        byte[] bArrN = n();
        byte[] bArrN2 = objectId2.n();
        for (int r22 = 0; r22 < 12; r22++) {
            byte b10 = bArrN[r22];
            byte b11 = bArrN2[r22];
            if (b10 != b11) {
                return (b10 & 255) < (b11 & 255) ? -1 : 1;
            }
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ObjectId.class != obj.getClass()) {
            return false;
        }
        ObjectId objectId = (ObjectId) obj;
        return this.f12076b == objectId.f12076b && this.f12075a == objectId.f12075a && this.f12077c == objectId.f12077c && this.f12078d == objectId.f12078d;
    }

    public final int hashCode() {
        return (((((this.f12075a * 31) + this.f12076b) * 31) + this.f12077c) * 31) + this.f12078d;
    }

    public final byte[] n() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(12);
        a6.a.u(byteBufferAllocate, "buffer");
        if (!(byteBufferAllocate.remaining() >= 12)) {
            throw new IllegalArgumentException("state should be: buffer.remaining() >=12");
        }
        int r02 = this.f12075a;
        byteBufferAllocate.put((byte) (r02 >> 24));
        byteBufferAllocate.put((byte) (r02 >> 16));
        byteBufferAllocate.put((byte) (r02 >> 8));
        byteBufferAllocate.put((byte) r02);
        int r03 = this.f12077c;
        byteBufferAllocate.put((byte) (r03 >> 16));
        byteBufferAllocate.put((byte) (r03 >> 8));
        byteBufferAllocate.put((byte) r03);
        short s7 = this.f12078d;
        byteBufferAllocate.put((byte) (s7 >> 8));
        byteBufferAllocate.put((byte) s7);
        int r04 = this.f12076b;
        byteBufferAllocate.put((byte) (r04 >> 16));
        byteBufferAllocate.put((byte) (r04 >> 8));
        byteBufferAllocate.put((byte) r04);
        return byteBufferAllocate.array();
    }

    public final String toString() {
        char[] cArr = new char[24];
        int r42 = 0;
        for (byte b10 : n()) {
            int r6 = r42 + 1;
            char[] cArr2 = f12074h;
            cArr[r42] = cArr2[(b10 >> 4) & 15];
            r42 = r6 + 1;
            cArr[r6] = cArr2[b10 & PassportService.SFI_DG15];
        }
        return new String(cArr);
    }

    public ObjectId(ByteBuffer byteBuffer) {
        a6.a.u(byteBuffer, "buffer");
        if (!(byteBuffer.remaining() >= 12)) {
            throw new IllegalArgumentException("state should be: buffer.remaining() >=12");
        }
        this.f12075a = (byteBuffer.get() << 24) | ((byteBuffer.get() & 255) << 16) | ((byteBuffer.get() & 255) << 8) | (byteBuffer.get() & 255);
        this.f12077c = ((byteBuffer.get() & 255) << 16) | 0 | ((byteBuffer.get() & 255) << 8) | (byteBuffer.get() & 255);
        this.f12078d = (short) (((byteBuffer.get() & 255) << 8) | (byteBuffer.get() & 255));
        this.f12076b = (byteBuffer.get() & 255) | ((byteBuffer.get() & 255) << 16) | 0 | ((byteBuffer.get() & 255) << 8);
    }

    public ObjectId(Date date) {
        this((int) (date.getTime() / 1000), f12073g.getAndIncrement() & ViewCompat.MEASURED_SIZE_MASK, false);
    }

    public ObjectId(Date date, int r6) {
        this((int) (date.getTime() / 1000), r6, true);
    }

    @Deprecated
    public ObjectId(Date date, int r6, short s7, int r82) {
        this((int) (date.getTime() / 1000), r6, s7, r82);
    }

    /* JADX WARN: 'thıs' call moved to the top of the method (can break code semantics) */
    public ObjectId(byte[] bArr) {
        this(ByteBuffer.wrap(bArr));
        a6.a.u(bArr, "bytes");
        if (!(bArr.length == 12)) {
            throw new IllegalArgumentException("state should be: bytes has length of 12");
        }
    }
}
