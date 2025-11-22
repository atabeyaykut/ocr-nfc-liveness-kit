package com.google.android.gms.internal.clearcut;

import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import java.io.IOException;

/* loaded from: classes.dex */
public final class j extends e {

    /* renamed from: k, reason: collision with root package name */
    public final Object f3161k;

    /* renamed from: l, reason: collision with root package name */
    public String f3162l;

    /* renamed from: m, reason: collision with root package name */
    public a4 f3163m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ l f3164n = a6.a.f115g;

    public j(m mVar, String str, a4 a4Var) {
        super(mVar, str, a4Var);
        this.f3161k = new Object();
    }

    @Override // com.google.android.gms.internal.clearcut.e
    public final Object b(SharedPreferences sharedPreferences) {
        String str = this.f3091b;
        try {
            return d(sharedPreferences.getString(str, ""));
        } catch (ClassCastException e10) {
            String strValueOf = String.valueOf(str);
            Log.e("PhenotypeFlag", strValueOf.length() != 0 ? "Invalid byte[] value in SharedPreferences for ".concat(strValueOf) : new String("Invalid byte[] value in SharedPreferences for "), e10);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.e
    public final Object d(String str) {
        a4 a4Var;
        try {
            synchronized (this.f3161k) {
                if (!str.equals(this.f3162l)) {
                    l lVar = this.f3164n;
                    byte[] bArrDecode = Base64.decode(str, 3);
                    ((a6.a) lVar).getClass();
                    a4 a4VarL = a4.l(bArrDecode);
                    this.f3162l = str;
                    this.f3163m = a4VarL;
                }
                a4Var = this.f3163m;
            }
            return a4Var;
        } catch (IOException | IllegalArgumentException unused) {
            String str2 = this.f3091b;
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + String.valueOf(str2).length() + 27);
            sb2.append("Invalid byte[] value for ");
            sb2.append(str2);
            sb2.append(": ");
            sb2.append(str);
            Log.e("PhenotypeFlag", sb2.toString());
            return null;
        }
    }
}
