package tr.gov.turkiye.edevlet.kapisi.barcode.qr;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
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
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import c5.u;
import c5.y;
import com.google.android.material.appbar.MaterialToolbar;
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
import org.greenrobot.eventbus.ThreadMode;
import qd.i;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.barcode.databinding.ActivityBarcodeScanningBinding;
import tr.gov.turkiye.edevlet.kapisi.barcode.qr.BarcodeScanningActivity;
import tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyLoginWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeData;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithMessage;
import x9.l;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007¨\u0006\b"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/barcode/qr/BarcodeScanningActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lme/c;", NotificationCompat.CATEGORY_EVENT, "Ll9/m;", "onEvent", "<init>", "()V", "ui-barcode_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class BarcodeScanningActivity extends AppCompatActivity {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f15835j = 0;

    /* renamed from: a, reason: collision with root package name */
    public m5.a<ProcessCameraProvider> f15836a;

    /* renamed from: c, reason: collision with root package name */
    public ExecutorService f15838c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f15839d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f15840e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f15841g;

    /* renamed from: b, reason: collision with root package name */
    public final l9.e f15837b = y.v(3, new e(this));

    /* renamed from: h, reason: collision with root package name */
    public final ff.b f15842h = new ff.b(this);

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
                BarcodeScanningActivity barcodeScanningActivity = BarcodeScanningActivity.this;
                if (r32 == 1) {
                    barcodeScanningActivity.f15839d = true;
                    imageView = barcodeScanningActivity.t().f15791c;
                    r02 = R.drawable.ic_round_flash_on;
                } else {
                    barcodeScanningActivity.f15839d = false;
                    imageView = barcodeScanningActivity.t().f15791c;
                    r02 = R.drawable.ic_round_flash_off;
                }
                imageView.setImageResource(r02);
            }
            return m.f9594a;
        }
    }

    public static final class b implements ae.b {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ImageAnalysis f15844a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ProcessCameraProvider f15845b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ BarcodeScanningActivity f15846c;

        public b(ImageAnalysis imageAnalysis, ProcessCameraProvider processCameraProvider, BarcodeScanningActivity this$0) {
            h.f(this$0, "this$0");
            this.f15844a = imageAnalysis;
            this.f15845b = processCameraProvider;
            this.f15846c = this$0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ae.b
        public final void a(final String str, boolean z10) throws Throwable {
            Runnable runnable;
            final ProcessCameraProvider processCameraProvider = this.f15845b;
            final ImageAnalysis imageAnalysis = this.f15844a;
            final BarcodeScanningActivity barcodeScanningActivity = this.f15846c;
            if (z10) {
                imageAnalysis.clearAnalyzer();
                if (processCameraProvider != null) {
                    processCameraProvider.unbindAll();
                }
                if (!barcodeScanningActivity.f15841g) {
                    barcodeScanningActivity.t().f15793e.setVisibility(0);
                    g[] gVarArr = {new g("qrContent", str)};
                    Data.Builder builder = new Data.Builder();
                    g gVar = gVarArr[0];
                    builder.put((String) gVar.f9582a, gVar.f9583b);
                    Data dataBuild = builder.build();
                    h.e(dataBuild, "dataBuilder.build()");
                    OneTimeWorkRequest oneTimeWorkRequestBuild = (barcodeScanningActivity.f ? new OneTimeWorkRequest.Builder(BarcodeVerifyLoginWorker.class) : new OneTimeWorkRequest.Builder(BarcodeVerifyWorker.class)).setInputData(dataBuild).build();
                    h.e(oneTimeWorkRequestBuild, "if (mFromLoginPage) {\n  …                        }");
                    WorkManager.getInstance(barcodeScanningActivity).enqueue(oneTimeWorkRequestBuild);
                    return;
                }
                runnable = new Runnable() { // from class: ce.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageAnalysis imageAnalysis2 = imageAnalysis;
                        h.f(imageAnalysis2, "$imageAnalysis");
                        String result = str;
                        h.f(result, "$result");
                        BarcodeScanningActivity this$0 = barcodeScanningActivity;
                        h.f(this$0, "this$0");
                        imageAnalysis2.clearAnalyzer();
                        ProcessCameraProvider processCameraProvider2 = processCameraProvider;
                        if (processCameraProvider2 != null) {
                            processCameraProvider2.unbindAll();
                        }
                        Intent intent = new Intent();
                        intent.putExtra("result", result);
                        this$0.setResult(-1, intent);
                        this$0.finish();
                    }
                };
            } else {
                if (!barcodeScanningActivity.f15840e) {
                    if (barcodeScanningActivity.f15841g) {
                        barcodeScanningActivity.u(barcodeScanningActivity.getString(R.string.barcode_verify_scan_error));
                        return;
                    }
                    return;
                }
                runnable = new Runnable() { // from class: ce.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageAnalysis imageAnalysis2 = imageAnalysis;
                        h.f(imageAnalysis2, "$imageAnalysis");
                        String result = str;
                        h.f(result, "$result");
                        BarcodeScanningActivity this$0 = barcodeScanningActivity;
                        h.f(this$0, "this$0");
                        imageAnalysis2.clearAnalyzer();
                        ProcessCameraProvider processCameraProvider2 = processCameraProvider;
                        if (processCameraProvider2 != null) {
                            processCameraProvider2.unbindAll();
                        }
                        Intent intent = new Intent();
                        intent.putExtra("result", result);
                        this$0.setResult(-1, intent);
                        this$0.finish();
                    }
                };
            }
            barcodeScanningActivity.runOnUiThread(runnable);
        }
    }

    public static final class c extends OrientationEventListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ImageAnalysis f15847a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(BarcodeScanningActivity barcodeScanningActivity, ImageAnalysis imageAnalysis) {
            super(barcodeScanningActivity);
            this.f15847a = imageAnalysis;
            h.d(barcodeScanningActivity, "null cannot be cast to non-null type android.content.Context");
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
            this.f15847a.setTargetRotation(r22);
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
            BarcodeScanningActivity barcodeScanningActivity = BarcodeScanningActivity.this;
            m5.a<ProcessCameraProvider> aVar = barcodeScanningActivity.f15836a;
            if (aVar != null) {
                barcodeScanningActivity.s(aVar.get());
                return m.f9594a;
            }
            h.n("cameraProviderFuture");
            throw null;
        }
    }

    public static final class e extends j implements x9.a<ActivityBarcodeScanningBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f15849a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(AppCompatActivity appCompatActivity) {
            super(0);
            this.f15849a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivityBarcodeScanningBinding invoke() {
            LayoutInflater layoutInflater = this.f15849a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivityBarcodeScanningBinding.inflate(layoutInflater);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context newBase) {
        h.f(newBase, "newBase");
        this.f15842h.getClass();
        applyOverrideConfiguration(ff.b.f(newBase));
        super.attachBaseContext(newBase);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        h.e(applicationContext, "super.getApplicationContext()");
        this.f15842h.getClass();
        return ff.d.a(applicationContext);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Resources resources = super.getResources();
        h.e(resources, "super.getResources()");
        this.f15842h.b(resources);
        return resources;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        MaterialToolbar materialToolbar;
        int r02;
        this.f15842h.d();
        super.onCreate(bundle);
        setContentView(t().f15789a);
        Intent intent = getIntent();
        if (intent != null) {
            this.f15840e = intent.getBooleanExtra("comingFromService", false);
            this.f = intent.getBooleanExtra("isFromLogin", false);
            this.f15841g = intent.getBooleanExtra("justReturnQRContent", false);
        }
        if (this.f15840e) {
            materialToolbar = t().f;
            r02 = R.string.barcode_verify_using_camera_title;
        } else {
            materialToolbar = t().f;
            r02 = R.string.barcode_verify_using_qr;
        }
        materialToolbar.setTitle(getString(r02));
        setSupportActionBar(t().f);
        t().f.setNavigationOnClickListener(new zd.d(2, this));
        m5.a<ProcessCameraProvider> processCameraProvider = ProcessCameraProvider.getInstance(this);
        h.e(processCameraProvider, "getInstance(this)");
        this.f15836a = processCameraProvider;
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        h.e(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor()");
        this.f15838c = executorServiceNewSingleThreadExecutor;
        m5.a<ProcessCameraProvider> aVar = this.f15836a;
        if (aVar == null) {
            h.n("cameraProviderFuture");
            throw null;
        }
        aVar.addListener(new androidx.view.a(this, 2), ContextCompat.getMainExecutor(this));
        t().f15792d.post(new androidx.core.app.a(this, 2));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        ExecutorService executorService = this.f15838c;
        if (executorService != null) {
            executorService.shutdown();
        } else {
            h.n("cameraExecutor");
            throw null;
        }
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(me.c cVar) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        t().f15793e.setVisibility(8);
        if (cVar != null) {
            if (cVar.f10382a) {
                String string = getString(R.string.filename_pdf);
                h.e(string, "getString(R.string.filename_pdf)");
                BarcodeData barcodeData = cVar.f10383b;
                String content = barcodeData != null ? barcodeData.getDocumentContent() : null;
                boolean z10 = true;
                if (content == null || content.length() == 0) {
                    u(null);
                } else {
                    h.f(content, "content");
                    byte[] bArrA = je.a.a(content);
                    FileOutputStream fileOutputStreamOpenFileOutput = openFileOutput(string, 0);
                    try {
                        try {
                            fileOutputStreamOpenFileOutput.write(bArrA);
                        } catch (Exception unused) {
                            z10 = false;
                        }
                        m mVar = m.f9594a;
                        x5.a.f(fileOutputStreamOpenFileOutput, null);
                        if (z10) {
                            de.a.a(this, string);
                            finish();
                        }
                    } finally {
                    }
                }
            } else {
                ErrorResult<Object> errorResult = cVar.f10384c;
                Throwable throwable = errorResult != null ? errorResult.getThrowable() : null;
                if (throwable instanceof LoginException) {
                    Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
                    if (Build.VERSION.SDK_INT >= 34) {
                        intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    startActivity(intentB);
                    finish();
                } else {
                    u(throwable instanceof ServiceErrorExceptionWithMessage ? ((ServiceErrorExceptionWithMessage) throwable).getErrorMessage() : null);
                }
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
        CameraSelector cameraSelectorBuild = new CameraSelector.Builder().requireLensFacing(1).build();
        h.e(cameraSelectorBuild, "Builder()\n            .r…ACK)\n            .build()");
        ImageAnalysis imageAnalysisBuild = new ImageAnalysis.Builder().setTargetResolution(new Size(1280, 720)).setBackpressureStrategy(0).build();
        h.e(imageAnalysisBuild, "Builder()\n            .s…EST)\n            .build()");
        new c(this, imageAnalysisBuild).enable();
        ae.a aVar = new ae.a(new b(imageAnalysisBuild, processCameraProvider, this));
        ExecutorService executorService = this.f15838c;
        if (executorService == null) {
            h.n("cameraExecutor");
            throw null;
        }
        imageAnalysisBuild.setAnalyzer(executorService, aVar);
        previewBuild.setSurfaceProvider(t().f15790b.getSurfaceProvider());
        Camera cameraBindToLifecycle = processCameraProvider != null ? processCameraProvider.bindToLifecycle(this, cameraSelectorBuild, imageAnalysisBuild, previewBuild) : null;
        if ((cameraBindToLifecycle == null || (cameraInfo = cameraBindToLifecycle.getCameraInfo()) == null || !cameraInfo.hasFlashUnit()) ? false : true) {
            t().f15791c.setVisibility(0);
            t().f15791c.setOnClickListener(new ce.a(0, cameraBindToLifecycle, this));
            LiveData<Integer> torchState = cameraBindToLifecycle.getCameraInfo().getTorchState();
            final a aVar2 = new a();
            torchState.observe(this, new Observer() { // from class: ce.b
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    int r02 = BarcodeScanningActivity.f15835j;
                    l tmp0 = aVar2;
                    h.f(tmp0, "$tmp0");
                    tmp0.invoke(obj);
                }
            });
        }
    }

    public final ActivityBarcodeScanningBinding t() {
        return (ActivityBarcodeScanningBinding) this.f15837b.getValue();
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
