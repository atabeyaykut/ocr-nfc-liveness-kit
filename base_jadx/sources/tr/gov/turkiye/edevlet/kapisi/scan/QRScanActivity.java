package tr.gov.turkiye.edevlet.kapisi.scan;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.t;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import c5.u;
import c5.y;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.g;
import l9.m;
import mc.n;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.json.JSONObject;
import qd.i;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyLoginWorker;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeData;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithMessage;
import tr.gov.turkiye.edevlet.kapisi.scan.QRScanActivity;
import tr.gov.turkiye.edevlet.kapisi.scan.databinding.ActivityQrScanBinding;
import x9.l;
import yd.a;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007¨\u0006\b"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/scan/QRScanActivity;", "Lu8/a;", "Lme/c;", NotificationCompat.CATEGORY_EVENT, "Ll9/m;", "onEvent", "<init>", "()V", "ui-qr-scan_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class QRScanActivity extends u8.a {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ int f16681k = 0;

    /* renamed from: b, reason: collision with root package name */
    public gf.b f16682b;

    /* renamed from: c, reason: collision with root package name */
    public m5.a<ProcessCameraProvider> f16683c;

    /* renamed from: e, reason: collision with root package name */
    public ExecutorService f16685e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public int f16686g;

    /* renamed from: h, reason: collision with root package name */
    public int f16687h;

    /* renamed from: d, reason: collision with root package name */
    public final l9.e f16684d = y.v(3, new e(this));

    /* renamed from: j, reason: collision with root package name */
    public final ff.b f16688j = new ff.b(this);

    public static final class a extends j implements l<Integer, m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(Integer num) {
            ImageView imageView;
            int r02;
            Integer num2 = num;
            if (num2 != null) {
                int r32 = num2.intValue();
                QRScanActivity qRScanActivity = QRScanActivity.this;
                if (r32 == 1) {
                    qRScanActivity.f = true;
                    imageView = qRScanActivity.t().f16703c;
                    r02 = R.drawable.ic_round_flash_on;
                } else {
                    qRScanActivity.f = false;
                    imageView = qRScanActivity.t().f16703c;
                    r02 = R.drawable.ic_round_flash_off;
                }
                imageView.setImageResource(r02);
            }
            return m.f9594a;
        }
    }

    public static final class b implements mg.c {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ QRScanActivity f16690a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ImageAnalysis f16691b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ProcessCameraProvider f16692c;

        public b(QRScanActivity this$0, ImageAnalysis imageAnalysis, ProcessCameraProvider processCameraProvider) {
            h.f(this$0, "this$0");
            this.f16690a = this$0;
            this.f16691b = imageAnalysis;
            this.f16692c = processCameraProvider;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // mg.c
        public final void a(String str, boolean z10) throws Throwable {
            int r14;
            boolean z11;
            String string;
            boolean z12;
            boolean z13;
            QRScanActivity qRScanActivity = this.f16690a;
            gf.b bVar = qRScanActivity.f16682b;
            if (bVar == null) {
                h.n("mNetworkHelper");
                throw null;
            }
            if (!bVar.a()) {
                Intent intent = new Intent();
                intent.putExtra("errorType", "0");
                qRScanActivity.setResult(0, intent);
                qRScanActivity.finish();
                return;
            }
            this.f16691b.clearAnalyzer();
            ProcessCameraProvider processCameraProvider = this.f16692c;
            if (processCameraProvider != null) {
                processCameraProvider.unbindAll();
            }
            if (!z10) {
                qRScanActivity.u(qRScanActivity.getString(R.string.barcode_verify_scan_error));
                return;
            }
            qRScanActivity.t().f16705e.setVisibility(0);
            int r15 = qRScanActivity.f16686g;
            if (r15 != 0) {
                if (r15 != 1) {
                    return;
                }
                Intent intent2 = new Intent();
                intent2.putExtra("comingFrom", qRScanActivity.f16686g);
                intent2.putExtra("content", str);
                qRScanActivity.setResult(-1, intent2);
                qRScanActivity.finish();
                return;
            }
            int r152 = qRScanActivity.f16687h;
            try {
                if (r152 == 1) {
                    if (n.G(str, "edevlet://karekod/", false)) {
                        str = mc.j.C(str, "edevlet://karekod/", "");
                    }
                    try {
                        new JSONObject(str);
                        z11 = true;
                    } catch (JSONException unused) {
                        z11 = false;
                    }
                    if (z11) {
                        JSONObject jSONObject = new JSONObject(str);
                        if (jSONObject.has("tid") && jSONObject.has("uk")) {
                            String string2 = jSONObject.getString("tid");
                            String string3 = jSONObject.getString("uk");
                            qRScanActivity.t().f16705e.setVisibility(8);
                            Intent intent3 = new Intent();
                            intent3.putExtra("tid", string2);
                            intent3.putExtra("uk", string3);
                            intent3.putExtra("operationType", qRScanActivity.f16687h);
                            intent3.putExtra("comingFrom", qRScanActivity.f16686g);
                            qRScanActivity.setResult(-1, intent3);
                            qRScanActivity.finish();
                            return;
                        }
                    }
                    qRScanActivity.t().f16705e.setVisibility(8);
                    r14 = R.string.barcode_verify_scan_error;
                    try {
                        string = qRScanActivity.getString(R.string.barcode_verify_scan_error);
                        qRScanActivity.u(string);
                        return;
                    } catch (Exception unused2) {
                        qRScanActivity.u(qRScanActivity.getString(r14));
                    }
                }
                if (r152 == 2) {
                    if (n.G(str, "edevlet://karekod/", false)) {
                        str = mc.j.C(str, "edevlet://karekod/", "");
                    }
                    try {
                        new JSONObject(str);
                        z12 = true;
                    } catch (JSONException unused3) {
                        z12 = false;
                    }
                    if (!z12) {
                        string = qRScanActivity.getString(R.string.barcode_verify_scan_error);
                        qRScanActivity.u(string);
                        return;
                    }
                    JSONObject jSONObject2 = new JSONObject(str);
                    String string4 = jSONObject2.getString("tcknUuid");
                    String string5 = jSONObject2.getString("authCode");
                    String string6 = jSONObject2.getString("pin");
                    qRScanActivity.t().f16705e.setVisibility(8);
                    Intent intent4 = new Intent();
                    intent4.putExtra("uuid", string4);
                    intent4.putExtra("code", string5);
                    intent4.putExtra("pin", string6);
                    intent4.putExtra("operationType", qRScanActivity.f16687h);
                    intent4.putExtra("comingFrom", qRScanActivity.f16686g);
                    qRScanActivity.setResult(-1, intent4);
                    qRScanActivity.finish();
                    return;
                }
                if (r152 != 3) {
                    return;
                }
                try {
                    if (n.G(str, "edevlet://karekod/", false) ? false : n.G(str, "barkod", false)) {
                        g[] gVarArr = {new g("qrContent", str)};
                        Data.Builder builder = new Data.Builder();
                        g gVar = gVarArr[0];
                        builder.put((String) gVar.f9582a, gVar.f9583b);
                        Data dataBuild = builder.build();
                        h.e(dataBuild, "dataBuilder.build()");
                        OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(BarcodeVerifyLoginWorker.class).setInputData(dataBuild).build();
                        h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…tData(workerData).build()");
                        WorkManager.getInstance(qRScanActivity).enqueue(oneTimeWorkRequestBuild);
                        return;
                    }
                    if (n.G(str, "edevlet://karekod/", false)) {
                        str = mc.j.C(str, "edevlet://karekod/", "");
                    }
                    try {
                        new JSONObject(str);
                        z13 = true;
                    } catch (JSONException unused4) {
                        z13 = false;
                    }
                    if (z13) {
                        JSONObject jSONObject3 = new JSONObject(str);
                        if (jSONObject3.has("tid") && jSONObject3.has("uk")) {
                            yd.a.f19652a.c("STAGE 0", new Object[0]);
                            String string7 = jSONObject3.getString("tid");
                            String string8 = jSONObject3.getString("uk");
                            qRScanActivity.t().f16705e.setVisibility(8);
                            Intent intent5 = new Intent();
                            intent5.putExtra("tid", string7);
                            intent5.putExtra("uk", string8);
                            intent5.putExtra("operationType", 1);
                            intent5.putExtra("comingFrom", qRScanActivity.f16686g);
                            qRScanActivity.setResult(-1, intent5);
                        } else if (jSONObject3.has("tcknUuid") && jSONObject3.has("authCode") && jSONObject3.has("pin")) {
                            yd.a.f19652a.c("STAGE 1", new Object[0]);
                            String string9 = jSONObject3.getString("tcknUuid");
                            String string10 = jSONObject3.getString("authCode");
                            String string11 = jSONObject3.getString("pin");
                            qRScanActivity.t().f16705e.setVisibility(8);
                            Intent intent6 = new Intent();
                            intent6.putExtra("uuid", string9);
                            intent6.putExtra("code", string10);
                            intent6.putExtra("pin", string11);
                            intent6.putExtra("operationType", 2);
                            intent6.putExtra("comingFrom", qRScanActivity.f16686g);
                            qRScanActivity.setResult(-1, intent6);
                        } else {
                            yd.a.f19652a.c("STAGE 2", new Object[0]);
                            qRScanActivity.t().f16705e.setVisibility(8);
                        }
                        qRScanActivity.finish();
                        return;
                    }
                    yd.a.f19652a.c("STAGE 3", new Object[0]);
                    qRScanActivity.u(qRScanActivity.getString(R.string.barcode_verify_scan_error));
                } catch (Exception e10) {
                    yd.a.f19652a.c(androidx.constraintlayout.core.a.j(e10, new StringBuilder("STAGE 4 ")), new Object[0]);
                    r14 = R.string.barcode_verify_scan_error;
                    qRScanActivity.u(qRScanActivity.getString(r14));
                }
            } catch (Exception unused5) {
            }
        }
    }

    public static final class c extends OrientationEventListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ImageAnalysis f16693a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(QRScanActivity qRScanActivity, ImageAnalysis imageAnalysis) {
            super(qRScanActivity);
            this.f16693a = imageAnalysis;
            h.d(qRScanActivity, "null cannot be cast to non-null type android.content.Context");
        }

        @Override // android.view.OrientationEventListener
        public final void onOrientationChanged(int r52) {
            int r22 = 1;
            if (45 <= r52 && r52 < 135) {
                r22 = 3;
            } else {
                if (135 <= r52 && r52 < 225) {
                    r22 = 2;
                } else {
                    if (!(225 <= r52 && r52 < 315)) {
                        r22 = 0;
                    }
                }
            }
            this.f16693a.setTargetRotation(r22);
        }
    }

    public static final class d extends j implements l<v.e, m> {
        public d() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(v.e eVar) {
            v.e it = eVar;
            h.f(it, "it");
            it.dismiss();
            int r32 = QRScanActivity.f16681k;
            QRScanActivity qRScanActivity = QRScanActivity.this;
            qRScanActivity.t().f16703c.setVisibility(8);
            m5.a<ProcessCameraProvider> aVar = qRScanActivity.f16683c;
            if (aVar != null) {
                qRScanActivity.s(aVar.get());
                return m.f9594a;
            }
            h.n("cameraProviderFuture");
            throw null;
        }
    }

    public static final class e extends j implements x9.a<ActivityQrScanBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f16695a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(AppCompatActivity appCompatActivity) {
            super(0);
            this.f16695a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivityQrScanBinding invoke() {
            LayoutInflater layoutInflater = this.f16695a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivityQrScanBinding.inflate(layoutInflater);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context newBase) {
        h.f(newBase, "newBase");
        this.f16688j.getClass();
        applyOverrideConfiguration(ff.b.f(newBase));
        super.attachBaseContext(newBase);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        h.e(applicationContext, "super.getApplicationContext()");
        this.f16688j.getClass();
        return ff.d.a(applicationContext);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Resources resources = super.getResources();
        h.e(resources, "super.getResources()");
        this.f16688j.b(resources);
        return resources;
    }

    @Override // u8.a, androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        this.f16688j.d();
        super.onCreate(bundle);
        setContentView(t().f16701a);
        Intent intent = getIntent();
        if (intent != null) {
            this.f16686g = intent.getIntExtra("comingFrom", 0);
            this.f16687h = intent.getIntExtra("operationType", 0);
        }
        t().f.setTitle(getString(R.string.barcode_verify_using_qr));
        setSupportActionBar(t().f);
        t().f.setNavigationOnClickListener(new xf.d(5, this));
        m5.a<ProcessCameraProvider> processCameraProvider = ProcessCameraProvider.getInstance(this);
        h.e(processCameraProvider, "getInstance(this)");
        this.f16683c = processCameraProvider;
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        h.e(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor()");
        this.f16685e = executorServiceNewSingleThreadExecutor;
        m5.a<ProcessCameraProvider> aVar = this.f16683c;
        if (aVar == null) {
            h.n("cameraProviderFuture");
            throw null;
        }
        aVar.addListener(new Runnable() { // from class: lg.a
            @Override // java.lang.Runnable
            public final void run() {
                int r02 = QRScanActivity.f16681k;
                QRScanActivity this$0 = this.f9814a;
                h.f(this$0, "this$0");
                m5.a<ProcessCameraProvider> aVar2 = this$0.f16683c;
                if (aVar2 != null) {
                    this$0.s(aVar2.get());
                } else {
                    h.n("cameraProviderFuture");
                    throw null;
                }
            }
        }, ContextCompat.getMainExecutor(this));
        t().f16704d.post(new t(2, this));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        ExecutorService executorService = this.f16685e;
        if (executorService != null) {
            executorService.shutdown();
        } else {
            h.n("cameraExecutor");
            throw null;
        }
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(me.c cVar) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        Intent intent;
        t().f16705e.setVisibility(8);
        if (cVar != null) {
            boolean z10 = false;
            if (cVar.f10382a) {
                String string = getString(R.string.filename_pdf);
                h.e(string, "getString(R.string.filename_pdf)");
                BarcodeData barcodeData = cVar.f10383b;
                String content = barcodeData != null ? barcodeData.getDocumentContent() : null;
                if (content == null || content.length() == 0) {
                    u(null);
                } else {
                    h.f(content, "content");
                    byte[] bArrA = je.a.a(content);
                    FileOutputStream fileOutputStreamOpenFileOutput = openFileOutput(string, 0);
                    try {
                        try {
                            fileOutputStreamOpenFileOutput.write(bArrA);
                            z10 = true;
                        } catch (Exception unused) {
                        }
                        m mVar = m.f9594a;
                        x5.a.f(fileOutputStreamOpenFileOutput, null);
                        if (z10) {
                            File file = new File(getFilesDir(), string);
                            try {
                                if (Build.VERSION.SDK_INT >= 23) {
                                    Uri uriForFile = FileProvider.getUriForFile(this, "tr.gov.turkiye.edevlet.kapisi.fileprovider", file);
                                    h.e(uriForFile, "getUriForFile(\n         …\", file\n                )");
                                    intent = new Intent("android.intent.action.VIEW");
                                    intent.setData(uriForFile);
                                    intent.setFlags(1);
                                } else {
                                    intent = new Intent("android.intent.action.VIEW");
                                    intent.setDataAndType(Uri.fromFile(file), "application/pdf");
                                }
                                startActivity(intent);
                            } catch (ActivityNotFoundException unused2) {
                                if (h.a("application/pdf", "application/pdf")) {
                                    Intent intent2 = new Intent("action.barcodePDF.open");
                                    intent2.putExtra("isNativeData", true);
                                    if (Build.VERSION.SDK_INT >= 34) {
                                        intent2.setPackage("tr.gov.turkiye.edevlet.kapisi");
                                    }
                                    startActivity(intent2);
                                }
                            } catch (Exception unused3) {
                            }
                        }
                    } finally {
                    }
                }
            } else {
                a.C0306a c0306a = yd.a.f19652a;
                StringBuilder sb2 = new StringBuilder("exception ");
                ErrorResult<Object> errorResult = cVar.f10384c;
                sb2.append(errorResult);
                c0306a.c(sb2.toString(), new Object[0]);
                Throwable throwable = errorResult != null ? errorResult.getThrowable() : null;
                u(throwable instanceof ServiceErrorExceptionWithMessage ? ((ServiceErrorExceptionWithMessage) throwable).getErrorMessage() : null);
            }
        }
        qd.b.b().l(me.c.class);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (qd.b.b().e(this)) {
            qd.b.b().n(this);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() throws SecurityException {
        super.onResume();
        if (qd.b.b().e(this)) {
            return;
        }
        qd.b.b().k(this);
    }

    public final void s(ProcessCameraProvider processCameraProvider) {
        CameraInfo cameraInfo;
        if (isDestroyed() || isFinishing()) {
            return;
        }
        if (processCameraProvider != null) {
            processCameraProvider.unbindAll();
        }
        Preview previewBuild = new Preview.Builder().build();
        h.e(previewBuild, "Builder()\n            .build()");
        int r22 = 1;
        CameraSelector cameraSelectorBuild = new CameraSelector.Builder().requireLensFacing(1).build();
        h.e(cameraSelectorBuild, "Builder()\n            .r…ACK)\n            .build()");
        ImageAnalysis imageAnalysisBuild = new ImageAnalysis.Builder().setTargetResolution(new Size(1280, 720)).setBackpressureStrategy(0).build();
        h.e(imageAnalysisBuild, "Builder()\n            .s…EST)\n            .build()");
        new c(this, imageAnalysisBuild).enable();
        mg.b bVar = new mg.b(new b(this, imageAnalysisBuild, processCameraProvider));
        ExecutorService executorService = this.f16685e;
        if (executorService == null) {
            h.n("cameraExecutor");
            throw null;
        }
        imageAnalysisBuild.setAnalyzer(executorService, bVar);
        previewBuild.setSurfaceProvider(t().f16702b.getSurfaceProvider());
        Camera cameraBindToLifecycle = processCameraProvider != null ? processCameraProvider.bindToLifecycle(this, cameraSelectorBuild, imageAnalysisBuild, previewBuild) : null;
        if ((cameraBindToLifecycle == null || (cameraInfo = cameraBindToLifecycle.getCameraInfo()) == null || !cameraInfo.hasFlashUnit()) ? false : true) {
            t().f16703c.setVisibility(0);
            t().f16703c.setOnClickListener(new tf.c(r22, cameraBindToLifecycle, this));
            cameraBindToLifecycle.getCameraInfo().getTorchState().observe(this, new c2.a(1, new a()));
        }
    }

    public final ActivityQrScanBinding t() {
        return (ActivityQrScanBinding) this.f16684d.getValue();
    }

    public final void u(String str) {
        Object systemService = getSystemService("layout_inflater");
        h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
        View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.result_error_dialog, (ViewGroup) null);
        h.e(viewInflate, "inflater.inflate(R.layou…esult_error_dialog, null)");
        TextView textView = (TextView) viewInflate.findViewById(R.id.result_dialog_txt_content);
        if (str == null || str.length() == 0) {
            textView.setText(R.string.barcode_verify_common_error_message);
        } else {
            textView.setText(str);
        }
        v.e eVar = new v.e(this);
        u.n(eVar, viewInflate);
        eVar.show();
        eVar.b(false);
        v.e.e(eVar, Integer.valueOf(R.string.barcode_close_dialog), null, null, 6);
        v.e.e(eVar, null, null, new d(), 3);
    }
}
