package tr.gov.turkiye.edevlet.kapisi.verification;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BulletSpan;
import android.view.LayoutInflater;
import androidx.appcompat.app.AppCompatActivity;
import b8.f;
import c5.y;
import ff.d;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.e;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.verification.databinding.ActivityCardErrorBinding;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "ui-id-verification_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class CardErrorActivity extends AppCompatActivity {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f17545c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final e f17546a = y.v(3, new a(this));

    /* renamed from: b, reason: collision with root package name */
    public final ff.b f17547b = new ff.b(this);

    public static final class a extends j implements x9.a<ActivityCardErrorBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f17548a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AppCompatActivity appCompatActivity) {
            super(0);
            this.f17548a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivityCardErrorBinding invoke() {
            LayoutInflater layoutInflater = this.f17548a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivityCardErrorBinding.inflate(layoutInflater);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context newBase) {
        h.f(newBase, "newBase");
        this.f17547b.getClass();
        applyOverrideConfiguration(ff.b.f(newBase));
        super.attachBaseContext(newBase);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        h.e(applicationContext, "super.getApplicationContext()");
        this.f17547b.getClass();
        return d.a(applicationContext);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Resources resources = super.getResources();
        h.e(resources, "super.getResources()");
        this.f17547b.b(resources);
        return resources;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        this.f17547b.d();
        super.onCreate(bundle);
        setContentView(s().f17596a);
        s().f17598c.setTitle(getString(R.string.toolbar_title));
        setSupportActionBar(s().f17598c);
        s().f17598c.setNavigationOnClickListener(new zd.a(17, this));
        List listT = f.T(Integer.valueOf(R.string.read_card_error_message_bullet_0), Integer.valueOf(R.string.read_card_error_message_bullet_1), Integer.valueOf(R.string.read_card_error_message_bullet_2), Integer.valueOf(R.string.read_card_error_message_bullet_3));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int r42 = 0;
        for (Object obj : listT) {
            int r6 = r42 + 1;
            if (r42 < 0) {
                f.k0();
                throw null;
            }
            int r52 = ((Number) obj).intValue();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(getString(r52));
            sb2.append(r42 < listT.size() + (-1) ? "\n" : "");
            SpannableString spannableString = new SpannableString(sb2.toString());
            spannableString.setSpan(new BulletSpan(15, -7829368), 0, spannableString.length(), 17);
            spannableStringBuilder.append((CharSequence) spannableString);
            r42 = r6;
        }
        s().f17599d.setText(spannableStringBuilder);
        s().f17597b.setOnClickListener(new zd.d(19, this));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        this.f17547b.e(this);
    }

    public final ActivityCardErrorBinding s() {
        return (ActivityCardErrorBinding) this.f17546a.getValue();
    }
}
