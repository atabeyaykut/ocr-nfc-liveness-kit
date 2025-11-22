package com.google.android.gms.internal.clearcut;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import java.util.HashMap;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements k {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f3134a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3135b;

    public /* synthetic */ g(String str) {
        this.f3135b = str;
        this.f3134a = false;
    }

    public /* synthetic */ g(boolean z10, String str) {
        this.f3134a = z10;
        this.f3135b = str;
    }

    @Override // com.google.android.gms.internal.clearcut.k
    public final Object g() {
        Object obj;
        boolean zBooleanValue;
        ContentResolver contentResolver = e.f3087h.getContentResolver();
        Uri uri = p4.f3255a;
        synchronized (p4.class) {
            p4.c(contentResolver);
            obj = p4.f3264k;
        }
        HashMap<String, Boolean> map = p4.f3260g;
        boolean z10 = this.f3134a;
        Boolean boolValueOf = Boolean.valueOf(z10);
        String str = this.f3135b;
        Boolean bool = (Boolean) p4.a(map, str, boolValueOf);
        if (bool != null) {
            zBooleanValue = bool.booleanValue();
        } else {
            String strB = p4.b(contentResolver, str);
            if (strB != null && !strB.equals("")) {
                if (p4.f3257c.matcher(strB).matches()) {
                    bool = Boolean.TRUE;
                    z10 = true;
                } else if (p4.f3258d.matcher(strB).matches()) {
                    bool = Boolean.FALSE;
                    z10 = false;
                } else {
                    Log.w("Gservices", "attempt to read gservices key " + str + " (value \"" + strB + "\") as boolean");
                }
            }
            p4.e(obj, map, str, bool);
            zBooleanValue = z10;
        }
        return Boolean.valueOf(zBooleanValue);
    }
}
