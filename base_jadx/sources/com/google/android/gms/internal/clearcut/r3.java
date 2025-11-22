package com.google.android.gms.internal.clearcut;

import java.io.Serializable;

/* loaded from: classes.dex */
public enum r3 {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(x.f3341b),
    ENUM(null),
    MESSAGE(null);


    /* renamed from: a, reason: collision with root package name */
    public final Object f3306a;

    r3(Serializable serializable) {
        this.f3306a = serializable;
    }
}
