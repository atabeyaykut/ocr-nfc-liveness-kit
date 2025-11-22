package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.m;

/* loaded from: classes.dex */
public final class z implements n1 {

    /* renamed from: a, reason: collision with root package name */
    public static final z f4125a = new z();

    @Override // com.google.android.gms.internal.vision.n1
    public final boolean f(int r32) {
        return (r32 != 0 ? r32 != 1 ? r32 != 2 ? r32 != 3 ? null : m.a.FORMAT_MONOCHROME : m.a.FORMAT_RGB8 : m.a.FORMAT_LUMINANCE : m.a.FORMAT_UNKNOWN) != null;
    }
}
