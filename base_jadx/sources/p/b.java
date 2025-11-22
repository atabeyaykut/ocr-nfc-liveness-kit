package p;

import android.graphics.Bitmap;
import androidx.lifecycle.Lifecycle;
import nc.y;
import t.c;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final Lifecycle f12098a;

    /* renamed from: b, reason: collision with root package name */
    public final q.f f12099b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12100c;

    /* renamed from: d, reason: collision with root package name */
    public final y f12101d;

    /* renamed from: e, reason: collision with root package name */
    public final y f12102e;
    public final y f;

    /* renamed from: g, reason: collision with root package name */
    public final y f12103g;

    /* renamed from: h, reason: collision with root package name */
    public final c.a f12104h;

    /* renamed from: i, reason: collision with root package name */
    public final int f12105i;

    /* renamed from: j, reason: collision with root package name */
    public final Bitmap.Config f12106j;

    /* renamed from: k, reason: collision with root package name */
    public final Boolean f12107k;

    /* renamed from: l, reason: collision with root package name */
    public final Boolean f12108l;

    /* renamed from: m, reason: collision with root package name */
    public final int f12109m;

    /* renamed from: n, reason: collision with root package name */
    public final int f12110n;

    /* renamed from: o, reason: collision with root package name */
    public final int f12111o;

    public b(Lifecycle lifecycle, q.f fVar, int r32, y yVar, y yVar2, y yVar3, y yVar4, c.a aVar, int r92, Bitmap.Config config, Boolean bool, Boolean bool2, int r13, int r14, int r15) {
        this.f12098a = lifecycle;
        this.f12099b = fVar;
        this.f12100c = r32;
        this.f12101d = yVar;
        this.f12102e = yVar2;
        this.f = yVar3;
        this.f12103g = yVar4;
        this.f12104h = aVar;
        this.f12105i = r92;
        this.f12106j = config;
        this.f12107k = bool;
        this.f12108l = bool2;
        this.f12109m = r13;
        this.f12110n = r14;
        this.f12111o = r15;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (kotlin.jvm.internal.h.a(this.f12098a, bVar.f12098a) && kotlin.jvm.internal.h.a(this.f12099b, bVar.f12099b) && this.f12100c == bVar.f12100c && kotlin.jvm.internal.h.a(this.f12101d, bVar.f12101d) && kotlin.jvm.internal.h.a(this.f12102e, bVar.f12102e) && kotlin.jvm.internal.h.a(this.f, bVar.f) && kotlin.jvm.internal.h.a(this.f12103g, bVar.f12103g) && kotlin.jvm.internal.h.a(this.f12104h, bVar.f12104h) && this.f12105i == bVar.f12105i && this.f12106j == bVar.f12106j && kotlin.jvm.internal.h.a(this.f12107k, bVar.f12107k) && kotlin.jvm.internal.h.a(this.f12108l, bVar.f12108l) && this.f12109m == bVar.f12109m && this.f12110n == bVar.f12110n && this.f12111o == bVar.f12111o) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Lifecycle lifecycle = this.f12098a;
        int r12 = (lifecycle == null ? 0 : lifecycle.hashCode()) * 31;
        q.f fVar = this.f12099b;
        int r13 = (r12 + (fVar == null ? 0 : fVar.hashCode())) * 31;
        int r22 = this.f12100c;
        int r14 = (r13 + (r22 == 0 ? 0 : g.d.c(r22))) * 31;
        y yVar = this.f12101d;
        int r15 = (r14 + (yVar == null ? 0 : yVar.hashCode())) * 31;
        y yVar2 = this.f12102e;
        int r16 = (r15 + (yVar2 == null ? 0 : yVar2.hashCode())) * 31;
        y yVar3 = this.f;
        int r17 = (r16 + (yVar3 == null ? 0 : yVar3.hashCode())) * 31;
        y yVar4 = this.f12103g;
        int r18 = (r17 + (yVar4 == null ? 0 : yVar4.hashCode())) * 31;
        c.a aVar = this.f12104h;
        int r19 = (r18 + (aVar == null ? 0 : aVar.hashCode())) * 31;
        int r23 = this.f12105i;
        int r110 = (r19 + (r23 == 0 ? 0 : g.d.c(r23))) * 31;
        Bitmap.Config config = this.f12106j;
        int r111 = (r110 + (config == null ? 0 : config.hashCode())) * 31;
        Boolean bool = this.f12107k;
        int r112 = (r111 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.f12108l;
        int r113 = (r112 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        int r24 = this.f12109m;
        int r114 = (r113 + (r24 == 0 ? 0 : g.d.c(r24))) * 31;
        int r25 = this.f12110n;
        int r115 = (r114 + (r25 == 0 ? 0 : g.d.c(r25))) * 31;
        int r26 = this.f12111o;
        return r115 + (r26 != 0 ? g.d.c(r26) : 0);
    }
}
