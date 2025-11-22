package u5;

import com.google.crypto.tink.shaded.protobuf.z;

/* loaded from: classes2.dex */
public enum a0 implements z.a {
    UNKNOWN_HASH(0),
    SHA1(1),
    SHA384(2),
    SHA256(3),
    SHA512(4),
    UNRECOGNIZED(-1);


    /* renamed from: a, reason: collision with root package name */
    public final int f17881a;

    a0(int r32) {
        this.f17881a = r32;
    }

    public static a0 n(int r12) {
        if (r12 == 0) {
            return UNKNOWN_HASH;
        }
        if (r12 == 1) {
            return SHA1;
        }
        if (r12 == 2) {
            return SHA384;
        }
        if (r12 == 3) {
            return SHA256;
        }
        if (r12 != 4) {
            return null;
        }
        return SHA512;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.z.a
    public final int f() {
        if (this != UNRECOGNIZED) {
            return this.f17881a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
