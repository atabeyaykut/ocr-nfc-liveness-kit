package tr.gov.turkiye.edevlet.kapisi.verification.sms;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.appcompat.app.AppCompatActivity;
import c5.y;
import ff.b;
import ff.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.e;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.verification.databinding.ActivityCardSmsErrorBinding;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationErrorActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "ui-id-verification_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class SMSVerificationErrorActivity extends AppCompatActivity {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f17719d = 0;

    /* renamed from: a, reason: collision with root package name */
    public final e f17720a = y.v(3, new a(this));

    /* renamed from: b, reason: collision with root package name */
    public final b f17721b = new b(this);

    /* renamed from: c, reason: collision with root package name */
    public String f17722c;

    public static final class a extends j implements x9.a<ActivityCardSmsErrorBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f17723a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AppCompatActivity appCompatActivity) {
            super(0);
            this.f17723a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivityCardSmsErrorBinding invoke() {
            LayoutInflater layoutInflater = this.f17723a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivityCardSmsErrorBinding.inflate(layoutInflater);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context newBase) {
        h.f(newBase, "newBase");
        this.f17721b.getClass();
        applyOverrideConfiguration(b.f(newBase));
        super.attachBaseContext(newBase);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        h.e(applicationContext, "super.getApplicationContext()");
        this.f17721b.getClass();
        return d.a(applicationContext);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Resources resources = super.getResources();
        h.e(resources, "super.getResources()");
        this.f17721b.b(resources);
        return resources;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        this.f17721b.d();
        super.onCreate(bundle);
        e eVar = this.f17720a;
        setContentView(((ActivityCardSmsErrorBinding) eVar.getValue()).f17609a);
        ((ActivityCardSmsErrorBinding) eVar.getValue()).f17610b.setTitle(getString(R.string.toolbar_title));
        setSupportActionBar(((ActivityCardSmsErrorBinding) eVar.getValue()).f17610b);
        ((ActivityCardSmsErrorBinding) eVar.getValue()).f17610b.setNavigationOnClickListener(new ie.d(20, this));
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f17722c = extras.getString("message");
        }
        String str = this.f17722c;
        if (str == null || str.length() == 0) {
            return;
        }
        ((ActivityCardSmsErrorBinding) eVar.getValue()).f17611c.setText(this.f17722c);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        this.f17721b.e(this);
    }
}
