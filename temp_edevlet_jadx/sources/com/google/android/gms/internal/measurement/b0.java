package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes.dex */
public final class b0 implements Comparator<p> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j f3382a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s3 f3383b;

    public b0(j jVar, s3 s3Var) {
        this.f3382a = jVar;
        this.f3383b = s3Var;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(p pVar, p pVar2) {
        p pVar3 = pVar;
        p pVar4 = pVar2;
        if (pVar3 instanceof u) {
            return !(pVar4 instanceof u) ? 1 : 0;
        }
        if (pVar4 instanceof u) {
            return -1;
        }
        j jVar = this.f3382a;
        return jVar == null ? pVar3.h().compareTo(pVar4.h()) : (int) c5.w.I(jVar.a(this.f3383b, Arrays.asList(pVar3, pVar4)).i().doubleValue());
    }
}
