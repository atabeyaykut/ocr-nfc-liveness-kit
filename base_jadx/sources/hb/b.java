package hb;

import gb.a;
import gb.c;
import gb.f;
import gb.k;
import gb.m;
import gb.p;
import gb.r;
import gb.t;
import java.util.List;
import mb.h;
import mb.w;
import net.sf.scuba.smartcards.ISO7816;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final h.e<k, Integer> f7065a = h.h(k.f6362l, 0, null, ISO7816.TAG_SM_EXPECTED_LENGTH, w.f10340c, Integer.class);

    /* renamed from: b, reason: collision with root package name */
    public static final h.e<gb.b, List<gb.a>> f7066b;

    /* renamed from: c, reason: collision with root package name */
    public static final h.e<c, List<gb.a>> f7067c;

    /* renamed from: d, reason: collision with root package name */
    public static final h.e<gb.h, List<gb.a>> f7068d;

    /* renamed from: e, reason: collision with root package name */
    public static final h.e<m, List<gb.a>> f7069e;
    public static final h.e<m, List<gb.a>> f;

    /* renamed from: g, reason: collision with root package name */
    public static final h.e<m, List<gb.a>> f7070g;

    /* renamed from: h, reason: collision with root package name */
    public static final h.e<m, a.b.c> f7071h;

    /* renamed from: i, reason: collision with root package name */
    public static final h.e<f, List<gb.a>> f7072i;

    /* renamed from: j, reason: collision with root package name */
    public static final h.e<t, List<gb.a>> f7073j;

    /* renamed from: k, reason: collision with root package name */
    public static final h.e<p, List<gb.a>> f7074k;

    /* renamed from: l, reason: collision with root package name */
    public static final h.e<r, List<gb.a>> f7075l;

    static {
        gb.b bVar = gb.b.N;
        gb.a aVar = gb.a.f6147g;
        w.c cVar = w.f;
        f7066b = h.a(bVar, aVar, 150, cVar, gb.a.class);
        f7067c = h.a(c.f6252j, aVar, 150, cVar, gb.a.class);
        f7068d = h.a(gb.h.f6325x, aVar, 150, cVar, gb.a.class);
        m mVar = m.f6390x;
        f7069e = h.a(mVar, aVar, 150, cVar, gb.a.class);
        f = h.a(mVar, aVar, 152, cVar, gb.a.class);
        f7070g = h.a(mVar, aVar, ISO7816.TAG_SM_STATUS_WORD, cVar, gb.a.class);
        a.b.c cVar2 = a.b.c.f6164r;
        f7071h = h.h(mVar, cVar2, cVar2, ISO7816.TAG_SM_EXPECTED_LENGTH, cVar, a.b.c.class);
        f7072i = h.a(f.f6293g, aVar, 150, cVar, gb.a.class);
        f7073j = h.a(t.f6559m, aVar, 150, cVar, gb.a.class);
        f7074k = h.a(p.w, aVar, 150, cVar, gb.a.class);
        f7075l = h.a(r.f6526n, aVar, 150, cVar, gb.a.class);
    }

    public static void a(mb.f fVar) {
        fVar.a(f7065a);
        fVar.a(f7066b);
        fVar.a(f7067c);
        fVar.a(f7068d);
        fVar.a(f7069e);
        fVar.a(f);
        fVar.a(f7070g);
        fVar.a(f7071h);
        fVar.a(f7072i);
        fVar.a(f7073j);
        fVar.a(f7074k);
        fVar.a(f7075l);
    }
}
