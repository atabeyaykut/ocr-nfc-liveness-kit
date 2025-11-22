package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class pc extends j {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3686c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f3687d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ s6 f3688e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pc(s6 s6Var, boolean z10, boolean z11) {
        super("log");
        this.f3688e = s6Var;
        this.f3686c = z10;
        this.f3687d = z11;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final p a(s3 s3Var, List<p> list) {
        c5.w.c0("log", 1, list);
        int size = list.size();
        u uVar = p.f3668i;
        s6 s6Var = this.f3688e;
        if (size == 1) {
            ((c5.b4) s6Var.f3738d).g(3, s3Var.b(list.get(0)).h(), Collections.emptyList(), this.f3686c, this.f3687d);
            return uVar;
        }
        int r02 = c5.w.Q(s3Var.b(list.get(0)).i().doubleValue());
        int r82 = r02 != 2 ? r02 != 3 ? r02 != 5 ? r02 != 6 ? 3 : 2 : 5 : 1 : 4;
        String strH = s3Var.b(list.get(1)).h();
        if (list.size() == 2) {
            ((c5.b4) s6Var.f3738d).g(r82, strH, Collections.emptyList(), this.f3686c, this.f3687d);
            return uVar;
        }
        ArrayList arrayList = new ArrayList();
        for (int r32 = 2; r32 < Math.min(list.size(), 5); r32++) {
            arrayList.add(s3Var.b(list.get(r32)).h());
        }
        ((c5.b4) s6Var.f3738d).g(r82, strH, arrayList, this.f3686c, this.f3687d);
        return uVar;
    }
}
