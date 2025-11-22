package com.google.android.gms.internal.vision;

import java.io.Serializable;

/* loaded from: classes.dex */
public enum s1 {
    VOID(Void.class, null),
    INT(Integer.class, 0),
    LONG(Long.class, 0L),
    FLOAT(Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.class, Boolean.FALSE),
    STRING(String.class, ""),
    BYTE_STRING(p0.class, p0.f4044b),
    ENUM(Integer.class, null),
    MESSAGE(Object.class, null);


    /* renamed from: a, reason: collision with root package name */
    public final Object f4082a;

    s1(Class cls, Serializable serializable) {
        this.f4082a = serializable;
    }
}
