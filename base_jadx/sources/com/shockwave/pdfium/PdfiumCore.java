package com.shockwave.pdfium;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.shockwave.pdfium.PdfDocument;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class PdfiumCore {

    /* renamed from: b, reason: collision with root package name */
    public static final Class f4441b;

    /* renamed from: c, reason: collision with root package name */
    public static Field f4442c;

    /* renamed from: d, reason: collision with root package name */
    public static final Object f4443d;

    /* renamed from: a, reason: collision with root package name */
    public final int f4444a;

    static {
        try {
            System.loadLibrary("modpng");
            System.loadLibrary("modft2");
            System.loadLibrary("modpdfium");
            System.loadLibrary("jniPdfium");
        } catch (UnsatisfiedLinkError e10) {
            Log.e("com.shockwave.pdfium.PdfiumCore", "Native libraries failed to load - " + e10);
        }
        f4441b = FileDescriptor.class;
        f4442c = null;
        f4443d = new Object();
    }

    public PdfiumCore(Context context) {
        this.f4444a = context.getResources().getDisplayMetrics().densityDpi;
    }

    private native void nativeCloseDocument(long j10);

    private native void nativeClosePage(long j10);

    private native long nativeGetBookmarkDestIndex(long j10, long j11);

    private native String nativeGetBookmarkTitle(long j10);

    private native String nativeGetDocumentMetaText(long j10, String str);

    private native Long nativeGetFirstChildBookmark(long j10, Long l5);

    private native int nativeGetPageCount(long j10);

    private native int nativeGetPageHeightPixel(long j10, int r32);

    private native int nativeGetPageWidthPixel(long j10, int r32);

    private native Long nativeGetSiblingBookmark(long j10, long j11);

    private native long nativeLoadPage(long j10, int r32);

    private native long nativeOpenDocument(int r12, String str);

    private native void nativeRenderPageBitmap(long j10, Bitmap bitmap, int r42, int r52, int r6, int r72, int r82, boolean z10);

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(PdfDocument pdfDocument) {
        synchronized (f4443d) {
            Iterator it = pdfDocument.f4439c.keySet().iterator();
            while (it.hasNext()) {
                nativeClosePage(((Long) pdfDocument.f4439c.get((Integer) it.next())).longValue());
            }
            pdfDocument.f4439c.clear();
            nativeCloseDocument(pdfDocument.f4437a);
            ParcelFileDescriptor parcelFileDescriptor = pdfDocument.f4438b;
            if (parcelFileDescriptor != null) {
                try {
                    parcelFileDescriptor.close();
                } catch (IOException unused) {
                }
                pdfDocument.f4438b = null;
            }
        }
    }

    public final PdfDocument.Meta b(PdfDocument pdfDocument) {
        PdfDocument.Meta meta;
        synchronized (f4443d) {
            meta = new PdfDocument.Meta();
            nativeGetDocumentMetaText(pdfDocument.f4437a, "Title");
            nativeGetDocumentMetaText(pdfDocument.f4437a, "Author");
            nativeGetDocumentMetaText(pdfDocument.f4437a, "Subject");
            nativeGetDocumentMetaText(pdfDocument.f4437a, "Keywords");
            nativeGetDocumentMetaText(pdfDocument.f4437a, "Creator");
            nativeGetDocumentMetaText(pdfDocument.f4437a, "Producer");
            nativeGetDocumentMetaText(pdfDocument.f4437a, "CreationDate");
            nativeGetDocumentMetaText(pdfDocument.f4437a, "ModDate");
        }
        return meta;
    }

    public final int c(PdfDocument pdfDocument) {
        int r42;
        synchronized (f4443d) {
            r42 = nativeGetPageCount(pdfDocument.f4437a);
        }
        return r42;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int d(PdfDocument pdfDocument, int r42) {
        synchronized (f4443d) {
            Long l5 = (Long) pdfDocument.f4439c.get(Integer.valueOf(r42));
            if (l5 == null) {
                return 0;
            }
            return nativeGetPageHeightPixel(l5.longValue(), this.f4444a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int e(PdfDocument pdfDocument, int r42) {
        synchronized (f4443d) {
            Long l5 = (Long) pdfDocument.f4439c.get(Integer.valueOf(r42));
            if (l5 == null) {
                return 0;
            }
            return nativeGetPageWidthPixel(l5.longValue(), this.f4444a);
        }
    }

    public final ArrayList f(PdfDocument pdfDocument) {
        ArrayList arrayList;
        synchronized (f4443d) {
            arrayList = new ArrayList();
            Long lNativeGetFirstChildBookmark = nativeGetFirstChildBookmark(pdfDocument.f4437a, null);
            if (lNativeGetFirstChildBookmark != null) {
                i(arrayList, pdfDocument, lNativeGetFirstChildBookmark.longValue());
            }
        }
        return arrayList;
    }

    public final PdfDocument g(ParcelFileDescriptor parcelFileDescriptor, String str) throws IOException {
        PdfDocument pdfDocument = new PdfDocument();
        pdfDocument.f4438b = parcelFileDescriptor;
        synchronized (f4443d) {
            int r22 = -1;
            try {
                if (f4442c == null) {
                    Field declaredField = f4441b.getDeclaredField("descriptor");
                    f4442c = declaredField;
                    declaredField.setAccessible(true);
                }
                r22 = f4442c.getInt(parcelFileDescriptor.getFileDescriptor());
            } catch (IllegalAccessException e10) {
                e = e10;
                e.printStackTrace();
                pdfDocument.f4437a = nativeOpenDocument(r22, str);
                return pdfDocument;
            } catch (NoSuchFieldException e11) {
                e = e11;
                e.printStackTrace();
                pdfDocument.f4437a = nativeOpenDocument(r22, str);
                return pdfDocument;
            }
            pdfDocument.f4437a = nativeOpenDocument(r22, str);
        }
        return pdfDocument;
    }

    public final void h(PdfDocument pdfDocument, int r52) {
        synchronized (f4443d) {
            pdfDocument.f4439c.put(Integer.valueOf(r52), Long.valueOf(nativeLoadPage(pdfDocument.f4437a, r52)));
        }
    }

    public final void i(ArrayList arrayList, PdfDocument pdfDocument, long j10) {
        PdfDocument.Bookmark bookmark = new PdfDocument.Bookmark();
        nativeGetBookmarkTitle(j10);
        nativeGetBookmarkDestIndex(pdfDocument.f4437a, j10);
        arrayList.add(bookmark);
        Long lNativeGetFirstChildBookmark = nativeGetFirstChildBookmark(pdfDocument.f4437a, Long.valueOf(j10));
        if (lNativeGetFirstChildBookmark != null) {
            i(bookmark.f4440a, pdfDocument, lNativeGetFirstChildBookmark.longValue());
        }
        Long lNativeGetSiblingBookmark = nativeGetSiblingBookmark(pdfDocument.f4437a, j10);
        if (lNativeGetSiblingBookmark != null) {
            i(arrayList, pdfDocument, lNativeGetSiblingBookmark.longValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void j(PdfDocument pdfDocument, Bitmap bitmap, int r16, int r17, int r18, int r19, int r20, boolean z10) throws Throwable {
        String str;
        String str2;
        synchronized (f4443d) {
            try {
                try {
                    try {
                        nativeRenderPageBitmap(((Long) pdfDocument.f4439c.get(Integer.valueOf(r16))).longValue(), bitmap, this.f4444a, r17, r18, r19, r20, z10);
                    } catch (NullPointerException e10) {
                        e = e10;
                        str = "com.shockwave.pdfium.PdfiumCore";
                        str2 = "mContext may be null";
                        Log.e(str, str2);
                        e.printStackTrace();
                    } catch (Exception e11) {
                        e = e11;
                        str = "com.shockwave.pdfium.PdfiumCore";
                        str2 = "Exception throw from native";
                        Log.e(str, str2);
                        e.printStackTrace();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
            } catch (NullPointerException e12) {
                e = e12;
            } catch (Exception e13) {
                e = e13;
            } catch (Throwable th3) {
                th = th3;
                throw th;
            }
        }
    }
}
