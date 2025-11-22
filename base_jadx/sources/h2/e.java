package h2;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.SparseBooleanArray;
import com.github.barteksc.pdfviewer.PDFView;
import com.shockwave.pdfium.PdfDocument;
import com.shockwave.pdfium.PdfiumCore;

/* loaded from: classes.dex */
public final class e extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final PdfiumCore f6812a;

    /* renamed from: b, reason: collision with root package name */
    public final PdfDocument f6813b;

    /* renamed from: c, reason: collision with root package name */
    public final PDFView f6814c;

    /* renamed from: d, reason: collision with root package name */
    public final RectF f6815d;

    /* renamed from: e, reason: collision with root package name */
    public final Rect f6816e;
    public final Matrix f;

    /* renamed from: g, reason: collision with root package name */
    public final SparseBooleanArray f6817g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f6818h;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ k2.a f6819a;

        public a(k2.a aVar) {
            this.f6819a = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            PDFView pDFView = e.this.f6814c;
            k2.a aVar = this.f6819a;
            if (pDFView.f2897x == 2) {
                pDFView.f2897x = 3;
            }
            if (aVar.f8696e) {
                pDFView.f2883e.a(aVar);
            } else {
                h2.b bVar = pDFView.f2883e;
                synchronized (bVar.f6797d) {
                    bVar.c();
                    bVar.f6795b.offer(aVar);
                }
            }
            pDFView.invalidate();
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ i2.a f6821a;

        public b(i2.a aVar) {
            this.f6821a = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            e.this.f6814c.getClass();
            StringBuilder sb2 = new StringBuilder("Cannot open page ");
            i2.a aVar = this.f6821a;
            sb2.append(aVar.f7281a);
            Log.e("PDFView", sb2.toString(), aVar.getCause());
        }
    }

    public class c {

        /* renamed from: a, reason: collision with root package name */
        public final float f6823a;

        /* renamed from: b, reason: collision with root package name */
        public final float f6824b;

        /* renamed from: c, reason: collision with root package name */
        public final RectF f6825c;

        /* renamed from: d, reason: collision with root package name */
        public final int f6826d;

        /* renamed from: e, reason: collision with root package name */
        public final int f6827e;
        public final boolean f;

        /* renamed from: g, reason: collision with root package name */
        public final int f6828g;

        /* renamed from: h, reason: collision with root package name */
        public final boolean f6829h = false;

        /* renamed from: i, reason: collision with root package name */
        public final boolean f6830i;

        public c(float f, float f10, RectF rectF, int r42, int r52, boolean z10, int r72, boolean z11) {
            this.f6826d = r52;
            this.f6823a = f;
            this.f6824b = f10;
            this.f6825c = rectF;
            this.f6827e = r42;
            this.f = z10;
            this.f6828g = r72;
            this.f6830i = z11;
        }
    }

    public e(Looper looper, PDFView pDFView, PdfiumCore pdfiumCore, PdfDocument pdfDocument) {
        super(looper);
        this.f6815d = new RectF();
        this.f6816e = new Rect();
        this.f = new Matrix();
        this.f6817g = new SparseBooleanArray();
        this.f6818h = false;
        this.f6814c = pDFView;
        this.f6812a = pdfiumCore;
        this.f6813b = pdfDocument;
    }

    public final void a(int r12, int r13, float f, float f10, RectF rectF, boolean z10, int r18, boolean z11) {
        sendMessage(obtainMessage(1, new c(f, f10, rectF, r12, r13, z10, r18, z11)));
    }

    public final k2.a b(c cVar) throws Throwable {
        SparseBooleanArray sparseBooleanArray = this.f6817g;
        int r12 = sparseBooleanArray.indexOfKey(cVar.f6826d);
        int r22 = cVar.f6826d;
        if (r12 < 0) {
            try {
                this.f6812a.h(this.f6813b, r22);
                sparseBooleanArray.put(r22, true);
            } catch (Exception e10) {
                sparseBooleanArray.put(r22, false);
                throw new i2.a(r22, e10);
            }
        }
        int r13 = Math.round(cVar.f6823a);
        int r32 = Math.round(cVar.f6824b);
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(r13, r32, cVar.f6829h ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
            Matrix matrix = this.f;
            matrix.reset();
            RectF rectF = cVar.f6825c;
            float f = r13;
            float f10 = r32;
            matrix.postTranslate((-rectF.left) * f, (-rectF.top) * f10);
            matrix.postScale(1.0f / rectF.width(), 1.0f / rectF.height());
            RectF rectF2 = this.f6815d;
            rectF2.set(0.0f, 0.0f, f, f10);
            matrix.mapRect(rectF2);
            Rect rect = this.f6816e;
            rectF2.round(rect);
            if (sparseBooleanArray.get(r22)) {
                this.f6812a.j(this.f6813b, bitmapCreateBitmap, cVar.f6826d, rect.left, rect.top, rect.width(), rect.height(), cVar.f6830i);
            } else {
                bitmapCreateBitmap.eraseColor(this.f6814c.getInvalidPageColor());
            }
            return new k2.a(cVar.f6827e, cVar.f6826d, bitmapCreateBitmap, cVar.f6825c, cVar.f, cVar.f6828g);
        } catch (IllegalArgumentException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) throws Throwable {
        PDFView pDFView = this.f6814c;
        try {
            k2.a aVarB = b((c) message.obj);
            if (aVarB != null) {
                if (this.f6818h) {
                    pDFView.post(new a(aVarB));
                } else {
                    aVarB.f8694c.recycle();
                }
            }
        } catch (i2.a e10) {
            pDFView.post(new b(e10));
        }
    }
}
