package ob;

import java.util.Comparator;
import ma.l0;
import ma.v0;

/* loaded from: classes2.dex */
public final class l implements Comparator<ma.j> {

    /* renamed from: a, reason: collision with root package name */
    public static final l f11286a = new l();

    public static int a(ma.j jVar) {
        if (i.m(jVar)) {
            return 8;
        }
        if (jVar instanceof ma.i) {
            return 7;
        }
        if (jVar instanceof l0) {
            return ((l0) jVar).h0() == null ? 6 : 5;
        }
        if (jVar instanceof ma.u) {
            return ((ma.u) jVar).h0() == null ? 4 : 3;
        }
        if (jVar instanceof ma.e) {
            return 2;
        }
        return jVar instanceof v0 ? 1 : 0;
    }

    @Override // java.util.Comparator
    public final int compare(ma.j jVar, ma.j jVar2) {
        Integer numValueOf;
        ma.j jVar3 = jVar;
        ma.j jVar4 = jVar2;
        int r02 = a(jVar4) - a(jVar3);
        if (r02 != 0) {
            numValueOf = Integer.valueOf(r02);
        } else if (i.m(jVar3) && i.m(jVar4)) {
            numValueOf = 0;
        } else {
            int r32 = jVar3.getName().f9676a.compareTo(jVar4.getName().f9676a);
            numValueOf = r32 != 0 ? Integer.valueOf(r32) : null;
        }
        if (numValueOf != null) {
            return numValueOf.intValue();
        }
        return 0;
    }
}
