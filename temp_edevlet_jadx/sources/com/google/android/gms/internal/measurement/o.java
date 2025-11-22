package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class o extends j {

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f3653c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f3654d;

    /* renamed from: e, reason: collision with root package name */
    public final s3 f3655e;

    public o(o oVar) {
        super(oVar.f3561a);
        ArrayList arrayList = new ArrayList(oVar.f3653c.size());
        this.f3653c = arrayList;
        arrayList.addAll(oVar.f3653c);
        ArrayList arrayList2 = new ArrayList(oVar.f3654d.size());
        this.f3654d = arrayList2;
        arrayList2.addAll(oVar.f3654d);
        this.f3655e = oVar.f3655e;
    }

    public o(String str, ArrayList arrayList, List list, s3 s3Var) {
        super(str);
        this.f3653c = new ArrayList();
        this.f3655e = s3Var;
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.f3653c.add(((p) it.next()).h());
            }
        }
        this.f3654d = new ArrayList(list);
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final p a(s3 s3Var, List<p> list) {
        u uVar;
        s3 s3VarA = this.f3655e.a();
        int r12 = 0;
        while (true) {
            ArrayList arrayList = this.f3653c;
            int size = arrayList.size();
            uVar = p.f3668i;
            if (r12 >= size) {
                break;
            }
            int size2 = list.size();
            String str = (String) arrayList.get(r12);
            if (r12 < size2) {
                s3VarA.e(str, s3Var.b(list.get(r12)));
            } else {
                s3VarA.e(str, uVar);
            }
            r12++;
        }
        Iterator it = this.f3654d.iterator();
        while (it.hasNext()) {
            p pVar = (p) it.next();
            p pVarB = s3VarA.b(pVar);
            if (pVarB instanceof q) {
                pVarB = s3VarA.b(pVar);
            }
            if (pVarB instanceof h) {
                return ((h) pVarB).f3490a;
            }
        }
        return uVar;
    }

    @Override // com.google.android.gms.internal.measurement.j, com.google.android.gms.internal.measurement.p
    public final p d() {
        return new o(this);
    }
}
