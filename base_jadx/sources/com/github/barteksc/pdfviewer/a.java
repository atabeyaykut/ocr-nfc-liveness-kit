package com.github.barteksc.pdfviewer;

import android.graphics.RectF;
import android.util.Pair;
import c5.w;
import h2.b;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final PDFView f2908a;

    /* renamed from: b, reason: collision with root package name */
    public int f2909b;

    /* renamed from: c, reason: collision with root package name */
    public float f2910c;

    /* renamed from: d, reason: collision with root package name */
    public float f2911d;

    /* renamed from: e, reason: collision with root package name */
    public Pair<Integer, Integer> f2912e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f2913g;

    /* renamed from: h, reason: collision with root package name */
    public float f2914h;

    /* renamed from: i, reason: collision with root package name */
    public float f2915i;

    /* renamed from: j, reason: collision with root package name */
    public float f2916j;

    /* renamed from: k, reason: collision with root package name */
    public float f2917k;

    /* renamed from: l, reason: collision with root package name */
    public float f2918l;

    /* renamed from: m, reason: collision with root package name */
    public float f2919m;

    /* renamed from: n, reason: collision with root package name */
    public int f2920n;

    /* renamed from: o, reason: collision with root package name */
    public int f2921o;

    /* renamed from: p, reason: collision with root package name */
    public float f2922p;

    /* renamed from: q, reason: collision with root package name */
    public final RectF f2923q = new RectF(0.0f, 0.0f, 1.0f, 1.0f);

    /* renamed from: com.github.barteksc.pdfviewer.a$a, reason: collision with other inner class name */
    public class C0059a {

        /* renamed from: a, reason: collision with root package name */
        public int f2924a;

        /* renamed from: b, reason: collision with root package name */
        public int f2925b;

        /* renamed from: c, reason: collision with root package name */
        public int f2926c;
    }

    public a(PDFView pDFView) {
        this.f2908a = pDFView;
    }

    public final int a(int r42) {
        int r12;
        PDFView pDFView = this.f2908a;
        if (pDFView.getOriginalUserPages() == null) {
            r12 = r42;
        } else {
            if (r42 < 0 || r42 >= pDFView.getOriginalUserPages().length) {
                return -1;
            }
            r12 = pDFView.getOriginalUserPages()[r42];
        }
        if (r12 < 0 || r42 >= pDFView.getDocumentPageCount()) {
            return -1;
        }
        return r12;
    }

    public final C0059a b(float f, boolean z10) {
        float fAbs;
        float fAbs2;
        int r52;
        C0059a c0059a = new C0059a();
        if (f > 0.0f) {
            f = 0.0f;
        }
        float f10 = -f;
        if (this.f2908a.F) {
            int r12 = w.p(f10 / (this.f2910c + this.f2922p));
            c0059a.f2924a = r12;
            fAbs2 = Math.abs(f10 - ((this.f2910c + this.f2922p) * r12)) / this.f2914h;
            fAbs = this.f / this.f2915i;
        } else {
            int r13 = w.p(f10 / (this.f2911d + this.f2922p));
            c0059a.f2924a = r13;
            fAbs = Math.abs(f10 - ((this.f2911d + this.f2922p) * r13)) / this.f2915i;
            fAbs2 = this.f2913g / this.f2914h;
        }
        if (z10) {
            c0059a.f2925b = w.d(fAbs2);
            r52 = w.d(fAbs);
        } else {
            c0059a.f2925b = w.p(fAbs2);
            r52 = w.p(fAbs);
        }
        c0059a.f2926c = r52;
        return c0059a;
    }

    public final boolean c(int r20, int r21, int r22, int r23, float f, float f10) {
        k2.a aVar;
        k2.a next;
        boolean z10;
        float f11 = r23 * f;
        float f12 = r22 * f10;
        float f13 = this.f2918l;
        float f14 = this.f2919m;
        float f15 = f11 + f > 1.0f ? 1.0f - f11 : f;
        float f16 = f12 + f10 > 1.0f ? 1.0f - f12 : f10;
        float f17 = f13 * f15;
        float f18 = f14 * f16;
        RectF rectF = new RectF(f11, f12, f15 + f11, f16 + f12);
        if (f17 <= 0.0f || f18 <= 0.0f) {
            return false;
        }
        b bVar = this.f2908a.f2883e;
        int r42 = this.f2909b;
        bVar.getClass();
        k2.a aVar2 = new k2.a(r20, r21, null, rectF, false, 0);
        synchronized (bVar.f6797d) {
            try {
                Iterator<k2.a> it = bVar.f6794a.iterator();
                while (true) {
                    aVar = null;
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (next.equals(aVar2)) {
                        break;
                    }
                }
                if (next != null) {
                    bVar.f6794a.remove(next);
                    next.f = r42;
                    bVar.f6795b.offer(next);
                    z10 = true;
                } else {
                    Iterator<k2.a> it2 = bVar.f6795b.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        k2.a next2 = it2.next();
                        if (next2.equals(aVar2)) {
                            aVar = next2;
                            break;
                        }
                    }
                    z10 = aVar != null;
                }
            } finally {
            }
        }
        if (!z10) {
            PDFView pDFView = this.f2908a;
            pDFView.A.a(r20, r21, f17, f18, rectF, false, this.f2909b, pDFView.I);
        }
        this.f2909b++;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a A[PHI: r1 r11
      0x002a: PHI (r1v3 float) = (r1v2 float), (r1v25 float) binds: [B:8:0x0023, B:5:0x0013] A[DONT_GENERATE, DONT_INLINE]
      0x002a: PHI (r11v3 float) = (r11v2 float), (r11v10 float) binds: [B:8:0x0023, B:5:0x0013] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int d(int r11, int r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.barteksc.pdfviewer.a.d(int, int, boolean):int");
    }

    public final void e(int r11, int r12) {
        boolean z10;
        b bVar = this.f2908a.f2883e;
        RectF rectF = this.f2923q;
        bVar.getClass();
        k2.a aVar = new k2.a(r11, r12, null, rectF, true, 0);
        synchronized (bVar.f6796c) {
            Iterator it = bVar.f6796c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z10 = false;
                    break;
                } else if (((k2.a) it.next()).equals(aVar)) {
                    z10 = true;
                    break;
                }
            }
        }
        if (z10) {
            return;
        }
        PDFView pDFView = this.f2908a;
        pDFView.A.a(r11, r12, this.f2920n, this.f2921o, this.f2923q, true, 0, pDFView.I);
    }
}
