package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class qc extends j {

    /* renamed from: c, reason: collision with root package name */
    public final Callable<Object> f3701c;

    public qc(c5.z3 z3Var) {
        super("internal.appMetadata");
        this.f3701c = z3Var;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final p a(s3 s3Var, List<p> list) {
        try {
            return b8.f.G0(this.f3701c.call());
        } catch (Exception unused) {
            return p.f3668i;
        }
    }
}
