package tr.gov.turkiye.edevlet.kapisi.verification;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.exifinterface.media.ExifInterface;
import c5.y;
import ff.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.e;
import t1.f;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.verification.databinding.ActivityResultBinding;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;", "Lu8/a;", "<init>", "()V", "ui-id-verification_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class CardVerificationResultActivity extends u8.a {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f17585g = 0;

    /* renamed from: b, reason: collision with root package name */
    public String f17586b;

    /* renamed from: c, reason: collision with root package name */
    public final e f17587c = y.v(3, new a(this));

    /* renamed from: d, reason: collision with root package name */
    public final ff.b f17588d = new ff.b(this);

    /* renamed from: e, reason: collision with root package name */
    public String f17589e;
    public boolean f;

    public static final class a extends j implements x9.a<ActivityResultBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f17590a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AppCompatActivity appCompatActivity) {
            super(0);
            this.f17590a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivityResultBinding invoke() {
            LayoutInflater layoutInflater = this.f17590a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivityResultBinding.inflate(layoutInflater);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context newBase) {
        h.f(newBase, "newBase");
        this.f17588d.getClass();
        applyOverrideConfiguration(ff.b.f(newBase));
        super.attachBaseContext(newBase);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        h.e(applicationContext, "super.getApplicationContext()");
        this.f17588d.getClass();
        return d.a(applicationContext);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Resources resources = super.getResources();
        h.e(resources, "super.getResources()");
        this.f17588d.b(resources);
        return resources;
    }

    @Override // u8.a, androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TextView textView;
        int r02;
        this.f17588d.d();
        super.onCreate(bundle);
        setContentView(s().f17613a);
        Intent intent = getIntent();
        if (intent != null) {
            this.f = intent.getBooleanExtra("isSuccess", false);
            this.f17589e = intent.getStringExtra("operationType");
        }
        s().f17617e.setTitle(getString(R.string.toolbar_title));
        setSupportActionBar(s().f17617e);
        s().f17617e.setNavigationOnClickListener(new nf.a(15, this));
        if (this.f) {
            if (!h.a(this.f17589e, "1") && !h.a(this.f17589e, ExifInterface.GPS_MEASUREMENT_3D)) {
                if (h.a(this.f17589e, ExifInterface.GPS_MEASUREMENT_2D)) {
                    s().f17616d.setVisibility(8);
                    s().f17615c.setVisibility(0);
                    s().f17615c.setText(R.string.nfc_result_button_text_case_two);
                    s().f17615c.setOnClickListener(new ie.d(19, this));
                    textView = s().f17618g;
                    r02 = R.string.result_page_type_1;
                } else if (h.a(this.f17589e, "4")) {
                    s().f17616d.setVisibility(8);
                    s().f17615c.setVisibility(0);
                    s().f17615c.setText(R.string.nfc_result_button_text_case_four);
                    s().f17616d.setVisibility(8);
                    s().f17615c.setOnClickListener(new zd.e(17, this));
                    textView = s().f17618g;
                    r02 = R.string.result_page_type_3;
                } else if (h.a(this.f17589e, "5")) {
                    s().f17616d.setVisibility(8);
                    s().f17615c.setVisibility(0);
                    s().f17615c.setText(R.string.nfc_result_button_text_case_two);
                    s().f17616d.setVisibility(8);
                    s().f17615c.setOnClickListener(new f(15, this));
                    textView = s().f17618g;
                    r02 = R.string.result_page_type_5;
                }
                textView.setText(getString(r02));
            }
            s().f17616d.setVisibility(0);
            s().f17615c.setVisibility(8);
            s().f17614b.setOnClickListener(new zd.a(18, this));
            s().f.setOnClickListener(new zd.d(20, this));
            textView = s().f17618g;
            r02 = R.string.result_page_type_2;
            textView.setText(getString(r02));
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        try {
            this.f17588d.e(this);
        } catch (Exception unused) {
        }
    }

    public final ActivityResultBinding s() {
        return (ActivityResultBinding) this.f17587c.getValue();
    }
}
