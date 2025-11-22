package com.google.android.gms.vision.clearcut;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.vision.d;
import com.google.android.gms.internal.vision.h4;
import com.google.android.gms.internal.vision.i;
import com.google.android.gms.internal.vision.l;
import com.google.android.gms.internal.vision.m;
import com.google.android.gms.internal.vision.q;
import com.google.android.gms.internal.vision.r;
import i5.a;
import java.util.ArrayList;
import java.util.List;
import y3.c;

@Keep
/* loaded from: classes.dex */
public class LogUtils {
    public static d zza(Context context) {
        d.a aVarP = d.p();
        String packageName = context.getPackageName();
        if (aVarP.f3994c) {
            aVarP.h();
            aVarP.f3994c = false;
        }
        d.o((d) aVarP.f3993b, packageName);
        String strZzb = zzb(context);
        if (strZzb != null) {
            if (aVarP.f3994c) {
                aVarP.h();
                aVarP.f3994c = false;
            }
            d.s((d) aVarP.f3993b, strZzb);
        }
        return (d) aVarP.k();
    }

    @Nullable
    private static String zzb(Context context) {
        try {
            return c.a(context).b(0, context.getPackageName()).versionName;
        } catch (PackageManager.NameNotFoundException e10) {
            a.a(e10, "Unable to find calling package info for %s", context.getPackageName());
            return null;
        }
    }

    public static r zza(long j10, int r52, @Nullable String str, String str2, @Nullable List<q> list, h4 h4Var) {
        l.a aVarQ = l.q();
        i.b bVarS = i.s();
        if (bVarS.f3994c) {
            bVarS.h();
            bVarS.f3994c = false;
        }
        i.q((i) bVarS.f3993b, str2);
        if (bVarS.f3994c) {
            bVarS.h();
            bVarS.f3994c = false;
        }
        i.o((i) bVarS.f3993b, j10);
        long j11 = r52;
        if (bVarS.f3994c) {
            bVarS.h();
            bVarS.f3994c = false;
        }
        i.u((i) bVarS.f3993b, j11);
        if (bVarS.f3994c) {
            bVarS.h();
            bVarS.f3994c = false;
        }
        i.p((i) bVarS.f3993b, list);
        ArrayList arrayList = new ArrayList();
        arrayList.add((i) bVarS.k());
        if (aVarQ.f3994c) {
            aVarQ.h();
            aVarQ.f3994c = false;
        }
        l.p((l) aVarQ.f3993b, arrayList);
        m.b bVarP = m.p();
        long j12 = h4Var.f3981b;
        if (bVarP.f3994c) {
            bVarP.h();
            bVarP.f3994c = false;
        }
        m.s((m) bVarP.f3993b, j12);
        long j13 = h4Var.f3980a;
        if (bVarP.f3994c) {
            bVarP.h();
            bVarP.f3994c = false;
        }
        m.o((m) bVarP.f3993b, j13);
        long j14 = h4Var.f3982c;
        if (bVarP.f3994c) {
            bVarP.h();
            bVarP.f3994c = false;
        }
        m.t((m) bVarP.f3993b, j14);
        if (bVarP.f3994c) {
            bVarP.h();
            bVarP.f3994c = false;
        }
        m.u((m) bVarP.f3993b, h4Var.f3983d);
        m mVar = (m) bVarP.k();
        if (aVarQ.f3994c) {
            aVarQ.h();
            aVarQ.f3994c = false;
        }
        l.o((l) aVarQ.f3993b, mVar);
        l lVar = (l) aVarQ.k();
        r.a aVarP = r.p();
        if (aVarP.f3994c) {
            aVarP.h();
            aVarP.f3994c = false;
        }
        r.o((r) aVarP.f3993b, lVar);
        return (r) aVarP.k();
    }
}
