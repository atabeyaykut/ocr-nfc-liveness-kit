package com.google.android.gms.internal.vision;

import java.io.Serializable;

/* loaded from: classes.dex */
public enum f4 {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(p0.f4044b),
    ENUM(null),
    MESSAGE(null);


    /* renamed from: a, reason: collision with root package name */
    public final Object f3963a;

    f4(Serializable serializable) {
        this.f3963a = serializable;
    }
}
