package com.google.android.gms.internal.measurement;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class f0 extends w {
    @Override // com.google.android.gms.internal.measurement.w
    public final p a(String str, s3 s3Var, ArrayList arrayList) {
        if (str == null || str.isEmpty() || !s3Var.g(str)) {
            throw new IllegalArgumentException(String.format("Command not found: %s", str));
        }
        p pVarD = s3Var.d(str);
        if (pVarD instanceof j) {
            return ((j) pVarD).a(s3Var, arrayList);
        }
        throw new IllegalArgumentException(String.format("Function %s is not defined", str));
    }
}
