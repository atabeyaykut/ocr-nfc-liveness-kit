package tr.gov.turkiye.edevlet.kapisi.verification.ocr;

import android.annotation.SuppressLint;
import android.content.Context;
import android.hardware.Camera;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.ViewGroup;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;", "Landroid/view/ViewGroup;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "a", "ui-id-verification_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class CameraSourcePreview extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public final SurfaceView f17665a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f17666b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f17667c;

    /* renamed from: d, reason: collision with root package name */
    public zh.a f17668d;

    /* renamed from: e, reason: collision with root package name */
    public GraphicOverlay f17669e;

    public final class a implements SurfaceHolder.Callback {
        public a() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceChanged(SurfaceHolder holder, int r22, int r32, int r42) {
            h.f(holder, "holder");
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceCreated(SurfaceHolder surface) {
            h.f(surface, "surface");
            CameraSourcePreview cameraSourcePreview = CameraSourcePreview.this;
            cameraSourcePreview.f17667c = true;
            try {
                cameraSourcePreview.b();
            } catch (IOException e10) {
                yd.a.f19652a.c(androidx.room.util.a.c("Could not start camera source. ", e10), new Object[0]);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceDestroyed(SurfaceHolder surface) {
            h.f(surface, "surface");
            CameraSourcePreview.this.f17667c = false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraSourcePreview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        h.f(context, "context");
        SurfaceView surfaceView = new SurfaceView(context);
        this.f17665a = surfaceView;
        surfaceView.getHolder().addCallback(new a());
        addView(surfaceView);
    }

    public final boolean a() {
        int r02 = getContext().getResources().getConfiguration().orientation;
        if (r02 == 2) {
            return false;
        }
        if (r02 == 1) {
            return true;
        }
        yd.a.f19652a.a("isPortraitMode returning false by default", new Object[0]);
        return false;
    }

    @SuppressLint({"MissingPermission"})
    public final void b() throws IOException {
        int r02;
        int r12;
        if (this.f17666b && this.f17667c) {
            zh.a aVar = this.f17668d;
            h.c(aVar);
            SurfaceHolder holder = this.f17665a.getHolder();
            synchronized (aVar) {
                if (aVar.f20437c == null) {
                    Camera cameraA = aVar.a();
                    aVar.f20437c = cameraA;
                    cameraA.setPreviewDisplay(holder);
                    Camera camera = aVar.f20437c;
                    h.c(camera);
                    camera.startPreview();
                    aVar.f20444k = new Thread(aVar.f20445l);
                    aVar.f20445l.a(true);
                    Thread thread = aVar.f20444k;
                    h.c(thread);
                    thread.start();
                }
            }
            if (this.f17669e != null) {
                zh.a aVar2 = this.f17668d;
                h.c(aVar2);
                q3.a aVar3 = aVar2.f;
                Integer numValueOf = aVar3 != null ? Integer.valueOf(Math.min(aVar3.f13323a, aVar3.f13324b)) : null;
                Integer numValueOf2 = aVar3 != null ? Integer.valueOf(Math.max(aVar3.f13323a, aVar3.f13324b)) : null;
                if (a()) {
                    if (numValueOf != null) {
                        r02 = numValueOf.intValue();
                        if (numValueOf2 != null) {
                            r12 = numValueOf2.intValue();
                            GraphicOverlay graphicOverlay = this.f17669e;
                            h.c(graphicOverlay);
                            h.c(this.f17668d);
                            graphicOverlay.b(r02, r12);
                        }
                    }
                    GraphicOverlay graphicOverlay2 = this.f17669e;
                    h.c(graphicOverlay2);
                    graphicOverlay2.a();
                } else {
                    if (numValueOf2 != null) {
                        r02 = numValueOf2.intValue();
                        if (numValueOf != null) {
                            r12 = numValueOf.intValue();
                            GraphicOverlay graphicOverlay3 = this.f17669e;
                            h.c(graphicOverlay3);
                            h.c(this.f17668d);
                            graphicOverlay3.b(r02, r12);
                        }
                    }
                    GraphicOverlay graphicOverlay22 = this.f17669e;
                    h.c(graphicOverlay22);
                    graphicOverlay22.a();
                }
            }
            this.f17666b = false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0010  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onLayout(boolean r9, int r10, int r11, int r12, int r13) {
        /*
            r8 = this;
            zh.a r9 = r8.f17668d
            if (r9 == 0) goto L10
            kotlin.jvm.internal.h.c(r9)
            q3.a r9 = r9.f
            if (r9 == 0) goto L10
            int r0 = r9.f13323a
            int r9 = r9.f13324b
            goto L14
        L10:
            r0 = 320(0x140, float:4.48E-43)
            r9 = 240(0xf0, float:3.36E-43)
        L14:
            boolean r1 = r8.a()
            if (r1 == 0) goto L1b
            goto L1e
        L1b:
            r7 = r0
            r0 = r9
            r9 = r7
        L1e:
            int r12 = r12 - r10
            int r13 = r13 - r11
            float r10 = (float) r12
            float r9 = (float) r9
            float r10 = r10 / r9
            float r11 = (float) r13
            float r0 = (float) r0
            float r11 = r11 / r0
            r1 = 0
            int r2 = (r10 > r11 ? 1 : (r10 == r11 ? 0 : -1))
            if (r2 <= 0) goto L35
            float r0 = r0 * r10
            int r9 = (int) r0
            int r10 = r9 - r13
            int r10 = r10 / 2
            r11 = 0
            r13 = r9
            goto L3e
        L35:
            float r9 = r9 * r11
            int r9 = (int) r9
            int r10 = r9 - r12
            int r11 = r10 / 2
            r10 = 0
            r12 = r9
        L3e:
            int r9 = r8.getChildCount()
            r0 = 0
        L43:
            if (r0 >= r9) goto L57
            android.view.View r2 = r8.getChildAt(r0)
            int r3 = r11 * (-1)
            int r4 = r10 * (-1)
            int r5 = r12 - r11
            int r6 = r13 - r10
            r2.layout(r3, r4, r5, r6)
            int r0 = r0 + 1
            goto L43
        L57:
            r8.b()     // Catch: java.io.IOException -> L5b
            goto L69
        L5b:
            r9 = move-exception
            yd.a$a r10 = yd.a.f19652a
            java.lang.String r11 = "Could not start camera source. "
            java.lang.String r9 = androidx.room.util.a.c(r11, r9)
            java.lang.Object[] r11 = new java.lang.Object[r1]
            r10.c(r9, r11)
        L69:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.verification.ocr.CameraSourcePreview.onLayout(boolean, int, int, int, int):void");
    }
}
