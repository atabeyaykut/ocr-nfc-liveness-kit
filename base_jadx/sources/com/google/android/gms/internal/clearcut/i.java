package com.google.android.gms.internal.clearcut;

import android.content.SharedPreferences;
import android.util.Log;

/* loaded from: classes.dex */
public final class i extends e<String> {
    public i(m mVar, String str) {
        super(mVar, str, null);
    }

    @Override // com.google.android.gms.internal.clearcut.e
    public final String b(SharedPreferences sharedPreferences) {
        String str = this.f3091b;
        try {
            return sharedPreferences.getString(str, null);
        } catch (ClassCastException e10) {
            String strValueOf = String.valueOf(str);
            Log.e("PhenotypeFlag", strValueOf.length() != 0 ? "Invalid string value in SharedPreferences for ".concat(strValueOf) : new String("Invalid string value in SharedPreferences for "), e10);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.e
    public final /* synthetic */ String d(String str) {
        return str;
    }
}
