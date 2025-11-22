package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.util.Log;
import b4.e;
import c4.a;
import c4.b;
import c4.d;
import com.google.android.gms.common.util.DynamiteApi;
import l4.c;

@DynamiteApi
/* loaded from: classes.dex */
public class FlagProviderImpl extends e {

    /* renamed from: a, reason: collision with root package name */
    public boolean f3019a = false;

    /* renamed from: b, reason: collision with root package name */
    public SharedPreferences f3020b;

    @Override // b4.d
    public boolean getBooleanFlagValue(String str, boolean z10, int r42) {
        if (!this.f3019a) {
            return z10;
        }
        SharedPreferences sharedPreferences = this.f3020b;
        Boolean boolValueOf = Boolean.valueOf(z10);
        try {
            boolValueOf = (Boolean) c.a(new a(sharedPreferences, str, boolValueOf));
        } catch (Exception e10) {
            String strValueOf = String.valueOf(e10.getMessage());
            Log.w("FlagDataUtils", strValueOf.length() != 0 ? "Flag value not available, returning default: ".concat(strValueOf) : new String("Flag value not available, returning default: "));
        }
        return boolValueOf.booleanValue();
    }

    @Override // b4.d
    public int getIntFlagValue(String str, int r32, int r42) {
        if (!this.f3019a) {
            return r32;
        }
        SharedPreferences sharedPreferences = this.f3020b;
        Integer numValueOf = Integer.valueOf(r32);
        try {
            numValueOf = (Integer) c.a(new b(sharedPreferences, str, numValueOf));
        } catch (Exception e10) {
            String strValueOf = String.valueOf(e10.getMessage());
            Log.w("FlagDataUtils", strValueOf.length() != 0 ? "Flag value not available, returning default: ".concat(strValueOf) : new String("Flag value not available, returning default: "));
        }
        return numValueOf.intValue();
    }

    @Override // b4.d
    public long getLongFlagValue(String str, long j10, int r42) {
        if (!this.f3019a) {
            return j10;
        }
        SharedPreferences sharedPreferences = this.f3020b;
        Long lValueOf = Long.valueOf(j10);
        try {
            lValueOf = (Long) c.a(new c4.c(sharedPreferences, str, lValueOf));
        } catch (Exception e10) {
            String strValueOf = String.valueOf(e10.getMessage());
            Log.w("FlagDataUtils", strValueOf.length() != 0 ? "Flag value not available, returning default: ".concat(strValueOf) : new String("Flag value not available, returning default: "));
        }
        return lValueOf.longValue();
    }

    @Override // b4.d
    public String getStringFlagValue(String str, String str2, int r42) {
        if (!this.f3019a) {
            return str2;
        }
        try {
            return (String) c.a(new d(this.f3020b, str, str2));
        } catch (Exception e10) {
            String strValueOf = String.valueOf(e10.getMessage());
            Log.w("FlagDataUtils", strValueOf.length() != 0 ? "Flag value not available, returning default: ".concat(strValueOf) : new String("Flag value not available, returning default: "));
            return str2;
        }
    }

    @Override // b4.d
    public void init(z3.b bVar) {
        Context context = (Context) z3.d.y0(bVar);
        if (this.f3019a) {
            return;
        }
        try {
            this.f3020b = c4.e.a(context.createPackageContext("com.google.android.gms", 0));
            this.f3019a = true;
        } catch (PackageManager.NameNotFoundException unused) {
        } catch (Exception e10) {
            String strValueOf = String.valueOf(e10.getMessage());
            Log.w("FlagProviderImpl", strValueOf.length() != 0 ? "Could not retrieve sdk flags, continuing with defaults: ".concat(strValueOf) : new String("Could not retrieve sdk flags, continuing with defaults: "));
        }
    }
}
