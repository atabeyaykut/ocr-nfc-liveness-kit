package tr.gov.turkiye.edevlet.kapisi.verification.ocr;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import c5.y;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import org.jmrtd.lds.icao.MRZInfo;
import org.json.JSONException;
import org.json.JSONObject;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.verification.databinding.ActivityCardGeneraOcrBinding;
import tr.gov.turkiye.edevlet.kapisi.verification.ocr.a;
import zh.e;
import zh.f;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a$a;", "<init>", "()V", "ui-id-verification_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class GeneralOCRScanActivity extends AppCompatActivity implements a.InterfaceC0273a {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f17686h = 0;

    /* renamed from: b, reason: collision with root package name */
    public e f17688b;

    /* renamed from: c, reason: collision with root package name */
    public GeneralCameraSourcePreview f17689c;

    /* renamed from: d, reason: collision with root package name */
    public GraphicOverlay f17690d;

    /* renamed from: e, reason: collision with root package name */
    public v.e f17691e;
    public f f;

    /* renamed from: a, reason: collision with root package name */
    public final l9.e f17687a = y.v(3, new a(this));

    /* renamed from: g, reason: collision with root package name */
    public final String f17692g = "MRZ_RESULT";

    public static final class a extends j implements x9.a<ActivityCardGeneraOcrBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f17693a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AppCompatActivity appCompatActivity) {
            super(0);
            this.f17693a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivityCardGeneraOcrBinding invoke() {
            LayoutInflater layoutInflater = this.f17693a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivityCardGeneraOcrBinding.inflate(layoutInflater);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.verification.ocr.a.InterfaceC0273a
    public final void a() {
        setResult(0);
        finish();
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.verification.ocr.a.InterfaceC0273a
    public final void b(MRZInfo mRZInfo) throws JSONException {
        Intent intent = new Intent();
        JSONObject jSONObject = new JSONObject();
        yd.a.f19652a.c("general mrz " + mRZInfo, new Object[0]);
        jSONObject.put(NotificationCompat.CATEGORY_STATUS, "1");
        jSONObject.put("content", mRZInfo);
        intent.putExtra(this.f17692g, jSONObject.toString());
        setResult(-1, intent);
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(((ActivityCardGeneraOcrBinding) this.f17687a.getValue()).f17600a);
        ((ActivityCardGeneraOcrBinding) this.f17687a.getValue()).f17602c.setTitle(getString(R.string.title_mrz_scan));
        setSupportActionBar(((ActivityCardGeneraOcrBinding) this.f17687a.getValue()).f17602c);
        ((ActivityCardGeneraOcrBinding) this.f17687a.getValue()).f17602c.setNavigationOnClickListener(new nf.a(16, this));
        ((ActivityCardGeneraOcrBinding) this.f17687a.getValue()).f17601b.setOnClickListener(new zd.a(19, this));
        GeneralCameraSourcePreview generalCameraSourcePreview = (GeneralCameraSourcePreview) findViewById(R.id.camera_source_preview);
        this.f17689c = generalCameraSourcePreview;
        if (generalCameraSourcePreview == null) {
            yd.a.f19652a.c("Preview is null", new Object[0]);
        }
        GraphicOverlay graphicOverlay = (GraphicOverlay) findViewById(R.id.graphics_overlay);
        this.f17690d = graphicOverlay;
        if (graphicOverlay == null) {
            yd.a.f19652a.c("graphicOverlay is null", new Object[0]);
        }
        if (this.f17688b == null) {
            GraphicOverlay graphicOverlay2 = this.f17690d;
            e eVar = graphicOverlay2 != null ? new e(this, graphicOverlay2) : null;
            this.f17688b = eVar;
            h.c(eVar);
            eVar.d();
        }
        e eVar2 = this.f17688b;
        h.c(eVar2);
        tr.gov.turkiye.edevlet.kapisi.verification.ocr.a aVar = new tr.gov.turkiye.edevlet.kapisi.verification.ocr.a(this);
        synchronized (eVar2.f20474m) {
            eVar2.f20464b.a();
            tr.gov.turkiye.edevlet.kapisi.verification.ocr.a aVar2 = eVar2.f20475n;
            if (aVar2 != null) {
                aVar2.f17699b.close();
            }
            eVar2.f20475n = aVar;
            m mVar = m.f9594a;
        }
        s();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        e eVar = this.f17688b;
        if (eVar != null) {
            eVar.c();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        f fVar = this.f;
        if (fVar != null) {
            fVar.cancel();
        }
        v.e eVar = this.f17691e;
        if (eVar != null) {
            eVar.dismiss();
        }
        GeneralCameraSourcePreview generalCameraSourcePreview = this.f17689c;
        h.c(generalCameraSourcePreview);
        e eVar2 = generalCameraSourcePreview.f17683d;
        if (eVar2 != null) {
            eVar2.e();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        s();
        f fVar = new f(this);
        this.f = fVar;
        fVar.start();
    }

    public final void s() {
        e eVar;
        if (this.f17688b == null) {
            yd.a.f19652a.c("cameraSource is null", new Object[0]);
            return;
        }
        try {
            if (this.f17689c == null) {
                yd.a.f19652a.c("resume: Preview is null", new Object[0]);
            }
            if (this.f17690d == null) {
                yd.a.f19652a.c("resume: graphOverlay is null", new Object[0]);
            }
            GeneralCameraSourcePreview generalCameraSourcePreview = this.f17689c;
            h.c(generalCameraSourcePreview);
            e eVar2 = this.f17688b;
            generalCameraSourcePreview.f17684e = this.f17690d;
            if (eVar2 == null && (eVar = generalCameraSourcePreview.f17683d) != null) {
                eVar.e();
            }
            generalCameraSourcePreview.f17683d = eVar2;
            if (eVar2 != null) {
                generalCameraSourcePreview.f17681b = true;
                generalCameraSourcePreview.b();
            }
        } catch (IOException e10) {
            yd.a.f19652a.c(androidx.room.util.a.c("Unable to start camera source. ", e10), new Object[0]);
            e eVar3 = this.f17688b;
            h.c(eVar3);
            eVar3.c();
            this.f17688b = null;
        }
    }
}
