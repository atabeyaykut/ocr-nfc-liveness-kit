package com.github.barteksc.pdfviewer;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.HandlerThread;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.TypedValue;
import android.widget.RelativeLayout;
import c5.w;
import com.github.barteksc.pdfviewer.a;
import com.shockwave.pdfium.PdfDocument;
import com.shockwave.pdfium.PdfiumCore;
import h2.c;
import h2.d;
import h2.e;
import j2.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class PDFView extends RelativeLayout {
    public static final /* synthetic */ int O = 0;
    public e A;
    public com.github.barteksc.pdfviewer.a B;
    public final Paint C;
    public int D;
    public int E;
    public boolean F;
    public final PdfiumCore G;
    public PdfDocument H;
    public boolean I;
    public boolean K;
    public final PaintFlagsDrawFilter L;
    public int M;
    public final ArrayList N;

    /* renamed from: a, reason: collision with root package name */
    public float f2879a;

    /* renamed from: b, reason: collision with root package name */
    public float f2880b;

    /* renamed from: c, reason: collision with root package name */
    public float f2881c;

    /* renamed from: d, reason: collision with root package name */
    public b f2882d;

    /* renamed from: e, reason: collision with root package name */
    public final h2.b f2883e;
    public final h2.a f;

    /* renamed from: g, reason: collision with root package name */
    public final d f2884g;

    /* renamed from: h, reason: collision with root package name */
    public int[] f2885h;

    /* renamed from: j, reason: collision with root package name */
    public int[] f2886j;

    /* renamed from: k, reason: collision with root package name */
    public int[] f2887k;

    /* renamed from: l, reason: collision with root package name */
    public int f2888l;

    /* renamed from: m, reason: collision with root package name */
    public int f2889m;

    /* renamed from: n, reason: collision with root package name */
    public int f2890n;

    /* renamed from: p, reason: collision with root package name */
    public int f2891p;

    /* renamed from: q, reason: collision with root package name */
    public float f2892q;

    /* renamed from: r, reason: collision with root package name */
    public float f2893r;

    /* renamed from: s, reason: collision with root package name */
    public float f2894s;

    /* renamed from: t, reason: collision with root package name */
    public float f2895t;

    /* renamed from: v, reason: collision with root package name */
    public float f2896v;
    public boolean w;

    /* renamed from: x, reason: collision with root package name */
    public int f2897x;

    /* renamed from: y, reason: collision with root package name */
    public c f2898y;

    /* renamed from: z, reason: collision with root package name */
    public final HandlerThread f2899z;

    public class a {

        /* renamed from: a, reason: collision with root package name */
        public final m2.a f2900a;

        /* renamed from: b, reason: collision with root package name */
        public int f2901b = 0;

        /* renamed from: com.github.barteksc.pdfviewer.PDFView$a$a, reason: collision with other inner class name */
        public class RunnableC0058a implements Runnable {
            public RunnableC0058a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                a aVar = a.this;
                aVar.getClass();
                int r12 = PDFView.O;
                PDFView pDFView = PDFView.this;
                if (!pDFView.w) {
                    throw new IllegalStateException("Don't call load on a PDF View without recycling it first.");
                }
                int[] r22 = pDFView.f2885h;
                int r23 = r22 != null ? r22[0] : 0;
                pDFView.w = false;
                c cVar = new c(aVar.f2900a, pDFView, pDFView.G, r23);
                pDFView.f2898y = cVar;
                cVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        }

        public a(m2.a aVar) {
            this.f2900a = aVar;
        }

        public final void a() {
            PDFView pDFView = PDFView.this;
            pDFView.s();
            pDFView.setOnDrawListener(null);
            pDFView.setOnDrawAllListener(null);
            pDFView.setOnPageChangeListener(null);
            pDFView.setOnPageScrollListener(null);
            pDFView.setOnRenderListener(null);
            pDFView.setOnTapListener(null);
            pDFView.setOnPageErrorListener(null);
            d dVar = pDFView.f2884g;
            dVar.f6810e = true;
            dVar.f6808c.setOnDoubleTapListener(dVar);
            pDFView.setDefaultPage(0);
            pDFView.setSwipeVertical(true);
            pDFView.I = false;
            pDFView.setScrollHandle(null);
            pDFView.K = true;
            pDFView.setSpacing(this.f2901b);
            pDFView.setInvalidPageColor(-1);
            dVar.getClass();
            pDFView.post(new RunnableC0058a());
        }
    }

    public enum b {
        NONE,
        START,
        END
    }

    public PDFView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2879a = 1.0f;
        this.f2880b = 1.75f;
        this.f2881c = 3.0f;
        this.f2882d = b.NONE;
        this.f2894s = 0.0f;
        this.f2895t = 0.0f;
        this.f2896v = 1.0f;
        this.w = true;
        this.f2897x = 1;
        this.D = -1;
        this.E = 0;
        this.F = true;
        this.I = false;
        this.K = true;
        this.L = new PaintFlagsDrawFilter(0, 3);
        this.M = 0;
        this.N = new ArrayList(10);
        this.f2899z = new HandlerThread("PDF renderer");
        if (isInEditMode()) {
            return;
        }
        this.f2883e = new h2.b();
        h2.a aVar = new h2.a(this);
        this.f = aVar;
        this.f2884g = new d(this, aVar);
        this.C = new Paint();
        new Paint().setStyle(Paint.Style.STROKE);
        this.G = new PdfiumCore(context);
        setWillNotDraw(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDefaultPage(int r12) {
        this.E = r12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInvalidPageColor(int r12) {
        this.D = r12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnDrawAllListener(j2.a aVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnDrawListener(j2.a aVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnPageChangeListener(j2.b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnPageErrorListener(j2.c cVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnPageScrollListener(j2.d dVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnRenderListener(j2.e eVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnTapListener(f fVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScrollHandle(l2.a aVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSpacing(int r32) {
        this.M = (int) TypedValue.applyDimension(1, r32, getContext().getResources().getDisplayMetrics());
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int r42) {
        if (this.F) {
            if (r42 < 0 && this.f2894s < 0.0f) {
                return true;
            }
            if (r42 > 0) {
                return (this.f2892q * this.f2896v) + this.f2894s > ((float) getWidth());
            }
            return false;
        }
        if (r42 < 0 && this.f2894s < 0.0f) {
            return true;
        }
        if (r42 > 0) {
            return l() + this.f2894s > ((float) getWidth());
        }
        return false;
    }

    @Override // android.view.View
    public final boolean canScrollVertically(int r42) {
        if (this.F) {
            if (r42 < 0 && this.f2895t < 0.0f) {
                return true;
            }
            if (r42 > 0) {
                return l() + this.f2895t > ((float) getHeight());
            }
            return false;
        }
        if (r42 < 0 && this.f2895t < 0.0f) {
            return true;
        }
        if (r42 > 0) {
            return (this.f2893r * this.f2896v) + this.f2895t > ((float) getHeight());
        }
        return false;
    }

    @Override // android.view.View
    public final void computeScroll() {
        super.computeScroll();
        if (isInEditMode()) {
            return;
        }
        h2.a aVar = this.f;
        boolean zComputeScrollOffset = aVar.f6789c.computeScrollOffset();
        PDFView pDFView = aVar.f6787a;
        if (zComputeScrollOffset) {
            pDFView.r(r1.getCurrX(), r1.getCurrY());
            pDFView.p();
        } else if (aVar.f6790d) {
            aVar.f6790d = false;
            pDFView.q();
            pDFView.getScrollHandle();
        }
    }

    public int getCurrentPage() {
        return this.f2889m;
    }

    public float getCurrentXOffset() {
        return this.f2894s;
    }

    public float getCurrentYOffset() {
        return this.f2895t;
    }

    public PdfDocument.Meta getDocumentMeta() {
        PdfDocument pdfDocument = this.H;
        if (pdfDocument == null) {
            return null;
        }
        return this.G.b(pdfDocument);
    }

    public int getDocumentPageCount() {
        return this.f2888l;
    }

    public int[] getFilteredUserPageIndexes() {
        return this.f2887k;
    }

    public int[] getFilteredUserPages() {
        return this.f2886j;
    }

    public int getInvalidPageColor() {
        return this.D;
    }

    public float getMaxZoom() {
        return this.f2881c;
    }

    public float getMidZoom() {
        return this.f2880b;
    }

    public float getMinZoom() {
        return this.f2879a;
    }

    public j2.b getOnPageChangeListener() {
        return null;
    }

    public j2.d getOnPageScrollListener() {
        return null;
    }

    public j2.e getOnRenderListener() {
        return null;
    }

    public f getOnTapListener() {
        return null;
    }

    public float getOptimalPageHeight() {
        return this.f2893r;
    }

    public float getOptimalPageWidth() {
        return this.f2892q;
    }

    public int[] getOriginalUserPages() {
        return this.f2885h;
    }

    public int getPageCount() {
        int[] r02 = this.f2885h;
        return r02 != null ? r02.length : this.f2888l;
    }

    public float getPositionOffset() {
        float f;
        float fL;
        int width;
        if (this.F) {
            f = -this.f2895t;
            fL = l();
            width = getHeight();
        } else {
            f = -this.f2894s;
            fL = l();
            width = getWidth();
        }
        float f10 = f / (fL - width);
        if (f10 <= 0.0f) {
            return 0.0f;
        }
        if (f10 >= 1.0f) {
            return 1.0f;
        }
        return f10;
    }

    public b getScrollDir() {
        return this.f2882d;
    }

    public l2.a getScrollHandle() {
        return null;
    }

    public int getSpacingPx() {
        return this.M;
    }

    public List<PdfDocument.Bookmark> getTableOfContents() {
        PdfDocument pdfDocument = this.H;
        return pdfDocument == null ? new ArrayList() : this.G.f(pdfDocument);
    }

    public float getZoom() {
        return this.f2896v;
    }

    public final float l() {
        int pageCount = getPageCount();
        return this.F ? ((pageCount * this.f2893r) + ((pageCount - 1) * this.M)) * this.f2896v : ((pageCount * this.f2892q) + ((pageCount - 1) * this.M)) * this.f2896v;
    }

    public final void m() {
        if (this.f2897x == 1 || getWidth() == 0) {
            return;
        }
        float width = getWidth();
        float height = getHeight();
        float f = this.f2890n / this.f2891p;
        float fFloor = (float) Math.floor(width / f);
        if (fFloor > height) {
            width = (float) Math.floor(f * height);
        } else {
            height = fFloor;
        }
        this.f2892q = width;
        this.f2893r = height;
    }

    public final float n(int r32) {
        return this.F ? ((r32 * this.f2893r) + (r32 * this.M)) * this.f2896v : ((r32 * this.f2892q) + (r32 * this.M)) * this.f2896v;
    }

    public final void o(Canvas canvas, k2.a aVar) {
        float f;
        RectF rectF = aVar.f8695d;
        Bitmap bitmap = aVar.f8694c;
        if (bitmap.isRecycled()) {
            return;
        }
        boolean z10 = this.F;
        float fN = n(aVar.f8692a);
        if (z10) {
            f = fN;
            fN = 0.0f;
        } else {
            f = 0.0f;
        }
        canvas.translate(fN, f);
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        float f10 = rectF.left * this.f2892q;
        float f11 = this.f2896v;
        float f12 = f10 * f11;
        float f13 = rectF.top * this.f2893r * f11;
        RectF rectF2 = new RectF((int) f12, (int) f13, (int) (f12 + (rectF.width() * this.f2892q * this.f2896v)), (int) (f13 + (rectF.height() * this.f2893r * this.f2896v)));
        float f14 = this.f2894s + fN;
        float f15 = this.f2895t + f;
        if (rectF2.left + f14 < getWidth() && f14 + rectF2.right > 0.0f && rectF2.top + f15 < getHeight() && f15 + rectF2.bottom > 0.0f) {
            canvas.drawBitmap(bitmap, rect, rectF2, this.C);
        }
        canvas.translate(-fN, -f);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        s();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        ArrayList arrayList;
        if (isInEditMode()) {
            return;
        }
        if (this.K) {
            canvas.setDrawFilter(this.L);
        }
        Drawable background = getBackground();
        if (background == null) {
            canvas.drawColor(-1);
        } else {
            background.draw(canvas);
        }
        if (!this.w && this.f2897x == 3) {
            float f = this.f2894s;
            float f10 = this.f2895t;
            canvas.translate(f, f10);
            h2.b bVar = this.f2883e;
            synchronized (bVar.f6796c) {
                arrayList = bVar.f6796c;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                o(canvas, (k2.a) it.next());
            }
            Iterator it2 = this.f2883e.b().iterator();
            while (it2.hasNext()) {
                o(canvas, (k2.a) it2.next());
            }
            Iterator it3 = this.N.iterator();
            while (it3.hasNext()) {
                ((Integer) it3.next()).intValue();
            }
            this.N.clear();
            canvas.translate(-f, -f10);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int r12, int r22, int r32, int r42) {
        float f;
        float f10;
        if (isInEditMode() || this.f2897x != 3) {
            return;
        }
        this.f.b();
        m();
        if (this.F) {
            f = this.f2894s;
            f10 = -n(this.f2889m);
        } else {
            f = -n(this.f2889m);
            f10 = this.f2895t;
        }
        r(f, f10);
        p();
    }

    public final void p() {
        float f;
        float f10;
        int width;
        if (getPageCount() == 0) {
            return;
        }
        int r02 = this.M;
        float pageCount = r02 - (r02 / getPageCount());
        if (this.F) {
            f = this.f2895t;
            f10 = this.f2893r + pageCount;
            width = getHeight();
        } else {
            f = this.f2894s;
            f10 = this.f2892q + pageCount;
            width = getWidth();
        }
        int r03 = (int) Math.floor((Math.abs(f) + (width / 2.0f)) / (f10 * this.f2896v));
        if (r03 < 0 || r03 > getPageCount() - 1 || r03 == getCurrentPage()) {
            q();
        } else {
            t(r03);
        }
    }

    public final void q() {
        e eVar;
        a.C0059a c0059aB;
        int r52;
        int r82;
        int r53;
        if (this.f2892q == 0.0f || this.f2893r == 0.0f || (eVar = this.A) == null) {
            return;
        }
        eVar.removeMessages(1);
        h2.b bVar = this.f2883e;
        synchronized (bVar.f6797d) {
            bVar.f6794a.addAll(bVar.f6795b);
            bVar.f6795b.clear();
        }
        com.github.barteksc.pdfviewer.a aVar = this.B;
        PDFView pDFView = aVar.f2908a;
        aVar.f2910c = pDFView.getOptimalPageHeight() * pDFView.f2896v;
        aVar.f2911d = pDFView.getOptimalPageWidth() * pDFView.f2896v;
        aVar.f2920n = (int) (pDFView.getOptimalPageWidth() * 0.3f);
        aVar.f2921o = (int) (pDFView.getOptimalPageHeight() * 0.3f);
        aVar.f2912e = new Pair<>(Integer.valueOf(w.d(1.0f / (((1.0f / pDFView.getOptimalPageWidth()) * 256.0f) / pDFView.getZoom()))), Integer.valueOf(w.d(1.0f / (((1.0f / pDFView.getOptimalPageHeight()) * 256.0f) / pDFView.getZoom()))));
        float currentXOffset = pDFView.getCurrentXOffset();
        if (currentXOffset > 0.0f) {
            currentXOffset = 0.0f;
        }
        aVar.f = -currentXOffset;
        float currentYOffset = pDFView.getCurrentYOffset();
        aVar.f2913g = -(currentYOffset <= 0.0f ? currentYOffset : 0.0f);
        aVar.f2914h = aVar.f2910c / ((Integer) aVar.f2912e.second).intValue();
        aVar.f2915i = aVar.f2911d / ((Integer) aVar.f2912e.first).intValue();
        aVar.f2916j = 1.0f / ((Integer) aVar.f2912e.first).intValue();
        float fIntValue = 1.0f / ((Integer) aVar.f2912e.second).intValue();
        aVar.f2917k = fIntValue;
        aVar.f2918l = 256.0f / aVar.f2916j;
        aVar.f2919m = 256.0f / fIntValue;
        aVar.f2909b = 1;
        float spacingPx = pDFView.getSpacingPx() * pDFView.f2896v;
        aVar.f2922p = spacingPx;
        aVar.f2922p = spacingPx - (spacingPx / pDFView.getPageCount());
        if (pDFView.F) {
            c0059aB = aVar.b(pDFView.getCurrentYOffset(), false);
            a.C0059a c0059aB2 = aVar.b((pDFView.getCurrentYOffset() - pDFView.getHeight()) + 1.0f, true);
            if (c0059aB.f2924a == c0059aB2.f2924a) {
                r53 = (c0059aB2.f2925b - c0059aB.f2925b) + 1;
            } else {
                int r72 = (((Integer) aVar.f2912e.second).intValue() - c0059aB.f2925b) + 0;
                for (int r83 = c0059aB.f2924a + 1; r83 < c0059aB2.f2924a; r83++) {
                    r72 += ((Integer) aVar.f2912e.second).intValue();
                }
                r53 = c0059aB2.f2925b + 1 + r72;
            }
            r82 = 0;
            for (int r73 = 0; r73 < r53 && r82 < 120; r73++) {
                r82 += aVar.d(r73, 120 - r82, false);
            }
        } else {
            c0059aB = aVar.b(pDFView.getCurrentXOffset(), false);
            a.C0059a c0059aB3 = aVar.b((pDFView.getCurrentXOffset() - pDFView.getWidth()) + 1.0f, true);
            if (c0059aB.f2924a == c0059aB3.f2924a) {
                r52 = (c0059aB3.f2926c - c0059aB.f2926c) + 1;
            } else {
                int r74 = (((Integer) aVar.f2912e.first).intValue() - c0059aB.f2926c) + 0;
                for (int r84 = c0059aB.f2924a + 1; r84 < c0059aB3.f2924a; r84++) {
                    r74 += ((Integer) aVar.f2912e.first).intValue();
                }
                r52 = c0059aB3.f2926c + 1 + r74;
            }
            r82 = 0;
            for (int r75 = 0; r75 < r52 && r82 < 120; r75++) {
                r82 += aVar.d(r75, 120 - r82, false);
            }
        }
        int r54 = aVar.a(c0059aB.f2924a - 1);
        if (r54 >= 0) {
            aVar.e(c0059aB.f2924a - 1, r54);
        }
        int r55 = aVar.a(c0059aB.f2924a + 1);
        if (r55 >= 0) {
            aVar.e(c0059aB.f2924a + 1, r55);
        }
        if (pDFView.getScrollDir().equals(b.END)) {
            if (r82 < 120) {
                aVar.d(0, r82, true);
            }
        } else if (r82 < 120) {
            aVar.d(0, r82, false);
        }
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00de A[PHI: r9 r10
      0x00de: PHI (r9v10 float) = (r9v4 float), (r9v16 float) binds: [B:52:0x00dc, B:27:0x0072] A[DONT_GENERATE, DONT_INLINE]
      0x00de: PHI (r10v11 float) = (r10v4 float), (r10v17 float) binds: [B:52:0x00dc, B:27:0x0072] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00e1 A[PHI: r9 r10
      0x00e1: PHI (r9v12 float) = (r9v4 float), (r9v16 float) binds: [B:52:0x00dc, B:27:0x0072] A[DONT_GENERATE, DONT_INLINE]
      0x00e1: PHI (r10v13 float) = (r10v4 float), (r10v17 float) binds: [B:52:0x00dc, B:27:0x0072] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void r(float r9, float r10) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.barteksc.pdfviewer.PDFView.r(float, float):void");
    }

    public final void s() {
        PdfDocument pdfDocument;
        this.f.b();
        e eVar = this.A;
        if (eVar != null) {
            eVar.f6818h = false;
            eVar.removeMessages(1);
        }
        c cVar = this.f2898y;
        if (cVar != null) {
            cVar.cancel(true);
        }
        h2.b bVar = this.f2883e;
        synchronized (bVar.f6797d) {
            Iterator<k2.a> it = bVar.f6794a.iterator();
            while (it.hasNext()) {
                it.next().f8694c.recycle();
            }
            bVar.f6794a.clear();
            Iterator<k2.a> it2 = bVar.f6795b.iterator();
            while (it2.hasNext()) {
                it2.next().f8694c.recycle();
            }
            bVar.f6795b.clear();
        }
        synchronized (bVar.f6796c) {
            Iterator it3 = bVar.f6796c.iterator();
            while (it3.hasNext()) {
                ((k2.a) it3.next()).f8694c.recycle();
            }
            bVar.f6796c.clear();
        }
        PdfiumCore pdfiumCore = this.G;
        if (pdfiumCore != null && (pdfDocument = this.H) != null) {
            pdfiumCore.a(pdfDocument);
        }
        this.A = null;
        this.f2885h = null;
        this.f2886j = null;
        this.f2887k = null;
        this.H = null;
        this.f2895t = 0.0f;
        this.f2894s = 0.0f;
        this.f2896v = 1.0f;
        this.w = true;
        this.f2897x = 1;
    }

    public void setMaxZoom(float f) {
        this.f2881c = f;
    }

    public void setMidZoom(float f) {
        this.f2880b = f;
    }

    public void setMinZoom(float f) {
        this.f2879a = f;
    }

    public void setPositionOffset(float f) {
        if (this.F) {
            r(this.f2894s, ((-l()) + getHeight()) * f);
        } else {
            r(((-l()) + getWidth()) * f, this.f2895t);
        }
        p();
    }

    public void setSwipeVertical(boolean z10) {
        this.F = z10;
    }

    public final void t(int r32) {
        if (this.w) {
            return;
        }
        if (r32 <= 0) {
            r32 = 0;
        } else {
            int[] r02 = this.f2885h;
            if (r02 == null) {
                int r03 = this.f2888l;
                if (r32 >= r03) {
                    r32 = r03 - 1;
                }
            } else if (r32 >= r02.length) {
                r32 = r02.length - 1;
            }
        }
        this.f2889m = r32;
        int[] r04 = this.f2887k;
        if (r04 != null && r32 >= 0 && r32 < r04.length) {
            int r33 = r04[r32];
        }
        q();
    }

    public final void u(PointF pointF, float f) {
        float f10 = f / this.f2896v;
        this.f2896v = f;
        float f11 = this.f2894s * f10;
        float f12 = this.f2895t * f10;
        float f13 = pointF.x;
        float f14 = pointF.y;
        r((f13 - (f13 * f10)) + f11, (f14 - (f10 * f14)) + f12);
    }

    public final void v(float f, float f10, float f11) {
        this.f.a(f, f10, this.f2896v, f11);
    }
}
