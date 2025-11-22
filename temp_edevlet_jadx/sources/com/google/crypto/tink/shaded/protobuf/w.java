package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.x;

/* loaded from: classes2.dex */
public final class w implements p0 {

    /* renamed from: a, reason: collision with root package name */
    public static final w f4391a = new w();

    @Override // com.google.crypto.tink.shaded.protobuf.p0
    public final o0 a(Class<?> cls) {
        if (!x.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (o0) x.m(cls.asSubclass(x.class)).l(x.f.BUILD_MESSAGE_INFO);
        } catch (Exception e10) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e10);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.p0
    public final boolean b(Class<?> cls) {
        return x.class.isAssignableFrom(cls);
    }
}
