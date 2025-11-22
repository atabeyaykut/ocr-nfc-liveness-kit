package zh;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.ImageFormat;
import android.hardware.Camera;
import android.util.Log;
import android.view.WindowManager;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.verification.ocr.GraphicOverlay;

@SuppressLint({"MissingPermission"})
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f20435a;

    /* renamed from: b, reason: collision with root package name */
    public final GraphicOverlay f20436b;

    /* renamed from: c, reason: collision with root package name */
    public Camera f20437c;

    /* renamed from: d, reason: collision with root package name */
    public int f20438d;

    /* renamed from: e, reason: collision with root package name */
    public int f20439e;
    public q3.a f;

    /* renamed from: g, reason: collision with root package name */
    public final float f20440g;

    /* renamed from: h, reason: collision with root package name */
    public final int f20441h;

    /* renamed from: i, reason: collision with root package name */
    public final int f20442i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f20443j;

    /* renamed from: k, reason: collision with root package name */
    public Thread f20444k;

    /* renamed from: l, reason: collision with root package name */
    public final b f20445l;

    /* renamed from: m, reason: collision with root package name */
    public final Object f20446m;

    /* renamed from: n, reason: collision with root package name */
    public tr.gov.turkiye.edevlet.kapisi.verification.ocr.b f20447n;

    /* renamed from: o, reason: collision with root package name */
    public final IdentityHashMap f20448o;

    /* renamed from: zh.a$a, reason: collision with other inner class name */
    public final class C0320a implements Camera.PreviewCallback {
        public C0320a() {
        }

        @Override // android.hardware.Camera.PreviewCallback
        public final void onPreviewFrame(byte[] data, Camera camera) {
            kotlin.jvm.internal.h.f(data, "data");
            kotlin.jvm.internal.h.f(camera, "camera");
            b bVar = a.this.f20445l;
            bVar.getClass();
            Object obj = bVar.f20450a;
            a aVar = a.this;
            synchronized (obj) {
                ByteBuffer byteBuffer = bVar.f20452c;
                if (byteBuffer != null) {
                    camera.addCallbackBuffer(byteBuffer.array());
                    bVar.f20452c = null;
                }
                if (aVar.f20448o.containsKey(data)) {
                    bVar.f20452c = (ByteBuffer) aVar.f20448o.get(data);
                    bVar.f20450a.notifyAll();
                    m mVar = m.f9594a;
                } else {
                    Log.d("MIDemoApp:CameraSource", "Skipping frame. Could not find ByteBuffer associated with the image data from the camera.");
                }
            }
        }
    }

    public final class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final Object f20450a = new Object();

        /* renamed from: b, reason: collision with root package name */
        public boolean f20451b = true;

        /* renamed from: c, reason: collision with root package name */
        public ByteBuffer f20452c;

        public b() {
        }

        public final void a(boolean z10) {
            synchronized (this.f20450a) {
                this.f20451b = z10;
                this.f20450a.notifyAll();
                m mVar = m.f9594a;
            }
        }

        @Override // java.lang.Runnable
        @SuppressLint({"InlinedApi"})
        public final void run() {
            boolean z10;
            ByteBuffer byteBuffer;
            while (true) {
                synchronized (this.f20450a) {
                    while (true) {
                        z10 = this.f20451b;
                        if (!z10 || this.f20452c != null) {
                            break;
                        }
                        try {
                            this.f20450a.wait();
                        } catch (InterruptedException e10) {
                            Log.d("MIDemoApp:CameraSource", "Frame processing loop terminated.", e10);
                            return;
                        }
                    }
                    if (!z10) {
                        return;
                    }
                    byteBuffer = this.f20452c;
                    this.f20452c = null;
                    m mVar = m.f9594a;
                }
                try {
                    a aVar = a.this;
                    synchronized (aVar.f20446m) {
                        Log.d("MIDemoApp:CameraSource", "Process an image");
                        tr.gov.turkiye.edevlet.kapisi.verification.ocr.b bVar = aVar.f20447n;
                        kotlin.jvm.internal.h.c(bVar);
                        q3.a aVar2 = aVar.f;
                        kotlin.jvm.internal.h.c(aVar2);
                        int r42 = aVar2.f13323a;
                        q3.a aVar3 = aVar.f;
                        kotlin.jvm.internal.h.c(aVar3);
                        bVar.b(byteBuffer, new d(r42, aVar3.f13324b, aVar.f20439e), aVar.f20436b);
                    }
                } finally {
                    try {
                    } finally {
                    }
                }
            }
        }
    }

    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        public final q3.a f20454a;

        /* renamed from: b, reason: collision with root package name */
        public final q3.a f20455b;

        public c(Camera.Size size, Camera.Size size2) {
            this.f20454a = new q3.a(size.width, size.height);
            if (size2 != null) {
                this.f20455b = new q3.a(size2.width, size2.height);
            }
        }
    }

    public a(Activity activity, GraphicOverlay graphicOverlay) {
        kotlin.jvm.internal.h.f(activity, "activity");
        this.f20435a = activity;
        this.f20436b = graphicOverlay;
        this.f20438d = 0;
        this.f20440g = 20.0f;
        this.f20441h = 1280;
        this.f20442i = 960;
        this.f20443j = true;
        this.f20446m = new Object();
        this.f20448o = new IdentityHashMap();
        graphicOverlay.a();
        this.f20445l = new b();
    }

    @SuppressLint({"InlinedApi"})
    public final Camera a() throws IOException {
        int r22;
        int r32;
        int r02 = this.f20438d;
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        int numberOfCameras = Camera.getNumberOfCameras();
        int r33 = 0;
        int r42 = 0;
        while (true) {
            if (r42 >= numberOfCameras) {
                r42 = -1;
                break;
            }
            Camera.getCameraInfo(r42, cameraInfo);
            if (cameraInfo.facing == r02) {
                break;
            }
            r42++;
        }
        if (r42 == -1) {
            throw new IOException("Could not find requested camera.");
        }
        Camera camera = Camera.open(r42);
        kotlin.jvm.internal.h.e(camera, "camera");
        Camera.Parameters parameters = camera.getParameters();
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        List<Camera.Size> supportedPictureSizes = parameters.getSupportedPictureSizes();
        ArrayList arrayList = new ArrayList();
        for (Camera.Size size : supportedPreviewSizes) {
            float f = size.width / size.height;
            Iterator<Camera.Size> it = supportedPictureSizes.iterator();
            while (true) {
                if (it.hasNext()) {
                    Camera.Size next = it.next();
                    if (Math.abs(f - (next.width / next.height)) < 0.01f) {
                        arrayList.add(new c(size, next));
                        break;
                    }
                }
            }
        }
        int[] r6 = null;
        if (arrayList.size() == 0) {
            Log.w("MIDemoApp:CameraSource", "No preview sizes have a corresponding same-aspect-ratio picture size");
            for (Camera.Size previewSize : supportedPreviewSizes) {
                kotlin.jvm.internal.h.e(previewSize, "previewSize");
                arrayList.add(new c(previewSize, null));
            }
        }
        Iterator it2 = arrayList.iterator();
        int r23 = Integer.MAX_VALUE;
        c cVar = null;
        int r82 = Integer.MAX_VALUE;
        while (it2.hasNext()) {
            c cVar2 = (c) it2.next();
            q3.a aVar = cVar2.f20454a;
            int r10 = Math.abs(aVar.f13324b - this.f20442i) + Math.abs(aVar.f13323a - this.f20441h);
            if (r10 < r82) {
                cVar = cVar2;
                r82 = r10;
            }
        }
        if (cVar == null) {
            throw new IOException("Could not find suitable preview size.");
        }
        this.f = cVar.f20454a;
        int r12 = (int) (this.f20440g * 1000.0f);
        for (int[] r92 : camera.getParameters().getSupportedPreviewFpsRange()) {
            int r11 = r12 - r92[0];
            int r102 = Math.abs(r12 - r92[1]) + Math.abs(r11);
            if (r102 < r23) {
                r6 = r92;
                r23 = r102;
            }
        }
        if (r6 == null) {
            throw new IOException("Could not find suitable preview frames per second range.");
        }
        Camera.Parameters parameters2 = camera.getParameters();
        q3.a aVar2 = cVar.f20455b;
        if (aVar2 != null) {
            parameters2.setPictureSize(aVar2.f13323a, aVar2.f13324b);
        }
        q3.a aVar3 = this.f;
        kotlin.jvm.internal.h.c(aVar3);
        q3.a aVar4 = this.f;
        kotlin.jvm.internal.h.c(aVar4);
        parameters2.setPreviewSize(aVar3.f13323a, aVar4.f13324b);
        parameters2.setPreviewFpsRange(r6[0], r6[1]);
        parameters2.setPreviewFormat(17);
        Object systemService = this.f20435a.getSystemService("window");
        kotlin.jvm.internal.h.d(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        int rotation = ((WindowManager) systemService).getDefaultDisplay().getRotation();
        if (rotation != 0) {
            if (rotation == 1) {
                r33 = 90;
            } else if (rotation == 2) {
                r33 = 180;
            } else if (rotation != 3) {
                Log.e("MIDemoApp:CameraSource", "Bad rotation value: " + rotation);
            } else {
                r33 = 270;
            }
        }
        Camera.CameraInfo cameraInfo2 = new Camera.CameraInfo();
        Camera.getCameraInfo(r42, cameraInfo2);
        int r43 = cameraInfo2.facing;
        int r24 = cameraInfo2.orientation;
        if (r43 == 1) {
            r22 = (r24 + r33) % 360;
            r32 = (360 - r22) % 360;
        } else {
            r22 = ((r24 - r33) + 360) % 360;
            r32 = r22;
        }
        this.f20439e = r22;
        camera.setDisplayOrientation(r32);
        parameters2.setRotation(r22);
        if (this.f20443j) {
            if (parameters2.getSupportedFocusModes().contains("continuous-video")) {
                parameters2.setFocusMode("continuous-video");
            } else {
                Log.i("MIDemoApp:CameraSource", "Camera auto focus is not supported on this device.");
            }
        }
        camera.setParameters(parameters2);
        camera.setPreviewCallbackWithBuffer(new C0320a());
        camera.addCallbackBuffer(b(this.f));
        camera.addCallbackBuffer(b(this.f));
        camera.addCallbackBuffer(b(this.f));
        camera.addCallbackBuffer(b(this.f));
        return camera;
    }

    @SuppressLint({"InlinedApi"})
    public final byte[] b(q3.a aVar) {
        int bitsPerPixel = ImageFormat.getBitsPerPixel(17);
        kotlin.jvm.internal.h.c(aVar);
        byte[] bArr = new byte[((int) Math.ceil(((aVar.f13324b * aVar.f13323a) * bitsPerPixel) / 8.0d)) + 1];
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        if (!(byteBufferWrap.hasArray() && kotlin.jvm.internal.h.a(byteBufferWrap.array(), bArr))) {
            throw new IllegalStateException("Failed to create valid buffer for camera source.".toString());
        }
        this.f20448o.put(bArr, byteBufferWrap);
        return bArr;
    }

    public final void c() {
        synchronized (this.f20446m) {
            e();
            this.f20445l.getClass();
            this.f20436b.a();
            tr.gov.turkiye.edevlet.kapisi.verification.ocr.b bVar = this.f20447n;
            if (bVar != null) {
                bVar.f17702b.close();
            }
            m mVar = m.f9594a;
        }
    }

    public final synchronized void d() {
        this.f20438d = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001f A[Catch: all -> 0x0056, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:7:0x000e, B:10:0x0019, B:11:0x001b, B:13:0x001f, B:14:0x002a, B:18:0x0045, B:17:0x0034, B:19:0x004f, B:9:0x0012), top: B:27:0x0003, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004f A[Catch: all -> 0x0056, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:7:0x000e, B:10:0x0019, B:11:0x001b, B:13:0x001f, B:14:0x002a, B:18:0x0045, B:17:0x0034, B:19:0x004f, B:9:0x0012), top: B:27:0x0003, inners: #0, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void e() {
        /*
            r5 = this;
            java.lang.String r0 = "Failed to clear camera preview: "
            monitor-enter(r5)
            zh.a$b r1 = r5.f20445l     // Catch: java.lang.Throwable -> L56
            r2 = 0
            r1.a(r2)     // Catch: java.lang.Throwable -> L56
            java.lang.Thread r1 = r5.f20444k     // Catch: java.lang.Throwable -> L56
            r2 = 0
            if (r1 == 0) goto L1b
            r1.join()     // Catch: java.lang.InterruptedException -> L12 java.lang.Throwable -> L56
            goto L19
        L12:
            java.lang.String r1 = "MIDemoApp:CameraSource"
            java.lang.String r3 = "Frame processing thread interrupted on release."
            android.util.Log.d(r1, r3)     // Catch: java.lang.Throwable -> L56
        L19:
            r5.f20444k = r2     // Catch: java.lang.Throwable -> L56
        L1b:
            android.hardware.Camera r1 = r5.f20437c     // Catch: java.lang.Throwable -> L56
            if (r1 == 0) goto L4f
            r1.stopPreview()     // Catch: java.lang.Throwable -> L56
            android.hardware.Camera r1 = r5.f20437c     // Catch: java.lang.Throwable -> L56
            kotlin.jvm.internal.h.c(r1)     // Catch: java.lang.Throwable -> L56
            r1.setPreviewCallbackWithBuffer(r2)     // Catch: java.lang.Throwable -> L56
            android.hardware.Camera r1 = r5.f20437c     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> L56
            kotlin.jvm.internal.h.c(r1)     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> L56
            r1.setPreviewDisplay(r2)     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> L56
            goto L45
        L33:
            r1 = move-exception
            java.lang.String r3 = "MIDemoApp:CameraSource"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L56
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L56
            r4.append(r1)     // Catch: java.lang.Throwable -> L56
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Throwable -> L56
            android.util.Log.e(r3, r0)     // Catch: java.lang.Throwable -> L56
        L45:
            android.hardware.Camera r0 = r5.f20437c     // Catch: java.lang.Throwable -> L56
            kotlin.jvm.internal.h.c(r0)     // Catch: java.lang.Throwable -> L56
            r0.release()     // Catch: java.lang.Throwable -> L56
            r5.f20437c = r2     // Catch: java.lang.Throwable -> L56
        L4f:
            java.util.IdentityHashMap r0 = r5.f20448o     // Catch: java.lang.Throwable -> L56
            r0.clear()     // Catch: java.lang.Throwable -> L56
            monitor-exit(r5)
            return
        L56:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: zh.a.e():void");
    }
}
