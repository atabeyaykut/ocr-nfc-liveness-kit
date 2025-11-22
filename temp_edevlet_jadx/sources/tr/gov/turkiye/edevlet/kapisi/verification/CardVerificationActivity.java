package tr.gov.turkiye.edevlet.kapisi.verification;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import c5.y;
import ff.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.e;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.verification.databinding.ActivityVerificationBinding;
import tr.gov.turkiye.edevlet.kapisi.verification.identity.CardInfoFragment;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;", "Lu8/a;", "<init>", "()V", "ui-id-verification_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class CardVerificationActivity extends u8.a {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ int f17576k = 0;

    /* renamed from: b, reason: collision with root package name */
    public final e f17577b = y.v(3, new a(this));

    /* renamed from: c, reason: collision with root package name */
    public final ff.b f17578c = new ff.b(this);

    /* renamed from: d, reason: collision with root package name */
    public String f17579d;

    /* renamed from: e, reason: collision with root package name */
    public String f17580e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public String f17581g;

    /* renamed from: h, reason: collision with root package name */
    public String f17582h;

    /* renamed from: j, reason: collision with root package name */
    public String f17583j;

    public static final class a extends j implements x9.a<ActivityVerificationBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f17584a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AppCompatActivity appCompatActivity) {
            super(0);
            this.f17584a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivityVerificationBinding invoke() {
            LayoutInflater layoutInflater = this.f17584a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivityVerificationBinding.inflate(layoutInflater);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context newBase) {
        h.f(newBase, "newBase");
        this.f17578c.getClass();
        applyOverrideConfiguration(ff.b.f(newBase));
        super.attachBaseContext(newBase);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        h.e(applicationContext, "super.getApplicationContext()");
        this.f17578c.getClass();
        return d.a(applicationContext);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Resources resources = super.getResources();
        h.e(resources, "super.getResources()");
        this.f17578c.b(resources);
        return resources;
    }

    @Override // u8.a, androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        this.f17578c.d();
        super.onCreate(bundle);
        e eVar = this.f17577b;
        setContentView(((ActivityVerificationBinding) eVar.getValue()).f17632a);
        Intent intent = getIntent();
        if (intent != null) {
            this.f17579d = intent.getStringExtra("uuid");
            this.f17580e = intent.getStringExtra("challenge");
            this.f = intent.getStringExtra("token");
            this.f17583j = intent.getStringExtra("operationType");
            this.f17581g = intent.getStringExtra("phoneNumber");
            this.f17582h = intent.getStringExtra("countyCode");
        }
        ((ActivityVerificationBinding) eVar.getValue()).f17633b.setTitle(getString(R.string.toolbar_title));
        setSupportActionBar(((ActivityVerificationBinding) eVar.getValue()).f17633b);
        ((ActivityVerificationBinding) eVar.getValue()).f17633b.setNavigationOnClickListener(new xf.d(15, this));
        Bundle bundle2 = new Bundle();
        bundle2.putString("uuid", this.f17579d);
        bundle2.putString("challenge", this.f17580e);
        bundle2.putString("verificationCode", this.f17583j);
        bundle2.putString("token", this.f);
        bundle2.putString("phoneNumber", this.f17581g);
        bundle2.putString("countryCode", this.f17582h);
        CardInfoFragment cardInfoFragment = new CardInfoFragment();
        cardInfoFragment.setArguments(bundle2);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        h.e(supportFragmentManager, "supportFragmentManager");
        FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
        h.e(fragmentTransactionBeginTransaction, "beginTransaction()");
        fragmentTransactionBeginTransaction.setReorderingAllowed(true);
        fragmentTransactionBeginTransaction.replace(R.id.fragment_container_view, cardInfoFragment);
        fragmentTransactionBeginTransaction.commit();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        this.f17578c.e(this);
    }
}
