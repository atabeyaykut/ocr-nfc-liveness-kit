package com.google.android.gms.internal.clearcut;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements k, com.google.android.gms.internal.measurement.d0 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3113a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f3114b;

    public /* synthetic */ f(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.b1 b1Var) {
        this.f3114b = appMeasurementDynamiteService;
        this.f3113a = b1Var;
    }

    public /* synthetic */ f(Object obj, Object obj2) {
        this.f3113a = obj;
        this.f3114b = obj2;
    }

    @Override // com.google.android.gms.internal.measurement.d0
    public final com.google.android.gms.internal.measurement.s3 b(com.google.android.gms.internal.measurement.p pVar) {
        com.google.android.gms.internal.measurement.s3 s3VarA = ((com.google.android.gms.internal.measurement.s3) this.f3113a).a();
        String str = (String) this.f3114b;
        s3VarA.e(str, pVar);
        ((Map) s3VarA.f3735d).put(str, Boolean.TRUE);
        return s3VarA;
    }

    @Override // com.google.android.gms.internal.clearcut.k
    public final Object g() {
        e eVar = (e) this.f3113a;
        b bVar = (b) this.f3114b;
        bVar.getClass();
        Map mapB = e.g() ? ((Boolean) e.c(new g("gms:phenotype:phenotype_flag:debug_disable_caching"))).booleanValue() : false ? bVar.b() : bVar.f3029e;
        if (mapB == null) {
            synchronized (bVar.f3028d) {
                HashMap map = bVar.f3029e;
                mapB = map;
                if (map == null) {
                    HashMap mapB2 = bVar.b();
                    bVar.f3029e = mapB2;
                    mapB = mapB2;
                }
            }
        }
        if (mapB == null) {
            mapB = Collections.emptyMap();
        }
        return (String) mapB.get(eVar.f3091b);
    }
}
