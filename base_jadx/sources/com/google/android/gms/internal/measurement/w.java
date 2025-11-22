package com.google.android.gms.internal.measurement;

import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class w {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3809a = new ArrayList();

    public abstract p a(String str, s3 s3Var, ArrayList arrayList);

    public final void b(String str) {
        if (!this.f3809a.contains(c5.w.Y(str))) {
            throw new IllegalArgumentException("Command not supported");
        }
        String strValueOf = String.valueOf(str);
        throw new UnsupportedOperationException(strValueOf.length() != 0 ? "Command not implemented: ".concat(strValueOf) : new String("Command not implemented: "));
    }
}
