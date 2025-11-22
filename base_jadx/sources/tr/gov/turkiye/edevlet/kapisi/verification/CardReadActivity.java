package tr.gov.turkiye.edevlet.kapisi.verification;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.nfc.NfcAdapter;
import android.nfc.Tag;
import android.nfc.tech.IsoDep;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import c5.u;
import c5.v;
import c5.y;
import ff.d;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Locale;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.internal.m;
import l9.e;
import nc.a0;
import nc.e1;
import nc.j0;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.jmrtd.BACKey;
import org.jmrtd.BACKeySpec;
import p9.f;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.verification.databinding.ActivityCardReadBinding;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\b\tB\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007¨\u0006\n"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;", "Lu8/a;", "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/IdScanOperation;", NotificationCompat.CATEGORY_EVENT, "Ll9/m;", "onEvent", "<init>", "()V", "a", "b", "ui-id-verification_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class CardReadActivity extends u8.a {

    /* renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ int f17549r = 0;

    /* renamed from: b, reason: collision with root package name */
    public gf.b f17550b;

    /* renamed from: c, reason: collision with root package name */
    public final e f17551c = y.v(3, new c(this));

    /* renamed from: d, reason: collision with root package name */
    public final ff.b f17552d = new ff.b(this);

    /* renamed from: e, reason: collision with root package name */
    public String f17553e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public String f17554g;

    /* renamed from: h, reason: collision with root package name */
    public String f17555h;

    /* renamed from: j, reason: collision with root package name */
    public String f17556j;

    /* renamed from: k, reason: collision with root package name */
    public String f17557k;

    /* renamed from: l, reason: collision with root package name */
    public String f17558l;

    /* renamed from: m, reason: collision with root package name */
    public String f17559m;

    /* renamed from: n, reason: collision with root package name */
    public v.e f17560n;

    /* renamed from: p, reason: collision with root package name */
    public ie.a f17561p;

    /* renamed from: q, reason: collision with root package name */
    public ie.b f17562q;

    public static final class a {
        public static final String a(String str) {
            int r02 = CardReadActivity.f17549r;
            if (str != null) {
                try {
                    Locale locale = Locale.US;
                    return new SimpleDateFormat("yyMMdd", locale).format(new SimpleDateFormat("dd.MM.yyyy", locale).parse(str));
                } catch (ParseException unused) {
                }
            }
            return null;
        }
    }

    public final class b implements a0 {

        /* renamed from: a, reason: collision with root package name */
        public final IsoDep f17563a;

        /* renamed from: b, reason: collision with root package name */
        public final BACKeySpec f17564b;

        /* renamed from: c, reason: collision with root package name */
        public final String f17565c;

        /* renamed from: d, reason: collision with root package name */
        public final String f17566d;

        /* renamed from: e, reason: collision with root package name */
        public final String f17567e;
        public String f;

        /* renamed from: g, reason: collision with root package name */
        public String f17568g;

        /* renamed from: h, reason: collision with root package name */
        public String f17569h;

        /* renamed from: j, reason: collision with root package name */
        public String f17570j;

        /* renamed from: k, reason: collision with root package name */
        public final String f17571k = "SHA1";

        /* renamed from: l, reason: collision with root package name */
        public final String f17572l = "SHA256WithRSA/ISO9796-2";

        /* renamed from: m, reason: collision with root package name */
        public final e1 f17573m = new e1(null);

        public b(IsoDep isoDep, BACKey bACKey, String str, String str2, String str3) {
            this.f17563a = isoDep;
            this.f17564b = bACKey;
            this.f17565c = str;
            this.f17566d = str2;
            this.f17567e = str3;
        }

        @Override // nc.a0
        public final f getCoroutineContext() {
            kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
            return m.f9167a.plus(this.f17573m);
        }
    }

    public static final class c extends j implements x9.a<ActivityCardReadBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f17575a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(AppCompatActivity appCompatActivity) {
            super(0);
            this.f17575a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivityCardReadBinding invoke() {
            LayoutInflater layoutInflater = this.f17575a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivityCardReadBinding.inflate(layoutInflater);
        }
    }

    static {
        new a();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context newBase) {
        h.f(newBase, "newBase");
        this.f17552d.getClass();
        applyOverrideConfiguration(ff.b.f(newBase));
        super.attachBaseContext(newBase);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        h.e(applicationContext, "super.getApplicationContext()");
        this.f17552d.getClass();
        return d.a(applicationContext);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Resources resources = super.getResources();
        h.e(resources, "super.getResources()");
        this.f17552d.b(resources);
        return resources;
    }

    @Override // androidx.view.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        finish();
    }

    @Override // u8.a, androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        this.f17552d.d();
        super.onCreate(bundle);
        setContentView(s().f17606a);
        Bundle extras = getIntent().getExtras();
        h.c(extras);
        this.f17553e = extras.getString("uuid");
        this.f = extras.getString("token");
        this.f17554g = extras.getString("challenge");
        this.f17555h = extras.getString("serialNo");
        this.f17556j = extras.getString("birthDate");
        this.f17557k = extras.getString("validationDate");
        this.f17558l = extras.getString("phoneNumber");
        this.f17559m = extras.getString("countryCode");
        s().f17608c.setTitle(getString(R.string.toolbar_title));
        setSupportActionBar(s().f17608c);
        s().f17608c.setNavigationOnClickListener(new ie.d(18, this));
        Object systemService = getSystemService("layout_inflater");
        h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
        View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.read_card_dialog, (ViewGroup) null);
        h.e(viewInflate, "inflater.inflate(R.layout.read_card_dialog, null)");
        v.e eVar = new v.e(this);
        this.f17560n = eVar;
        u.n(eVar, viewInflate);
        v.e eVar2 = this.f17560n;
        if (eVar2 != null) {
            eVar2.b(false);
        }
        this.f17561p = new ie.a(new xh.c());
        this.f17562q = new ie.b(new xh.d());
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x009c  */
    @qd.i(sticky = true, threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onEvent(tr.gov.turkiye.edevlet.kapisi.data.nfc.IdScanOperation r8) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.verification.CardReadActivity.onEvent(tr.gov.turkiye.edevlet.kapisi.data.nfc.IdScanOperation):void");
    }

    @Override // androidx.view.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        h.f(intent, "intent");
        super.onNewIntent(intent);
        if (h.a("android.nfc.action.TECH_DISCOVERED", intent.getAction())) {
            ie.a aVar = this.f17561p;
            if (aVar != null) {
                aVar.show(getSupportFragmentManager(), ie.a.class.getSimpleName());
            }
            Bundle extras = intent.getExtras();
            h.c(extras);
            Tag tag = (Tag) extras.getParcelable("android.nfc.extra.TAG");
            h.c(tag);
            String[] techList = tag.getTechList();
            h.e(techList, "tag!!.techList");
            if (!b8.f.T(Arrays.copyOf(techList, techList.length)).contains("android.nfc.tech.IsoDep")) {
                v.e eVar = this.f17560n;
                if (eVar != null) {
                    eVar.dismiss();
                    return;
                }
                return;
            }
            BACKey bACKey = new BACKey(this.f17555h, a.a(this.f17556j), a.a(this.f17557k));
            IsoDep isoDep = IsoDep.get(tag);
            isoDep.setTimeout(5000);
            b bVar = new b(isoDep, bACKey, this.f17553e, this.f, this.f17554g);
            v.C(bVar, null, 0, new tr.gov.turkiye.edevlet.kapisi.verification.b(bVar, null), 3);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(this);
        if (defaultAdapter != null) {
            defaultAdapter.disableForegroundDispatch(this);
        }
        if (qd.b.b().e(this)) {
            qd.b.b().n(this);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() throws SecurityException {
        super.onResume();
        NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(this);
        if (defaultAdapter == null || !defaultAdapter.isEnabled()) {
            ((defaultAdapter == null || defaultAdapter.isEnabled()) ? new ie.c(new xh.b()) : new ie.e(new xh.a())).show(getSupportFragmentManager(), ie.e.class.getSimpleName());
        } else {
            Intent intent = new Intent(getApplicationContext(), (Class<?>) CardReadActivity.class);
            intent.setFlags(PKIFailureInfo.duplicateCertReq);
            defaultAdapter.enableForegroundDispatch(this, PendingIntent.getActivity(this, 0, intent, Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728), null, new String[][]{new String[]{"android.nfc.tech.IsoDep"}});
        }
        this.f17552d.e(this);
        if (qd.b.b().e(this)) {
            return;
        }
        qd.b.b().k(this);
    }

    public final ActivityCardReadBinding s() {
        return (ActivityCardReadBinding) this.f17551c.getValue();
    }

    public final void t(int r52, String str) {
        int r6;
        int r02;
        boolean zA = h.a(str, "success");
        int r12 = R.color.white;
        if (zA) {
            r6 = R.color.success_color;
            r02 = R.drawable.toast_success;
        } else if (h.a(str, "warning")) {
            r6 = R.color.warning_color;
            r12 = R.color.black;
            r02 = R.drawable.toast_warning;
        } else {
            r6 = R.color.error_color;
            r02 = R.drawable.toast_error;
        }
        int r22 = ke.d.f8929a;
        ConstraintLayout constraintLayout = s().f17607b;
        h.e(constraintLayout, "mIDScanActivityBinding.cardScanContainer");
        ke.d dVarD = d.a.d(constraintLayout, r52, r02, ContextCompat.getColor(this, r6), ContextCompat.getColor(this, r12));
        if (dVarD != null) {
            dVarD.show();
        }
    }
}
