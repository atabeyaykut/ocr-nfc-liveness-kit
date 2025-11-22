package vc;

import java.io.IOException;
import rc.e0;
import rc.r;
import vc.m;
import yc.w;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public m.a f18489a;

    /* renamed from: b, reason: collision with root package name */
    public m f18490b;

    /* renamed from: c, reason: collision with root package name */
    public int f18491c;

    /* renamed from: d, reason: collision with root package name */
    public int f18492d;

    /* renamed from: e, reason: collision with root package name */
    public int f18493e;
    public e0 f;

    /* renamed from: g, reason: collision with root package name */
    public final k f18494g;

    /* renamed from: h, reason: collision with root package name */
    public final rc.a f18495h;

    /* renamed from: i, reason: collision with root package name */
    public final e f18496i;

    /* renamed from: j, reason: collision with root package name */
    public final rc.n f18497j;

    public d(k connectionPool, rc.a aVar, e eVar, rc.n eventListener) {
        kotlin.jvm.internal.h.f(connectionPool, "connectionPool");
        kotlin.jvm.internal.h.f(eventListener, "eventListener");
        this.f18494g = connectionPool;
        this.f18495h = aVar;
        this.f18496i = eVar;
        this.f18497j = eventListener;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0140  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final vc.i a(int r14, int r15, int r16, boolean r17, boolean r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: vc.d.a(int, int, int, boolean, boolean):vc.i");
    }

    public final boolean b(r url) {
        kotlin.jvm.internal.h.f(url, "url");
        r rVar = this.f18495h.f14373a;
        return url.f == rVar.f && kotlin.jvm.internal.h.a(url.f14520e, rVar.f14520e);
    }

    public final void c(IOException e10) {
        kotlin.jvm.internal.h.f(e10, "e");
        this.f = null;
        if (e10 instanceof w) {
            if (((w) e10).f19651a == yc.b.REFUSED_STREAM) {
                this.f18491c++;
                return;
            }
        }
        if (e10 instanceof yc.a) {
            this.f18492d++;
        } else {
            this.f18493e++;
        }
    }
}
