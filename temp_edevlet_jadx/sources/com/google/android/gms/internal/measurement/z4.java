package com.google.android.gms.internal.measurement;

import android.net.Uri;

/* loaded from: classes.dex */
public final class z4 {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f3856a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f3857b;

    public z4(Uri uri, boolean z10) {
        this.f3856a = uri;
        this.f3857b = z10;
    }

    public final v4 a(long j10, String str) {
        return new v4(this, str, Long.valueOf(j10));
    }

    public final y4 b(String str, String str2) {
        return new y4(this, str, str2);
    }

    public final w4 c(String str, boolean z10) {
        return new w4(this, str, Boolean.valueOf(z10));
    }
}
