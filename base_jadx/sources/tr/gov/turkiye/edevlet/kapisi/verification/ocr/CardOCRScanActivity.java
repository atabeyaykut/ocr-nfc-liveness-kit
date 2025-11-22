package tr.gov.turkiye.edevlet.kapisi.verification.ocr;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.appcompat.app.AppCompatActivity;
import c5.y;
import java.io.IOException;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import org.jmrtd.lds.icao.MRZInfo;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.verification.databinding.ActivityCardOcrBinding;
import tr.gov.turkiye.edevlet.kapisi.verification.ocr.b;
import v.e;
import xf.d;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b$a;", "<init>", "()V", "ui-id-verification_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class CardOCRScanActivity extends AppCompatActivity implements b.a {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f17671j = 0;

    /* renamed from: b, reason: collision with root package name */
    public zh.a f17673b;

    /* renamed from: c, reason: collision with root package name */
    public CameraSourcePreview f17674c;

    /* renamed from: d, reason: collision with root package name */
    public GraphicOverlay f17675d;

    /* renamed from: e, reason: collision with root package name */
    public e f17676e;
    public zh.b f;

    /* renamed from: a, reason: collision with root package name */
    public final l9.e f17672a = y.v(3, new a(this));

    /* renamed from: g, reason: collision with root package name */
    public final String f17677g = "MRZ_RESULT";

    /* renamed from: h, reason: collision with root package name */
    public final String f17678h = "DOC_TYPE";

    public static final class a extends j implements x9.a<ActivityCardOcrBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f17679a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AppCompatActivity appCompatActivity) {
            super(0);
            this.f17679a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivityCardOcrBinding invoke() {
            LayoutInflater layoutInflater = this.f17679a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivityCardOcrBinding.inflate(layoutInflater);
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.verification.ocr.b.a
    public final void a() {
        setResult(0);
        finish();
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.verification.ocr.b.a
    public final void b(MRZInfo mRZInfo) {
        Intent intent = new Intent();
        intent.putExtra(this.f17677g, mRZInfo);
        setResult(-1, intent);
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(((ActivityCardOcrBinding) this.f17672a.getValue()).f17603a);
        ((ActivityCardOcrBinding) this.f17672a.getValue()).f17605c.setTitle(getString(R.string.toolbar_title));
        setSupportActionBar(((ActivityCardOcrBinding) this.f17672a.getValue()).f17605c);
        ((ActivityCardOcrBinding) this.f17672a.getValue()).f17605c.setNavigationOnClickListener(new d(17, this));
        ((ActivityCardOcrBinding) this.f17672a.getValue()).f17604b.setOnClickListener(new be.d(10, this));
        if (getIntent().hasExtra(this.f17678h)) {
            Serializable serializableExtra = getIntent().getSerializableExtra(this.f17678h);
            h.d(serializableExtra, "null cannot be cast to non-null type tr.gov.turkiye.edevlet.kapisi.verification.ocr.DocType");
        }
        CameraSourcePreview cameraSourcePreview = (CameraSourcePreview) findViewById(R.id.camera_source_preview);
        this.f17674c = cameraSourcePreview;
        if (cameraSourcePreview == null) {
            yd.a.f19652a.c("Preview is null", new Object[0]);
        }
        GraphicOverlay graphicOverlay = (GraphicOverlay) findViewById(R.id.graphics_overlay);
        this.f17675d = graphicOverlay;
        if (graphicOverlay == null) {
            yd.a.f19652a.c("graphicOverlay is null", new Object[0]);
        }
        if (this.f17673b == null) {
            GraphicOverlay graphicOverlay2 = this.f17675d;
            zh.a aVar = graphicOverlay2 != null ? new zh.a(this, graphicOverlay2) : null;
            this.f17673b = aVar;
            h.c(aVar);
            aVar.d();
        }
        zh.a aVar2 = this.f17673b;
        h.c(aVar2);
        b bVar = new b(this);
        synchronized (aVar2.f20446m) {
            aVar2.f20436b.a();
            b bVar2 = aVar2.f20447n;
            if (bVar2 != null) {
                bVar2.f17702b.close();
            }
            aVar2.f20447n = bVar;
            m mVar = m.f9594a;
        }
        s();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        zh.a aVar = this.f17673b;
        if (aVar != null) {
            aVar.c();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        zh.b bVar = this.f;
        if (bVar != null) {
            bVar.cancel();
        }
        e eVar = this.f17676e;
        if (eVar != null) {
            eVar.dismiss();
        }
        CameraSourcePreview cameraSourcePreview = this.f17674c;
        h.c(cameraSourcePreview);
        zh.a aVar = cameraSourcePreview.f17668d;
        if (aVar != null) {
            aVar.e();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        s();
        zh.b bVar = new zh.b(this);
        this.f = bVar;
        bVar.start();
    }

    public final void s() {
        zh.a aVar;
        if (this.f17673b == null) {
            yd.a.f19652a.c("cameraSource is null", new Object[0]);
            return;
        }
        try {
            if (this.f17674c == null) {
                yd.a.f19652a.c("resume: Preview is null", new Object[0]);
            }
            if (this.f17675d == null) {
                yd.a.f19652a.c("resume: graphOverlay is null", new Object[0]);
            }
            CameraSourcePreview cameraSourcePreview = this.f17674c;
            h.c(cameraSourcePreview);
            zh.a aVar2 = this.f17673b;
            cameraSourcePreview.f17669e = this.f17675d;
            if (aVar2 == null && (aVar = cameraSourcePreview.f17668d) != null) {
                aVar.e();
            }
            cameraSourcePreview.f17668d = aVar2;
            if (aVar2 != null) {
                cameraSourcePreview.f17666b = true;
                cameraSourcePreview.b();
            }
        } catch (IOException e10) {
            yd.a.f19652a.c(androidx.room.util.a.c("Unable to start camera source. ", e10), new Object[0]);
            zh.a aVar3 = this.f17673b;
            h.c(aVar3);
            aVar3.c();
            this.f17673b = null;
        }
    }
}
