package u5;

import com.google.crypto.tink.shaded.protobuf.z;

/* loaded from: classes2.dex */
public enum f0 implements z.a {
    UNKNOWN_STATUS(0),
    ENABLED(1),
    DISABLED(2),
    DESTROYED(3),
    UNRECOGNIZED(-1);


    /* renamed from: a, reason: collision with root package name */
    public final int f17894a;

    f0(int r32) {
        this.f17894a = r32;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.z.a
    public final int f() {
        if (this != UNRECOGNIZED) {
            return this.f17894a;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
