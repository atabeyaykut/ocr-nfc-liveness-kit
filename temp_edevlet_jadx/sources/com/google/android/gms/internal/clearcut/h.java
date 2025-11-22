package com.google.android.gms.internal.clearcut;

import android.content.SharedPreferences;
import android.util.Log;

/* loaded from: classes.dex */
public final class h extends e<Boolean> {
    public h(m mVar, Boolean bool) {
        super(mVar, "enable_log_sampling_rules", bool);
    }

    @Override // com.google.android.gms.internal.clearcut.e
    public final Boolean b(SharedPreferences sharedPreferences) {
        String str = this.f3091b;
        try {
            return Boolean.valueOf(sharedPreferences.getBoolean(str, false));
        } catch (ClassCastException e10) {
            String strValueOf = String.valueOf(str);
            Log.e("PhenotypeFlag", strValueOf.length() != 0 ? "Invalid boolean value in SharedPreferences for ".concat(strValueOf) : new String("Invalid boolean value in SharedPreferences for "), e10);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.e
    public final /* synthetic */ Boolean d(String str) {
        if (p4.f3257c.matcher(str).matches()) {
            return Boolean.TRUE;
        }
        if (p4.f3258d.matcher(str).matches()) {
            return Boolean.FALSE;
        }
        String str2 = this.f3091b;
        StringBuilder sb2 = new StringBuilder(str.length() + String.valueOf(str2).length() + 28);
        sb2.append("Invalid boolean value for ");
        sb2.append(str2);
        sb2.append(": ");
        sb2.append(str);
        Log.e("PhenotypeFlag", sb2.toString());
        return null;
    }
}
