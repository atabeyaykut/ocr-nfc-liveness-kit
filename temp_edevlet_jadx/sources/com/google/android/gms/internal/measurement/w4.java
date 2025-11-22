package com.google.android.gms.internal.measurement;

import android.util.Log;

/* loaded from: classes.dex */
public final class w4 extends b5<Boolean> {
    public w4(z4 z4Var, String str, Boolean bool) {
        super(z4Var, str, bool);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.b5
    public final Boolean a(Object obj) {
        if (j4.f3567b.matcher(obj).matches()) {
            return Boolean.TRUE;
        }
        if (j4.f3568c.matcher(obj).matches()) {
            return Boolean.FALSE;
        }
        this.f3388a.getClass();
        String str = this.f3389b;
        String str2 = (String) obj;
        StringBuilder sb2 = new StringBuilder(str2.length() + String.valueOf(str).length() + 28);
        sb2.append("Invalid boolean value for ");
        sb2.append(str);
        sb2.append(": ");
        sb2.append(str2);
        Log.e("PhenotypeFlag", sb2.toString());
        return null;
    }
}
