package com.google.android.gms.internal.measurement;

import android.util.Log;

/* loaded from: classes.dex */
public final class v4 extends b5<Long> {
    public v4(z4 z4Var, String str, Long l5) {
        super(z4Var, str, l5);
    }

    @Override // com.google.android.gms.internal.measurement.b5
    public final Long a(Object obj) {
        try {
            return Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException unused) {
            this.f3388a.getClass();
            String str = this.f3389b;
            String str2 = (String) obj;
            StringBuilder sb2 = new StringBuilder(str2.length() + String.valueOf(str).length() + 25);
            sb2.append("Invalid long value for ");
            sb2.append(str);
            sb2.append(": ");
            sb2.append(str2);
            Log.e("PhenotypeFlag", sb2.toString());
            return null;
        }
    }
}
