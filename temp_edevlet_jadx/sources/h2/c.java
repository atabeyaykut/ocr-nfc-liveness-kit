package h2;

import android.os.AsyncTask;
import android.os.HandlerThread;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.github.barteksc.pdfviewer.PDFView;
import com.shockwave.pdfium.PdfDocument;
import com.shockwave.pdfium.PdfiumCore;

/* loaded from: classes.dex */
public final class c extends AsyncTask<Void, Void, Throwable> {

    /* renamed from: b, reason: collision with root package name */
    public final PDFView f6799b;

    /* renamed from: c, reason: collision with root package name */
    public final PdfiumCore f6800c;

    /* renamed from: d, reason: collision with root package name */
    public PdfDocument f6801d;
    public final m2.a f;

    /* renamed from: g, reason: collision with root package name */
    public final int f6803g;

    /* renamed from: h, reason: collision with root package name */
    public int f6804h;

    /* renamed from: i, reason: collision with root package name */
    public int f6805i;

    /* renamed from: a, reason: collision with root package name */
    public boolean f6798a = false;

    /* renamed from: e, reason: collision with root package name */
    public final String f6802e = null;

    public c(m2.a aVar, PDFView pDFView, PdfiumCore pdfiumCore, int r42) {
        this.f = aVar;
        this.f6803g = r42;
        this.f6799b = pDFView;
        this.f6800c = pdfiumCore;
        pDFView.getContext();
    }

    @Override // android.os.AsyncTask
    public final Throwable doInBackground(Void[] voidArr) {
        int r52 = this.f6803g;
        PdfiumCore pdfiumCore = this.f6800c;
        try {
            m2.a aVar = this.f;
            PdfDocument pdfDocumentG = pdfiumCore.g(ParcelFileDescriptor.open(aVar.f9921a, 268435456), this.f6802e);
            this.f6801d = pdfDocumentG;
            pdfiumCore.h(pdfDocumentG, r52);
            this.f6804h = pdfiumCore.e(this.f6801d, r52);
            this.f6805i = pdfiumCore.d(this.f6801d, r52);
            return null;
        } catch (Throwable th2) {
            return th2;
        }
    }

    @Override // android.os.AsyncTask
    public final void onCancelled() {
        this.f6798a = true;
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Throwable th2) {
        Throwable th3 = th2;
        PDFView pDFView = this.f6799b;
        if (th3 != null) {
            pDFView.f2897x = 4;
            pDFView.s();
            pDFView.invalidate();
            Log.e("PDFView", "load pdf error", th3);
            return;
        }
        if (this.f6798a) {
            return;
        }
        PdfDocument pdfDocument = this.f6801d;
        int r12 = this.f6804h;
        int r22 = this.f6805i;
        pDFView.f2897x = 2;
        PdfiumCore pdfiumCore = pDFView.G;
        pDFView.f2888l = pdfiumCore.c(pdfDocument);
        pDFView.H = pdfDocument;
        pDFView.f2890n = r12;
        pDFView.f2891p = r22;
        pDFView.m();
        pDFView.B = new com.github.barteksc.pdfviewer.a(pDFView);
        HandlerThread handlerThread = pDFView.f2899z;
        if (!handlerThread.isAlive()) {
            handlerThread.start();
        }
        e eVar = new e(handlerThread.getLooper(), pDFView, pdfiumCore, pdfDocument);
        pDFView.A = eVar;
        eVar.f6818h = true;
        int r6 = pDFView.E;
        float f = -pDFView.n(r6);
        if (pDFView.F) {
            pDFView.r(pDFView.f2894s, f);
        } else {
            pDFView.r(f, pDFView.f2895t);
        }
        pDFView.t(r6);
    }
}
