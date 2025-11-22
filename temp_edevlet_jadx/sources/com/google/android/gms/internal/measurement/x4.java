package com.google.android.gms.internal.measurement;

import android.util.Log;

/* loaded from: classes.dex */
public final class x4 extends b5<Double> {
    public x4(z4 z4Var, Double d10) {
        super(z4Var, "measurement.test.double_flag", d10);
    }

    @Override // com.google.android.gms.internal.measurement.b5
    public final Double a(Object obj) {
        try {
            return Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException unused) {
            this.f3388a.getClass();
            String str = this.f3389b;
            String str2 = (String) obj;
            StringBuilder sb2 = new StringBuilder(str2.length() + String.valueOf(str).length() + 27);
            sb2.append("Invalid double value for ");
            sb2.append(str);
            sb2.append(": ");
            sb2.append(str2);
            Log.e("PhenotypeFlag", sb2.toString());
            return null;
        }
    }
}
