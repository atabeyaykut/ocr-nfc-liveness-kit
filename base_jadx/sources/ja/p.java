package ja;

import androidx.exifinterface.media.ExifInterface;
import bc.c;
import cc.t1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import ma.a0;
import ma.p;
import ma.u;
import pa.h0;
import pa.t0;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public static final h0 f8396a;

    static {
        ec.i iVar = ec.i.f5277a;
        pa.r rVar = new pa.r(ec.i.f5278b, o.f8359e);
        lb.f fVarF = o.f.f();
        c.a aVar = bc.c.f1191e;
        h0 h0Var = new h0(rVar, fVarF, aVar);
        h0Var.f12907k = a0.ABSTRACT;
        p.h hVar = ma.p.f10225e;
        if (hVar == null) {
            h0.z0(9);
            throw null;
        }
        h0Var.f12908l = hVar;
        List listS = b8.f.S(t0.O0(h0Var, t1.IN_VARIANCE, lb.f.t(ExifInterface.GPS_DIRECTION_TRUE), 0, aVar));
        if (h0Var.f12910n != null) {
            throw new IllegalStateException("Type parameters are already set for " + h0Var.getName());
        }
        ArrayList arrayList = new ArrayList(listS);
        h0Var.f12910n = arrayList;
        h0Var.f12909m = new cc.m(h0Var, arrayList, h0Var.f12911p, h0Var.f12912q);
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet == null) {
            h0.z0(13);
            throw null;
        }
        Iterator it = setEmptySet.iterator();
        while (it.hasNext()) {
            ((pa.l) ((u) it.next())).S0(h0Var.q());
        }
        f8396a = h0Var;
    }
}
