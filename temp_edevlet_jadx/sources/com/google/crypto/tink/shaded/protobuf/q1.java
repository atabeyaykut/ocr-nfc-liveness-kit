package com.google.crypto.tink.shaded.protobuf;

import java.io.Serializable;

/* loaded from: classes2.dex */
public enum q1 {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(""),
    BYTE_STRING(i.f4287b),
    ENUM(null),
    MESSAGE(null);


    /* renamed from: a, reason: collision with root package name */
    public final Object f4355a;

    q1(Serializable serializable) {
        this.f4355a = serializable;
    }
}
