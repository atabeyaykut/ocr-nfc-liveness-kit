package tr.gov.turkiye.edevlet.kapisi.servicepage;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.webkit.CookieManager;
import android.webkit.DownloadListener;
import android.webkit.URLUtil;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import c5.u;
import c5.y;
import df.g;
import df.g0;
import df.i0;
import df.n;
import df.x;
import df.z;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import org.bouncycastle.i18n.MessageBundle;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.json.JSONObject;
import pg.i;
import pg.k;
import pg.v;
import t1.f;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.servicepage.PaymentPageActivity;
import tr.gov.turkiye.edevlet.kapisi.servicepage.databinding.ActivityServicePageBinding;
import x9.l;
import yd.a;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\bH\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\tH\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\nH\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u000bH\u0007¨\u0006\u000e"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;", "Lu8/a;", "Ldf/n;", NotificationCompat.CATEGORY_EVENT, "Ll9/m;", "onEvent", "Ldf/g0;", "Ldf/g;", "Ldf/i0;", "Ldf/f;", "Ldf/x;", "Ldf/z;", "<init>", "()V", "ui-service-page_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class PaymentPageActivity extends u8.a {

    /* renamed from: y, reason: collision with root package name */
    public static final /* synthetic */ int f16765y = 0;

    /* renamed from: b, reason: collision with root package name */
    public String f16766b;

    /* renamed from: c, reason: collision with root package name */
    public String f16767c;

    /* renamed from: d, reason: collision with root package name */
    public gf.b f16768d;

    /* renamed from: g, reason: collision with root package name */
    public String f16770g;

    /* renamed from: h, reason: collision with root package name */
    public String f16771h;

    /* renamed from: j, reason: collision with root package name */
    public String f16772j;

    /* renamed from: k, reason: collision with root package name */
    public String f16773k;

    /* renamed from: l, reason: collision with root package name */
    public String f16774l;

    /* renamed from: m, reason: collision with root package name */
    public Integer f16775m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f16776n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f16777p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f16778q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f16779r;

    /* renamed from: t, reason: collision with root package name */
    public boolean f16781t;

    /* renamed from: v, reason: collision with root package name */
    public String f16782v;
    public ValueCallback<Uri[]> w;

    /* renamed from: e, reason: collision with root package name */
    public final l9.e f16769e = y.v(3, new e(this));
    public final int f = 8224;

    /* renamed from: s, reason: collision with root package name */
    public boolean f16780s = true;

    /* renamed from: x, reason: collision with root package name */
    public final ff.b f16783x = new ff.b(this);

    public static final class a extends j implements l<v.e, m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(v.e eVar) {
            v.e dialog = eVar;
            h.f(dialog, "dialog");
            dialog.dismiss();
            PaymentPageActivity.this.finish();
            return m.f9594a;
        }
    }

    public static final class b extends j implements l<v.e, m> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16785a = new b();

        public b() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(v.e eVar) {
            v.e dialog = eVar;
            h.f(dialog, "dialog");
            dialog.dismiss();
            return m.f9594a;
        }
    }

    public static final class c extends j implements l<v.e, m> {
        public c() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(v.e eVar) {
            v.e dialog = eVar;
            h.f(dialog, "dialog");
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            PaymentPageActivity paymentPageActivity = PaymentPageActivity.this;
            intent.setData(Uri.fromParts("package", paymentPageActivity.getPackageName(), null));
            paymentPageActivity.startActivity(intent);
            dialog.dismiss();
            return m.f9594a;
        }
    }

    public static final class d extends j implements l<v.e, m> {

        /* renamed from: a, reason: collision with root package name */
        public static final d f16787a = new d();

        public d() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(v.e eVar) {
            v.e dialog = eVar;
            h.f(dialog, "dialog");
            dialog.dismiss();
            return m.f9594a;
        }
    }

    public static final class e extends j implements x9.a<ActivityServicePageBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f16788a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(AppCompatActivity appCompatActivity) {
            super(0);
            this.f16788a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivityServicePageBinding invoke() {
            LayoutInflater layoutInflater = this.f16788a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivityServicePageBinding.inflate(layoutInflater);
        }
    }

    public final void A() {
        int r02 = ke.d.f8929a;
        ConstraintLayout constraintLayout = u().f16827d;
        h.e(constraintLayout, "mServicePageBinding.webContainer");
        ke.d dVarC = d.a.c(constraintLayout, R.string.web_page_file_download_error, ContextCompat.getColor(this, R.color.error_color));
        if (dVarC != null) {
            dVarC.show();
        }
    }

    public final void B(String str) {
        StringBuilder sb2;
        String strValueOf;
        String str2;
        String str3;
        if (this.f16776n) {
            Integer num = this.f16775m;
            if (num != null && num.intValue() == 0) {
                sb2 = new StringBuilder("https://m.turkiye.gov.tr/edk_services/");
                sb2.append(this.f16772j);
                sb2.append("/index.html?folderName=");
                sb2.append(this.f16770g);
                sb2.append("&url=");
                str2 = this.f16773k;
                sb2.append(str2);
                str3 = "&native=iframe&os=android&v=";
                sb2.append(str3);
                sb2.append(s());
                sb2.append("&mode=");
                sb2.append(str);
                sb2.append("&language=");
                sb2.append(t());
                strValueOf = sb2.toString();
            } else {
                sb2 = (num != null && num.intValue() == 1) ? new StringBuilder() : new StringBuilder();
                sb2.append(this.f16772j);
                sb2.append(this.f16773k);
                str3 = "?os=android&v=";
                sb2.append(str3);
                sb2.append(s());
                sb2.append("&mode=");
                sb2.append(str);
                sb2.append("&language=");
                sb2.append(t());
                strValueOf = sb2.toString();
            }
        } else if (!this.f16777p) {
            Integer num2 = this.f16775m;
            if (num2 != null && num2.intValue() == 0) {
                sb2 = new StringBuilder();
                sb2.append(this.f16772j);
                sb2.append(this.f16770g);
                sb2.append("/index.html?url=");
                str2 = this.f16773k;
                sb2.append(str2);
                str3 = "&native=iframe&os=android&v=";
                sb2.append(str3);
                sb2.append(s());
                sb2.append("&mode=");
                sb2.append(str);
                sb2.append("&language=");
                sb2.append(t());
                strValueOf = sb2.toString();
            } else {
                sb2 = (num2 != null && num2.intValue() == 1) ? new StringBuilder() : new StringBuilder();
                sb2.append(this.f16772j);
                sb2.append(this.f16773k);
                str3 = "?os=android&v=";
                sb2.append(str3);
                sb2.append(s());
                sb2.append("&mode=");
                sb2.append(str);
                sb2.append("&language=");
                sb2.append(t());
                strValueOf = sb2.toString();
            }
        } else if (this.f16779r) {
            yd.a.f19652a.c("Test 0", new Object[0]);
            sb2 = new StringBuilder("https://m.turkiye.gov.tr/edk_services/");
            sb2.append(this.f16770g);
            sb2.append("/index.html?url=");
            str2 = this.f16770g;
            sb2.append(str2);
            str3 = "&native=iframe&os=android&v=";
            sb2.append(str3);
            sb2.append(s());
            sb2.append("&mode=");
            sb2.append(str);
            sb2.append("&language=");
            sb2.append(t());
            strValueOf = sb2.toString();
        } else {
            yd.a.f19652a.c("Test 1", new Object[0]);
            strValueOf = String.valueOf(this.f16770g);
        }
        this.f16782v = strValueOf;
        gf.b bVar = this.f16768d;
        if (bVar == null) {
            z();
            return;
        }
        if (bVar == null) {
            h.n("mNetworkHelper");
            throw null;
        }
        if (bVar.a()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("eDevletMobil", "true");
            yd.a.f19652a.c(androidx.browser.browseractions.b.e("connected ", strValueOf), new Object[0]);
            u().f16829g.loadUrl(strValueOf, linkedHashMap);
            return;
        }
        u().f16829g.setVisibility(8);
        u().f16825b.setVisibility(8);
        u().f.f15882a.setVisibility(8);
        u().f16828e.f15873a.setVisibility(0);
        u().f16828e.f15874b.setOnClickListener(new nf.a(7, this));
        u().f16828e.f15874b.setOnClickListener(new ke.a(2, this, strValueOf));
    }

    public final void C(int r52) {
        v.e eVar = new v.e(this);
        v.e.e(eVar, androidx.camera.camera2.internal.c.e(r52, eVar, null, 6, R.string.permission_rationale_dialog_ok), null, new c(), 2);
        v.e.d(eVar, Integer.valueOf(R.string.permission_rationale_dialog_cancel), d.f16787a);
        eVar.show();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context newBase) {
        h.f(newBase, "newBase");
        this.f16783x.getClass();
        applyOverrideConfiguration(ff.b.f(newBase));
        super.attachBaseContext(newBase);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        h.e(applicationContext, "super.getApplicationContext()");
        this.f16783x.getClass();
        return ff.d.a(applicationContext);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Resources resources = super.getResources();
        h.e(resources, "super.getResources()");
        this.f16783x.b(resources);
        return resources;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002b  */
    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onActivityResult(int r2, int r3, android.content.Intent r4) {
        /*
            r1 = this;
            int r0 = r1.f
            if (r2 == r0) goto Ld
            android.webkit.ValueCallback<android.net.Uri[]> r0 = r1.w
            if (r0 == 0) goto L9
            goto Ld
        L9:
            super.onActivityResult(r2, r3, r4)
            return
        Ld:
            r2 = -1
            r0 = 0
            if (r3 != r2) goto L2b
            if (r4 == 0) goto L18
            java.lang.String r2 = r4.getDataString()
            goto L19
        L18:
            r2 = r0
        L19:
            if (r2 == 0) goto L2b
            r3 = 1
            android.net.Uri[] r3 = new android.net.Uri[r3]
            android.net.Uri r2 = android.net.Uri.parse(r2)
            java.lang.String r4 = "parse(dataString)"
            kotlin.jvm.internal.h.e(r2, r4)
            r4 = 0
            r3[r4] = r2
            goto L2c
        L2b:
            r3 = r0
        L2c:
            android.webkit.ValueCallback<android.net.Uri[]> r2 = r1.w
            if (r2 == 0) goto L33
            r2.onReceiveValue(r3)
        L33:
            r1.w = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.servicepage.PaymentPageActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.view.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration newConfig) {
        String str;
        h.f(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        int r22 = newConfig.uiMode & 48;
        if (r22 == 16) {
            str = "light";
        } else if (r22 != 32) {
            return;
        } else {
            str = "dark";
        }
        B(str);
    }

    @Override // u8.a, androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        this.f16783x.d();
        super.onCreate(bundle);
        setContentView(u().f16824a);
        Intent intent = getIntent();
        if (intent != null) {
            intent.getBooleanExtra("isFavMenuActive", false);
            this.f16777p = intent.getBooleanExtra("isCustomPage", false);
            this.f16779r = intent.getBooleanExtra("isEdkFolder", false);
            this.f16780s = intent.getBooleanExtra("isClosable", true);
            intent.getBooleanExtra("hasRedirection", true);
            this.f16776n = intent.getBooleanExtra("isOpenService", false);
            this.f16770g = intent.getStringExtra("folderUrl");
            this.f16773k = intent.getStringExtra("serviceUrl");
            this.f16772j = intent.getStringExtra("baseUrl");
            this.f16771h = intent.getStringExtra("serviceName");
            this.f16774l = intent.getStringExtra("popupMessage");
            this.f16775m = Integer.valueOf(intent.getIntExtra("serviceDomainType", -1));
            intent.getIntExtra("serviceCode", 0);
        }
        String str = this.f16771h;
        if (!(str == null || str.length() == 0)) {
            u().f16826c.setTitle(this.f16771h);
        }
        setSupportActionBar(u().f16826c);
        u().f16826c.setNavigationOnClickListener(new f(7, this));
        final k kVar = new k(this);
        u().f16829g.setDownloadListener(new DownloadListener() { // from class: pg.h
            @Override // android.webkit.DownloadListener
            public final void onDownloadStart(String str2, String str3, String str4, String str5, long j10) {
                int r92 = PaymentPageActivity.f16765y;
                PaymentPageActivity this$0 = this.f13207a;
                kotlin.jvm.internal.h.f(this$0, "this$0");
                BroadcastReceiver onComplete = kVar;
                kotlin.jvm.internal.h.f(onComplete, "$onComplete");
                try {
                    DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str2));
                    request.setMimeType(str5);
                    request.addRequestHeader("cookie", CookieManager.getInstance().getCookie(str2));
                    request.addRequestHeader("User-Agent", str3);
                    String strGuessFileName = URLUtil.guessFileName(str2, str4, str5);
                    File externalFilesDir = this$0.getExternalFilesDir("download");
                    if (externalFilesDir != null) {
                        if (externalFilesDir.exists()) {
                            v9.d.g0(externalFilesDir);
                        } else {
                            externalFilesDir.mkdirs();
                        }
                    }
                    this$0.u().f16828e.f15873a.setVisibility(8);
                    this$0.u().f.f15882a.setVisibility(8);
                    this$0.u().f16829g.setVisibility(0);
                    this$0.u().f16825b.setVisibility(0);
                    request.setDestinationInExternalFilesDir(this$0, "download", strGuessFileName);
                    if (Build.VERSION.SDK_INT >= 33) {
                        this$0.registerReceiver(onComplete, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"), 2);
                    } else {
                        this$0.registerReceiver(onComplete, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
                    }
                    Object systemService = this$0.getSystemService("download");
                    kotlin.jvm.internal.h.d(systemService, "null cannot be cast to non-null type android.app.DownloadManager");
                    ((DownloadManager) systemService).enqueue(request);
                } catch (Exception unused) {
                    this$0.y();
                    this$0.A();
                }
            }
        });
        u().f16829g.setBackgroundColor(0);
        u().f16829g.getSettings().setDomStorageEnabled(true);
        u().f16829g.getSettings().setGeolocationEnabled(true);
        u().f16829g.getSettings().setBuiltInZoomControls(false);
        u().f16829g.getSettings().setSupportZoom(false);
        u().f16829g.getSettings().setLoadWithOverviewMode(false);
        u().f16829g.getSettings().setUseWideViewPort(false);
        u().f16829g.getSettings().setJavaScriptEnabled(true);
        u().f16829g.getSettings().setCacheMode(2);
        u().f16829g.addJavascriptInterface(new pg.e(this), "JSInterface");
        WebSettings settings = u().f16829g.getSettings();
        String userAgentString = u().f16829g.getSettings().getUserAgentString();
        h.e(userAgentString, "mServicePageBinding.wvSe….settings.userAgentString");
        settings.setUserAgentString(userAgentString + "; eDevlet Mobil Agent (edk-" + s() + ')');
        u().f16829g.setWebChromeClient(new i(this));
        u().f16829g.setWebViewClient(new pg.j(this));
        int r52 = getResources().getConfiguration().uiMode & 48;
        B((r52 == 16 || r52 != 32) ? "light" : "dark");
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.f fVar) throws JSONException {
        if (fVar != null) {
            try {
                JSONObject jSONObject = new JSONObject(fVar.f4868a);
                boolean z10 = jSONObject.getBoolean("dialog");
                String string = jSONObject.getString("dialogText");
                String externalLink = jSONObject.getString("link");
                h.e(externalLink, "externalLink");
                if (externalLink.length() > 0) {
                    new v().c(z10, string, externalLink, this);
                }
            } catch (Exception unused) {
            }
        }
        qd.b.b().l(df.f.class);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(g0 g0Var) {
        if (g0Var != null) {
            finish();
        }
        qd.b.b().l(g0.class);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(n nVar) {
        ProgressBar progressBar;
        int r02;
        if (nVar != null) {
            if (nVar.f4881a) {
                progressBar = u().f16825b;
                r02 = 0;
            } else {
                progressBar = u().f16825b;
                r02 = 8;
            }
            progressBar.setVisibility(r02);
        }
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(x xVar) throws JSONException {
        if (xVar != null) {
            try {
                String str = xVar.f4904a;
                qd.b.b().l(x.class);
                a.C0306a c0306a = yd.a.f19652a;
                c0306a.c("payment result " + str, new Object[0]);
                Intent intent = new Intent();
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("url")) {
                    boolean z10 = jSONObject.getBoolean("loadReturnUrl");
                    String string = jSONObject.getString("url");
                    c0306a.c("result url 1 " + string, new Object[0]);
                    if (!(string == null || string.length() == 0)) {
                        intent.putExtra("url", string);
                        intent.putExtra("isLoadResultUrl", true);
                        intent.putExtra("shouldLoadReturn", z10);
                        setResult(-1, intent);
                        finish();
                    }
                }
                this.f16781t = true;
                u().f16829g.clearHistory();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int r22, KeyEvent keyEvent) {
        if (r22 != 4) {
            return super.onKeyDown(r22, keyEvent);
        }
        x();
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (qd.b.b().e(this)) {
            qd.b.b().n(this);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int r32, String[] permissions, int[] grantResults) {
        PaymentPageActivity paymentPageActivity;
        h.f(permissions, "permissions");
        h.f(grantResults, "grantResults");
        super.onRequestPermissionsResult(r32, permissions, grantResults);
        if (r32 != 0) {
            if (r32 != 1) {
                return;
            }
            if (td.a.d(Arrays.copyOf(grantResults, grantResults.length))) {
                try {
                    u().f16829g.evaluateJavascript("callLocationFromJS()", null);
                    return;
                } catch (Exception unused) {
                    return;
                }
            } else if (td.a.b(this, (String[]) Arrays.copyOf(u.f2025p, 2))) {
                C(R.string.permission_location_rationale);
                return;
            } else {
                C(R.string.permission_storage_rationale);
                return;
            }
        }
        if (td.a.d(Arrays.copyOf(grantResults, grantResults.length))) {
            pg.l lVar = u.f2024n;
            if (lVar != null && (paymentPageActivity = lVar.f13213b.get()) != null) {
                paymentPageActivity.v(lVar.f13212a);
            }
        } else if (td.a.b(this, (String[]) Arrays.copyOf(u.f2023m, 1))) {
            ValueCallback<Uri[]> valueCallback = this.w;
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
            }
            this.w = null;
            C(R.string.permission_storage_rationale);
        } else {
            ValueCallback<Uri[]> valueCallback2 = this.w;
            if (valueCallback2 != null) {
                valueCallback2.onReceiveValue(null);
            }
            this.w = null;
            C(R.string.permission_storage_rationale);
        }
        u.f2024n = null;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() throws SecurityException {
        super.onResume();
        if (qd.b.b().e(this)) {
            return;
        }
        qd.b.b().k(this);
    }

    public final String s() {
        String str = this.f16766b;
        if (str != null) {
            return str;
        }
        h.n("mAppVersion");
        throw null;
    }

    public final String t() {
        String str = this.f16767c;
        if (str != null) {
            return str;
        }
        h.n("mLanguage");
        throw null;
    }

    public final ActivityServicePageBinding u() {
        return (ActivityServicePageBinding) this.f16769e.getValue();
    }

    public final void v(String str) {
        try {
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.addCategory("android.intent.category.OPENABLE");
            intent.setType(str);
            Intent intent2 = new Intent("android.intent.action.CHOOSER");
            intent2.putExtra("android.intent.extra.INTENT", intent);
            intent2.putExtra("android.intent.extra.TITLE", "Dosya Seçme");
            startActivityForResult(intent2, this.f);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x006c, code lost:
    
        if (u().f16829g.canGoBack() != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void x() {
        /*
            r5 = this;
            boolean r0 = r5.f16780s
            if (r0 == 0) goto L62
            boolean r0 = r5.f16781t
            if (r0 == 0) goto L36
            tr.gov.turkiye.edevlet.kapisi.servicepage.databinding.ActivityServicePageBinding r0 = r5.u()
            android.webkit.WebView r0 = r0.f16829g
            boolean r0 = r0.canGoBack()
            if (r0 == 0) goto L15
            goto L6e
        L15:
            android.content.Intent r0 = new android.content.Intent
            r0.<init>()
            java.lang.String r1 = "result"
            java.lang.String r2 = ""
            r0.putExtra(r1, r2)
            java.lang.String r1 = "url"
            r0.putExtra(r1, r2)
            java.lang.String r1 = "isLoadResultUrl"
            r2 = 0
            r0.putExtra(r1, r2)
            java.lang.String r1 = "shouldLoadReturn"
            r0.putExtra(r1, r2)
            r1 = -1
            r5.setResult(r1, r0)
            goto L78
        L36:
            v.e r0 = new v.e
            r0.<init>(r5)
            java.lang.String r1 = r5.f16774l
            r2 = 5
            r3 = 0
            v.e.c(r0, r3, r1, r2)
            r1 = 2131952096(0x7f1301e0, float:1.9540625E38)
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            tr.gov.turkiye.edevlet.kapisi.servicepage.PaymentPageActivity$a r2 = new tr.gov.turkiye.edevlet.kapisi.servicepage.PaymentPageActivity$a
            r2.<init>()
            r4 = 2
            v.e.e(r0, r1, r3, r2, r4)
            r1 = 2131952095(0x7f1301df, float:1.9540623E38)
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            tr.gov.turkiye.edevlet.kapisi.servicepage.PaymentPageActivity$b r2 = tr.gov.turkiye.edevlet.kapisi.servicepage.PaymentPageActivity.b.f16785a
            v.e.d(r0, r1, r2)
            r0.show()
            goto L7b
        L62:
            tr.gov.turkiye.edevlet.kapisi.servicepage.databinding.ActivityServicePageBinding r0 = r5.u()
            android.webkit.WebView r0 = r0.f16829g
            boolean r0 = r0.canGoBack()
            if (r0 == 0) goto L78
        L6e:
            tr.gov.turkiye.edevlet.kapisi.servicepage.databinding.ActivityServicePageBinding r0 = r5.u()
            android.webkit.WebView r0 = r0.f16829g
            r0.goBack()
            goto L7b
        L78:
            r5.finish()
        L7b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.servicepage.PaymentPageActivity.x():void");
    }

    public final void y() {
        this.f16778q = false;
        u().f16825b.setVisibility(8);
        u().f16828e.f15873a.setVisibility(8);
        u().f.f15882a.setVisibility(8);
        u().f16829g.setVisibility(0);
    }

    public final void z() {
        u().f16829g.setVisibility(8);
        u().f16825b.setVisibility(8);
        u().f16828e.f15873a.setVisibility(8);
        u().f.f15882a.setVisibility(0);
        u().f.f15886e.setText(getString(R.string.service_error_title));
        u().f.f15885d.setText(getString(R.string.service_error_info));
        u().f.f15883b.setOnClickListener(new zd.a(10, this));
        ImageView imageView = u().f.f15884c;
        h.e(imageView, "mServicePageBinding.webSystemError.iconSearch");
        ge.b.a(imageView, R.drawable.icon_system_error);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(g gVar) {
        if (gVar != null) {
            try {
                if (Build.VERSION.SDK_INT >= 23) {
                    String[] strArr = u.f2025p;
                    if (td.a.a(this, (String[]) Arrays.copyOf(strArr, 2))) {
                        u().f16829g.evaluateJavascript("callLocationFromJS()", null);
                    } else {
                        ActivityCompat.requestPermissions(this, strArr, 1);
                    }
                } else {
                    u().f16829g.evaluateJavascript("callLocationFromJS()", null);
                }
            } catch (Exception unused) {
            }
        }
        qd.b.b().l(g.class);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(z zVar) throws JSONException {
        if (zVar != null) {
            try {
                JSONObject jSONObject = new JSONObject(zVar.f4905a);
                boolean z10 = jSONObject.getBoolean("close");
                String folderName = jSONObject.getString("folder");
                jSONObject.getString("screenName");
                String titleName = jSONObject.getString(MessageBundle.TITLE_ENTRY);
                h.e(folderName, "folderName");
                if (folderName.length() > 0) {
                    h.e(titleName, "titleName");
                    Intent intent = new Intent("action.servicepage.open");
                    intent.putExtra("folderUrl", folderName);
                    intent.putExtra("serviceName", titleName);
                    intent.putExtra("isCustomPage", true);
                    intent.putExtra("isEdkFolder", true);
                    intent.putExtra("isFavMenuActive", false);
                    if (Build.VERSION.SDK_INT >= 34) {
                        intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    startActivity(intent);
                    if (z10) {
                        finish();
                    }
                }
            } catch (Exception unused) {
            }
        }
        qd.b.b().l(z.class);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(i0 i0Var) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        String string;
        FileOutputStream fileOutputStreamOpenFileOutput;
        String str;
        if (i0Var != null) {
            boolean z10 = i0Var.f4875c;
            String content = i0Var.f4873a;
            if (z10) {
                pg.c.c(this, content);
            } else {
                String str2 = i0Var.f4874b;
                boolean z11 = false;
                if (mc.j.x(str2, "pdf")) {
                    string = getString(R.string.filename_pdf);
                    h.e(string, "getString(R.string.filename_pdf)");
                    h.f(content, "content");
                    byte[] bArrA = je.a.a(content);
                    fileOutputStreamOpenFileOutput = openFileOutput(string, 0);
                    try {
                        try {
                            fileOutputStreamOpenFileOutput.write(bArrA);
                            z11 = true;
                        } catch (Exception unused) {
                        }
                        m mVar = m.f9594a;
                        x5.a.f(fileOutputStreamOpenFileOutput, null);
                        if (z11) {
                            str = "application/pdf";
                            pg.c.a(this, string, str);
                        }
                    } finally {
                    }
                } else if (mc.j.x(str2, "xls")) {
                    string = getString(R.string.filename_excel);
                    h.e(string, "getString(R.string.filename_excel)");
                    h.f(content, "content");
                    byte[] bArrA2 = je.a.a(content);
                    fileOutputStreamOpenFileOutput = openFileOutput(string, 0);
                    try {
                        try {
                            fileOutputStreamOpenFileOutput.write(bArrA2);
                            z11 = true;
                        } catch (Exception unused2) {
                        }
                        m mVar2 = m.f9594a;
                        x5.a.f(fileOutputStreamOpenFileOutput, null);
                        if (z11) {
                            str = "application/vnd.ms-excel";
                            pg.c.a(this, string, str);
                        }
                    } finally {
                        try {
                            throw th;
                        } finally {
                        }
                    }
                }
            }
        }
        qd.b.b().l(i0.class);
    }
}
