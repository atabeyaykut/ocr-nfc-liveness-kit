package com.google.android.gms.internal.measurement;

import java.io.Serializable;

/* loaded from: classes.dex */
public enum c9 {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(v5.f3791b),
    ENUM(null),
    MESSAGE(null);


    /* renamed from: a, reason: collision with root package name */
    public final Object f3425a;

    c9(Serializable serializable) {
        this.f3425a = serializable;
    }
}
