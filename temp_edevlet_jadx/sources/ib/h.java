package ib;

import gb.u;
import java.util.List;
import m9.v;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: b, reason: collision with root package name */
    public static final h f7354b = new h(v.f10173a);

    /* renamed from: a, reason: collision with root package name */
    public final List<u> f7355a;

    public static final class a {
        public static h a(gb.v vVar) {
            if (vVar.f6605b.size() == 0) {
                return h.f7354b;
            }
            List<u> list = vVar.f6605b;
            kotlin.jvm.internal.h.e(list, "table.requirementList");
            return new h(list);
        }
    }

    public h(List<u> list) {
        this.f7355a = list;
    }
}
