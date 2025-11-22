package u5;

import com.google.crypto.tink.shaded.protobuf.z;

/* loaded from: classes2.dex */
public enum o0 implements z.a {
    UNKNOWN_PREFIX(0),
    TINK(1),
    LEGACY(2),
    RAW(3),
    CRUNCHY(4),
    UNRECOGNIZED(-1);


    /* renamed from: a, reason: collision with root package name */
    public final int f17901a;

    o0(int r32) {
        this.f17901a = r32;
    }

    public static o0 n(int r12) {
        if (r12 == 0) {
            return UNKNOWN_PREFIX;
        }
        if (r12 == 1) {
            return TINK;
        }
        if (r12 == 2) {
            return LEGACY;
        }
        if (r12 == 3) {
            return RAW;
        }
        if (r12 != 4) {
            return null;
        }
        return CRUNCHY;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.z.a
    public final int f() {
        if (this != UNRECOGNIZED) {
            return this.f17901a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
