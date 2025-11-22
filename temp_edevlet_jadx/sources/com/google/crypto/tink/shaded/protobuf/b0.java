package com.google.crypto.tink.shaded.protobuf;

import java.io.Serializable;

/* loaded from: classes2.dex */
public enum b0 {
    VOID(Void.class, null),
    INT(Integer.class, 0),
    LONG(Long.class, 0L),
    FLOAT(Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.class, Boolean.FALSE),
    STRING(String.class, ""),
    BYTE_STRING(i.class, i.f4287b),
    ENUM(Integer.class, null),
    MESSAGE(Object.class, null);


    /* renamed from: a, reason: collision with root package name */
    public final Object f4237a;

    b0(Class cls, Serializable serializable) {
        this.f4237a = serializable;
    }
}
