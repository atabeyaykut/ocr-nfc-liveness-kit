package tr.gov.turkiye.edevlet.kapisi.login;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.nfc.NfcAdapter;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.webkit.WebView;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.fragment.app.DialogFragment;
import androidx.view.result.ActivityResultLauncher;
import androidx.view.result.contract.ActivityResultContracts;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import c5.b4;
import c5.w;
import c5.y;
import com.google.firebase.analytics.FirebaseAnalytics;
import df.a0;
import df.b0;
import df.e0;
import df.j0;
import df.k;
import df.k0;
import df.m0;
import df.n;
import df.o;
import df.o0;
import df.r;
import df.s;
import df.v;
import ie.c;
import ie.e;
import io.realm.g0;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import mc.i;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.json.JSONObject;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.worker.editor.EditorChoiceWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.otp.ApprovalWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.otp.DeleteDeviceWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.otp.TimeWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.section.SectionListWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.update.UpdateCheckWorker;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.login.databinding.ActivityLoginBinding;
import x9.l;
import yd.a;

@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b+\u0010,J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\tH\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\nH\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u000bH\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\fH\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\rH\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u000eH\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019H\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001cH\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001eH\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010 H\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!H\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010$\u001a\u00020#H\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010&\u001a\u00020%H\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010(\u001a\u00020'H\u0007J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010*\u001a\u00020)H\u0007¨\u0006-"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/login/LoginActivity;", "Lu8/a;", "Lxe/a;", NotificationCompat.CATEGORY_EVENT, "Ll9/m;", "onEvent", "Ldf/n;", "loadingEvent", "Ldf/o;", "Ldf/h;", "Ldf/j0;", "Ldf/m0;", "Ldf/v;", "Ldf/f;", "Ldf/o0;", "Ldf/p;", "loginEvent", "Ldf/m;", "languageEvent", "Ldf/e0;", "scanQRCodeEvent", "Ldf/y;", "qrCodeOperation", "Ldf/b;", "barcodeVerificationOperation", "Ldf/l;", "idVerificationEvent", "Ldf/k;", "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceOperation;", "tokenServiceEvent", "Ldf/a0;", "registerDeviceEvent", "Ldf/b0;", "Ldf/s;", "mobileApproveEvent", "Ldf/r;", "mobileApproveResultEvent", "Ldf/k0;", "twoFactorRequestEvent", "Ldf/f0;", "serverTimeEvent", "Ldf/c;", "nfcEvent", "<init>", "()V", "ui-login_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class LoginActivity extends u8.a {
    public static final /* synthetic */ int E = 0;
    public String A;
    public String B;
    public Data C;
    public final ActivityResultLauncher<Intent> D;

    /* renamed from: b, reason: collision with root package name */
    public String f16537b;

    /* renamed from: c, reason: collision with root package name */
    public FirebaseAnalytics f16538c;

    /* renamed from: d, reason: collision with root package name */
    public String f16539d;

    /* renamed from: e, reason: collision with root package name */
    public SharedPreferences.Editor f16540e;
    public SharedPreferences f;

    /* renamed from: g, reason: collision with root package name */
    public gf.b f16541g;

    /* renamed from: m, reason: collision with root package name */
    public boolean f16546m;

    /* renamed from: n, reason: collision with root package name */
    public String f16547n;

    /* renamed from: q, reason: collision with root package name */
    public boolean f16549q;

    /* renamed from: s, reason: collision with root package name */
    public ServiceModelRealm f16551s;

    /* renamed from: t, reason: collision with root package name */
    public String f16552t;

    /* renamed from: v, reason: collision with root package name */
    public String f16553v;
    public boolean w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f16554x;

    /* renamed from: y, reason: collision with root package name */
    public String f16555y;

    /* renamed from: z, reason: collision with root package name */
    public Integer f16556z;

    /* renamed from: h, reason: collision with root package name */
    public final l9.e f16542h = y.v(3, new g(this));

    /* renamed from: j, reason: collision with root package name */
    public final ff.b f16543j = new ff.b(this);

    /* renamed from: k, reason: collision with root package name */
    public boolean f16544k = true;

    /* renamed from: l, reason: collision with root package name */
    public boolean f16545l = true;

    /* renamed from: p, reason: collision with root package name */
    public String f16548p = "-1";

    /* renamed from: r, reason: collision with root package name */
    public int f16550r = 16;

    public static final class a implements e.a {
        @Override // ie.e.a
        public final void onDismiss() {
        }
    }

    public static final class b implements c.a {
        @Override // ie.c.a
        public final void onDismiss() {
        }
    }

    public static final class c implements e.a {
        @Override // ie.e.a
        public final void onDismiss() {
        }
    }

    public static final class d implements c.a {
        @Override // ie.c.a
        public final void onDismiss() {
        }
    }

    public static final class e extends j implements l<v.e, m> {
        public e() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(v.e eVar) {
            v.e dialog = eVar;
            h.f(dialog, "dialog");
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            LoginActivity loginActivity = LoginActivity.this;
            intent.setData(Uri.fromParts("package", loginActivity.getPackageName(), null));
            loginActivity.startActivity(intent);
            dialog.dismiss();
            return m.f9594a;
        }
    }

    public static final class f extends j implements l<v.e, m> {

        /* renamed from: a, reason: collision with root package name */
        public static final f f16558a = new f();

        public f() {
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

    public static final class g extends j implements x9.a<ActivityLoginBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f16559a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(AppCompatActivity appCompatActivity) {
            super(0);
            this.f16559a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivityLoginBinding invoke() {
            LayoutInflater layoutInflater = this.f16559a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivityLoginBinding.inflate(layoutInflater);
        }
    }

    public LoginActivity() {
        ActivityResultLauncher<Intent> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new androidx.camera.camera2.internal.compat.workaround.b(5, this));
        h.e(activityResultLauncherRegisterForActivityResult, "registerForActivityResul…)\n            }\n        }");
        this.D = activityResultLauncherRegisterForActivityResult;
    }

    public static final void s(LoginActivity loginActivity, String str) {
        loginActivity.x().f.setVisibility(8);
        loginActivity.x().f16563d.setVisibility(8);
        loginActivity.x().f16564e.f15878a.setVisibility(8);
        loginActivity.x().f16561b.f15873a.setVisibility(0);
        loginActivity.x().f16561b.f15874b.setOnClickListener(new ke.c(2, loginActivity, str));
    }

    public final SharedPreferences.Editor A() {
        SharedPreferences.Editor editor = this.f16540e;
        if (editor != null) {
            return editor;
        }
        h.n("mSharedPreferenceEditor");
        throw null;
    }

    public final void B(String str, boolean z10) {
        try {
            String strConcat = z10 ? "Service_".concat(mc.j.C(str, " ", "_")) : mc.j.C(str, " ", "_");
            FirebaseAnalytics firebaseAnalytics = this.f16538c;
            if (firebaseAnalytics == null) {
                h.n("firebaseAnalytics");
                throw null;
            }
            b4 b4Var = new b4(2, 0);
            b4Var.d("action", strConcat);
            firebaseAnalytics.a((Bundle) b4Var.f1418a, "EDK_Login");
        } catch (Exception unused) {
        }
    }

    public final void C(int r42) {
        Intent intent = new Intent("action.qr.open");
        if (Build.VERSION.SDK_INT >= 34) {
            intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
        }
        intent.putExtra("comingFrom", 0);
        intent.putExtra("operationType", r42);
        this.D.launch(intent);
    }

    public final void D() {
        int r02 = getResources().getConfiguration().uiMode & 48;
        int r22 = 16;
        if (r02 == 16 || r02 != 32) {
            t("light");
        } else {
            t("dark");
            r22 = 32;
        }
        this.f16550r = r22;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void E(Intent intent) throws Throwable {
        try {
            Bundle extras = intent.getExtras();
            if (extras == null) {
                this.f16548p = "-1";
                this.f16549q = false;
                return;
            }
            if (extras.getBoolean("isAppIndexing", false)) {
                String string = extras.getString("serviceId", "-1");
                h.e(string, "intentExtras.getString(\"serviceId\", \"-1\")");
                this.f16548p = string;
                this.f16549q = true;
            } else {
                this.w = h.a(extras.getString("pushTemplateId", "-1"), "7");
                String string2 = extras.getString("newServiceNotification", "-1");
                h.e(string2, "intentExtras.getString(\"…rviceNotification\", \"-1\")");
                this.f16548p = string2;
                this.f16549q = extras.getBoolean("redirectToMessageBox", false);
            }
            if (h.a(this.f16548p, "-1") || i.t(this.f16548p) == null) {
                return;
            }
            l9.g[] gVarArr = {new l9.g("serviceCode", i.t(this.f16548p))};
            Data.Builder builder = new Data.Builder();
            l9.g gVar = gVarArr[0];
            builder.put((String) gVar.f9582a, gVar.f9583b);
            Data dataBuild = builder.build();
            h.e(dataBuild, "dataBuilder.build()");
            OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(ServiceDetailWorker.class).setInputData(dataBuild).build();
            h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…tData(workerData).build()");
            WorkManager.getInstance(this).enqueue(oneTimeWorkRequestBuild);
        } catch (Exception unused) {
            this.f16548p = "-1";
            this.f16549q = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void F(String str, String str2, boolean z10) {
        WebView webView;
        String str3;
        if (z10) {
            String str4 = this.f16555y;
            if (h.a(str4, "push")) {
                l9.g[] gVarArr = new l9.g[6];
                gVarArr[0] = new l9.g("otpValue", str);
                Data data = this.C;
                if (data == null) {
                    h.n("mPushWorkerData");
                    throw null;
                }
                gVarArr[1] = new l9.g("tidValue", data.getString("tidValue"));
                Data data2 = this.C;
                if (data2 == null) {
                    h.n("mPushWorkerData");
                    throw null;
                }
                gVarArr[2] = new l9.g("tokenValue", data2.getString("tokenValue"));
                Data data3 = this.C;
                if (data3 == null) {
                    h.n("mPushWorkerData");
                    throw null;
                }
                gVarArr[3] = new l9.g("actionValue", data3.getString("actionValue"));
                Data data4 = this.C;
                if (data4 == null) {
                    h.n("mPushWorkerData");
                    throw null;
                }
                gVarArr[4] = new l9.g("didValue", data4.getString("didValue"));
                gVarArr[5] = new l9.g("approvalTypeValue", this.f16556z);
                Data.Builder builder = new Data.Builder();
                while (ı < 6) {
                    l9.g gVar = gVarArr[ı];
                    ı++;
                    builder.put((String) gVar.f9582a, gVar.f9583b);
                }
                Data dataBuild = builder.build();
                h.e(dataBuild, "dataBuilder.build()");
                OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(ApprovalWorker.class).setInputData(dataBuild).build();
                h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…                 .build()");
                WorkManager.getInstance(this).enqueue(oneTimeWorkRequestBuild);
                return;
            }
            if (!h.a(str4, "login")) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", str);
            webView = x().f;
            str3 = "setTwoFactorCode(0," + jSONObject + ')';
        } else {
            if (((str2 == null || str2.length() == 0) ? 1 : 0) == 0) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("errorMessage", str2);
                x().f.evaluateJavascript("setTwoFactorCode(1," + jSONObject2 + ')', null);
            }
            if (!h.a(this.f16555y, "login")) {
                return;
            }
            webView = x().f;
            str3 = "setTwoFactorCode(1,null)";
        }
        webView.evaluateJavascript(str3, null);
    }

    public final void G(String newLanguage) {
        ff.b bVar = this.f16543j;
        bVar.getClass();
        h.f(newLanguage, "newLanguage");
        Locale locale = new Locale(newLanguage);
        ff.a aVar = ff.a.f5619a;
        Locale localeA = ff.a.a(this);
        aVar.getClass();
        Locale localeC = ff.a.c(this, localeA);
        a.C0306a c0306a = yd.a.f19652a;
        c0306a.c("Language Locale 0 : " + locale + " 1 : " + localeC, new Object[0]);
        if (h.a(locale.toString(), localeC.toString())) {
            return;
        }
        c0306a.c("Language Locale : 1", new Object[0]);
        ff.a.d(bVar.f5620a, locale);
        bVar.c();
    }

    public final void H() {
        x().f16563d.setVisibility(8);
        x().f16561b.f15873a.setVisibility(8);
        x().f16564e.f15878a.setVisibility(8);
        x().f.setVisibility(0);
    }

    public final void I() {
        x().f.setVisibility(8);
        x().f16563d.setVisibility(8);
        x().f16561b.f15873a.setVisibility(8);
        x().f16564e.f15878a.setVisibility(0);
        x().f16564e.f15881d.setText(getString(R.string.no_login_connection_title));
        x().f16564e.f15880c.setText(getString(R.string.no_login_connection_content));
        ImageView imageView = x().f16564e.f15879b;
        h.e(imageView, "mLoginViewBinding.loginSystemError.iconSearch");
        ge.b.a(imageView, R.drawable.icon_system_error);
    }

    public final void J() {
        x().f.setVisibility(8);
        x().f16561b.f15873a.setVisibility(8);
        x().f16564e.f15878a.setVisibility(8);
        x().f16563d.setVisibility(0);
    }

    public final void K(int r52) {
        v.e eVar = new v.e(this);
        v.e.e(eVar, androidx.camera.camera2.internal.c.e(R.string.permission_id_scan_camera_rationale, eVar, null, 6, R.string.permission_rationale_dialog_ok), null, new e(), 2);
        v.e.d(eVar, Integer.valueOf(R.string.permission_rationale_dialog_cancel), f.f16558a);
        eVar.show();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void L(int r5, java.lang.String r6) {
        /*
            r4 = this;
            java.lang.String r0 = "success"
            boolean r0 = kotlin.jvm.internal.h.a(r6, r0)
            if (r0 == 0) goto Lf
            r6 = 2131099945(0x7f060129, float:1.7812258E38)
            r0 = 2131231040(0x7f080140, float:1.807815E38)
            goto L27
        Lf:
            java.lang.String r0 = "warning"
            boolean r6 = kotlin.jvm.internal.h.a(r6, r0)
            if (r6 == 0) goto L21
            r6 = 2131099988(0x7f060154, float:1.7812345E38)
            r0 = 2131231041(0x7f080141, float:1.8078152E38)
            r1 = 2131099685(0x7f060025, float:1.781173E38)
            goto L2a
        L21:
            r6 = 2131099784(0x7f060088, float:1.781193E38)
            r0 = 2131231038(0x7f08013e, float:1.8078146E38)
        L27:
            r1 = 2131099989(0x7f060155, float:1.7812347E38)
        L2a:
            int r2 = ke.d.f8929a
            tr.gov.turkiye.edevlet.kapisi.login.databinding.ActivityLoginBinding r2 = r4.x()
            androidx.constraintlayout.widget.ConstraintLayout r2 = r2.f16562c
            java.lang.String r3 = "mLoginViewBinding.loginContainer"
            kotlin.jvm.internal.h.e(r2, r3)
            int r6 = androidx.core.content.ContextCompat.getColor(r4, r6)
            ke.d r5 = ke.d.a.d(r2, r5, r0, r6, r1)
            if (r5 == 0) goto L44
            r5.show()
        L44:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.login.LoginActivity.L(int, java.lang.String):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void M(String str, String str2, String str3) {
        String string;
        int r12 = 0;
        SharedPreferences sharedPreferences = getSharedPreferences("settings", 0);
        String string2 = null;
        if (sharedPreferences != null) {
            try {
                string = sharedPreferences.getString("did", null);
            } catch (Exception unused) {
            }
        } else {
            string = null;
        }
        SharedPreferences sharedPreferences2 = getSharedPreferences("MainActivity", 0);
        if (sharedPreferences2 != null) {
            try {
                string2 = sharedPreferences2.getString("cookie", null);
            } catch (Exception unused2) {
            }
        }
        l9.g[] gVarArr = {new l9.g("tidValue", str2), new l9.g("tokenValue", string2), new l9.g("actionValue", str3), new l9.g("didValue", string)};
        Data.Builder builder = new Data.Builder();
        while (r12 < 4) {
            l9.g gVar = gVarArr[r12];
            r12++;
            builder.put((String) gVar.f9582a, gVar.f9583b);
        }
        Data dataBuild = builder.build();
        h.e(dataBuild, "dataBuilder.build()");
        this.C = dataBuild;
        this.f16553v = cg.j.c(this, str);
        OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(TimeWorker.class).build();
        h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilder<TimeWorker>().build()");
        WorkManager.getInstance(this).enqueue(oneTimeWorkRequestBuild);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context newBase) {
        h.f(newBase, "newBase");
        this.f16543j.getClass();
        applyOverrideConfiguration(ff.b.f(newBase));
        super.attachBaseContext(newBase);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        h.e(applicationContext, "super.getApplicationContext()");
        this.f16543j.getClass();
        return ff.d.a(applicationContext);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Resources resources = super.getResources();
        h.e(resources, "super.getResources()");
        this.f16543j.b(resources);
        return resources;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, android.app.Activity
    public final void onActivityResult(int r6, int r72, Intent intent) {
        if (r6 == 51) {
            if (r72 == -1) {
                String stringExtra = intent != null ? intent.getStringExtra("result") : null;
                x().f.evaluateJavascript("setCode(0," + stringExtra + ") ", null);
            } else if (r72 == 0) {
                x().f.evaluateJavascript("setCode(1,null)", null);
            }
        }
        super.onActivityResult(r6, r72, intent);
    }

    @Override // androidx.view.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (this.f16546m && x().f.canGoBack()) {
            x().f.goBack();
        } else {
            finish();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.view.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration newConfig) {
        h.f(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        int r42 = newConfig.uiMode;
        if (r42 != this.f16550r) {
            int r43 = r42 & 48;
            int r12 = 16;
            if (r43 == 16 || r43 != 32) {
                t("light");
            } else {
                t("dark");
                r12 = 32;
            }
            this.f16550r = r12;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003b  */
    @Override // u8.a, androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate(android.os.Bundle r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 468
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.login.LoginActivity.onCreate(android.os.Bundle):void");
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.b barcodeVerificationOperation) {
        h.f(barcodeVerificationOperation, "barcodeVerificationOperation");
        try {
            if (y().a()) {
                Intent intent = new Intent("action.barcode.verification");
                if (Build.VERSION.SDK_INT >= 34) {
                    intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
                }
                startActivity(intent);
            } else {
                L(R.string.toast_error_info, "warning");
            }
        } catch (Exception unused) {
        }
        qd.b.b().l(df.b.class);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.c nfcEvent) {
        NfcAdapter defaultAdapter;
        WebView webView;
        String str;
        h.f(nfcEvent, "nfcEvent");
        try {
            defaultAdapter = NfcAdapter.getDefaultAdapter(this);
        } catch (Exception unused) {
            x().f.evaluateJavascript("isNfcSupported(0) ", null);
        }
        if (defaultAdapter != null && defaultAdapter.isEnabled()) {
            webView = x().f;
            str = "isNfcSupported(1)";
        } else if (defaultAdapter == null || defaultAdapter.isEnabled()) {
            x().f.evaluateJavascript("isNfcSupported(0) ", null);
            qd.b.b().l(df.c.class);
        } else {
            L(R.string.nfc_settings_close, "warning");
            webView = x().f;
            str = "isNfcSupported(2)";
        }
        webView.evaluateJavascript(str, null);
        qd.b.b().l(df.c.class);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(e0 scanQRCodeEvent) {
        h.f(scanQRCodeEvent, "scanQRCodeEvent");
        try {
            if (!y().a()) {
                L(R.string.toast_error_info, "warning");
            } else if (Build.VERSION.SDK_INT >= 23) {
                w.B(this, 1);
            } else {
                C(1);
            }
        } catch (Exception unused) {
        }
        qd.b.b().l(e0.class);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.h event) {
        h.f(event, "event");
        this.f16546m = event.f4871a;
        qd.b.b().l(df.h.class);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.m languageEvent) {
        h.f(languageEvent, "languageEvent");
        String str = languageEvent.f4880a;
        if (str.length() > 0) {
            A().putString("language", str);
            A().apply();
            G(str);
            B("Change Language", false);
        }
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.y qrCodeOperation) {
        h.f(qrCodeOperation, "qrCodeOperation");
        try {
            if (!y().a()) {
                L(R.string.toast_error_info, "warning");
            } else if (Build.VERSION.SDK_INT >= 23) {
                w.B(this, 3);
            } else {
                C(3);
            }
        } catch (Exception unused) {
        }
        qd.b.b().l(df.y.class);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(xe.a aVar) {
        ServiceModelRealm serviceModelRealm;
        if (aVar != null) {
            if (!aVar.f19225a || (serviceModelRealm = aVar.f19226b) == null) {
                this.f16548p = "-1";
                this.f16549q = false;
            } else {
                this.f16551s = serviceModelRealm;
            }
        }
        qd.b.b().l(xe.a.class);
    }

    @Override // androidx.view.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) throws Throwable {
        super.onNewIntent(intent);
        setIntent(intent);
        Intent intent2 = getIntent();
        h.e(intent2, "intent");
        E(intent2);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (qd.b.b().e(this)) {
            qd.b.b().n(this);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int r22, String[] permissions, int[] grantResults) {
        LoginActivity loginActivity;
        h.f(permissions, "permissions");
        h.f(grantResults, "grantResults");
        super.onRequestPermissionsResult(r22, permissions, grantResults);
        if (r22 == 0) {
            if (td.a.d(Arrays.copyOf(grantResults, grantResults.length))) {
                cg.e eVar = w.f2084c;
                if (eVar != null && (loginActivity = eVar.f2401b.get()) != null) {
                    loginActivity.C(eVar.f2400a);
                }
            } else if (td.a.b(this, (String[]) Arrays.copyOf(w.f2083b, 1))) {
                K(R.string.permission_id_scan_camera_rationale);
            } else {
                K(R.string.permission_id_scan_camera_rationale);
            }
            w.f2084c = null;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() throws SecurityException {
        FirebaseAnalytics firebaseAnalytics;
        super.onResume();
        if (!qd.b.b().e(this)) {
            qd.b.b().k(this);
        }
        this.f16543j.e(this);
        try {
            OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(UpdateCheckWorker.class).build();
            h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…ateCheckWorker>().build()");
            WorkManager.getInstance(this).enqueue(oneTimeWorkRequestBuild);
        } catch (Exception unused) {
        }
        try {
            firebaseAnalytics = this.f16538c;
        } catch (Exception unused2) {
        }
        if (firebaseAnalytics == null) {
            h.n("firebaseAnalytics");
            throw null;
        }
        b4 b4Var = new b4(2, 0);
        b4Var.d("screen_name", "Login_Screen");
        b4Var.d("screen_class", "LoginActivity");
        firebaseAnalytics.a((Bundle) b4Var.f1418a, "screen_view");
        if (this.f16554x) {
            this.f16554x = false;
            D();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:67:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0183  */
    /* JADX WARN: Type inference failed for: r12v13, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r12v39, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r12v41, types: [T, java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void t(java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.login.LoginActivity.t(java.lang.String):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void u(String str) {
        try {
            l9.g[] gVarArr = {new l9.g("tidValue", str)};
            Data.Builder builder = new Data.Builder();
            l9.g gVar = gVarArr[0];
            builder.put((String) gVar.f9582a, gVar.f9583b);
            Data dataBuild = builder.build();
            h.e(dataBuild, "dataBuilder.build()");
            OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(DeleteDeviceWorker.class).setInputData(dataBuild).build();
            h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…\n                .build()");
            WorkManager.getInstance(this).enqueue(oneTimeWorkRequestBuild);
        } catch (Exception unused) {
        }
    }

    public final void v() {
        try {
            g0.t().s(new ab.b());
        } catch (Exception unused) {
        }
        try {
            OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(EditorChoiceWorker.class).build();
            h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…orChoiceWorker>().build()");
            OneTimeWorkRequest oneTimeWorkRequestBuild2 = new OneTimeWorkRequest.Builder(SectionListWorker.class).build();
            h.e(oneTimeWorkRequestBuild2, "OneTimeWorkRequestBuilde…tionListWorker>().build()");
            WorkManager.getInstance(this).enqueue(oneTimeWorkRequestBuild);
            WorkManager.getInstance(this).enqueue(oneTimeWorkRequestBuild2);
        } catch (Exception unused2) {
        }
    }

    public final ActivityLoginBinding x() {
        return (ActivityLoginBinding) this.f16542h.getValue();
    }

    public final gf.b y() {
        gf.b bVar = this.f16541g;
        if (bVar != null) {
            return bVar;
        }
        h.n("mNetworkHelper");
        throw null;
    }

    public final SharedPreferences z() {
        SharedPreferences sharedPreferences = this.f;
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        h.n("mSharedPreference");
        throw null;
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
                    new cg.j().e(z10, string, externalLink, this);
                }
            } catch (Exception unused) {
            }
        }
        qd.b.b().l(df.f.class);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(k idVerificationEvent) {
        int r32;
        DialogFragment cVar;
        h.f(idVerificationEvent, "idVerificationEvent");
        if (y().a()) {
            try {
                NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(this);
                if (defaultAdapter == null || !defaultAdapter.isEnabled()) {
                    if (defaultAdapter != null && !defaultAdapter.isEnabled()) {
                        cVar = new ie.e(new c());
                    } else {
                        cVar = new ie.c(new d());
                    }
                    cVar.show(getSupportFragmentManager(), ie.e.class.getSimpleName());
                } else if (Build.VERSION.SDK_INT >= 23) {
                    w.B(this, 2);
                } else {
                    C(2);
                }
            } catch (Exception unused) {
                r32 = R.string.toast_error;
            }
            qd.b.b().l(k.class);
        }
        r32 = R.string.toast_error_info;
        L(r32, "warning");
        qd.b.b().l(k.class);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.l idVerificationEvent) throws JSONException {
        DialogFragment cVar;
        h.f(idVerificationEvent, "idVerificationEvent");
        try {
            NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(this);
            x().f.evaluateJavascript("returnHomePage()", null);
            H();
            if (defaultAdapter != null && defaultAdapter.isEnabled()) {
                String str = idVerificationEvent.f4878a;
                if (str.length() > 0) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        String operationType = jSONObject.getString("verificationByIdCode");
                        String challengeValue = jSONObject.getString("challenge");
                        String tokenValue = jSONObject.getString("token");
                        String uuidValue = jSONObject.getString("uuid");
                        String phoneNumber = jSONObject.getString("cepTel");
                        String countryCode = jSONObject.getString("uKod");
                        this.f16554x = true;
                        h.e(operationType, "operationType");
                        h.e(challengeValue, "challengeValue");
                        h.e(tokenValue, "tokenValue");
                        h.e(uuidValue, "uuidValue");
                        h.e(phoneNumber, "phoneNumber");
                        h.e(countryCode, "countryCode");
                        startActivity(ze.a.f(operationType, challengeValue, tokenValue, uuidValue, phoneNumber, countryCode));
                    } catch (JSONException e10) {
                        e10.printStackTrace();
                    }
                }
            } else {
                if (defaultAdapter != null && !defaultAdapter.isEnabled()) {
                    cVar = new ie.e(new a());
                } else {
                    cVar = new ie.c(new b());
                }
                cVar.show(getSupportFragmentManager(), ie.e.class.getSimpleName());
            }
        } catch (Exception unused) {
        }
        qd.b.b().l(df.l.class);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(n nVar) {
        if (nVar != null) {
            if (nVar.f4881a) {
                J();
            } else {
                x().f16563d.setVisibility(8);
            }
        }
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(o oVar) {
        if (oVar != null) {
            if (!oVar.f4889a) {
                x().f16563d.setVisibility(8);
            } else {
                this.f16545l = false;
                J();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0197, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x029d  */
    @qd.i(sticky = true, threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onEvent(df.p r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 768
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.login.LoginActivity.onEvent(df.p):void");
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(r mobileApproveResultEvent) {
        h.f(mobileApproveResultEvent, "mobileApproveResultEvent");
        try {
            qd.b.b().l(r.class);
            if (mobileApproveResultEvent.f4895a) {
                String str = this.B;
                if (str == null) {
                    h.n("mUserChoice");
                    throw null;
                }
                if (h.a(str, "1")) {
                    L(R.string.message_text_approve, "success");
                } else {
                    L(R.string.message_text_cancel, "warning");
                }
            } else {
                L(R.string.toast_error, "error");
            }
            NotificationManagerCompat notificationManagerCompatFrom = NotificationManagerCompat.from(this);
            h.e(notificationManagerCompatFrom, "from(this@LoginActivity)");
            notificationManagerCompatFrom.cancel(1923);
        } catch (Exception unused) {
        }
        x().f.evaluateJavascript("returnHomePage()", null);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(s mobileApproveEvent) throws JSONException {
        h.f(mobileApproveEvent, "mobileApproveEvent");
        this.f16555y = "push";
        this.f16556z = 3;
        try {
            JSONObject jSONObject = new JSONObject(mobileApproveEvent.f4896a);
            String tid = jSONObject.getString("tid");
            String ukValue = jSONObject.getString("uk");
            String string = jSONObject.getString("op");
            h.e(string, "contentJSON.getString(\"op\")");
            this.B = string;
            h.e(ukValue, "ukValue");
            boolean z10 = true;
            if (ukValue.length() > 0) {
                SharedPreferences sharedPreferences = getSharedPreferences("settings", 0);
                String string2 = sharedPreferences.getString("did", null);
                String string3 = sharedPreferences.getString("esk", null);
                if (string2 == null || string2.length() == 0) {
                    if (string3 == null || string3.length() == 0) {
                        z10 = false;
                    }
                }
                if (z10) {
                    h.e(tid, "tid");
                    String str = this.B;
                    if (str == null) {
                        h.n("mUserChoice");
                        throw null;
                    }
                    M(ukValue, tid, str);
                } else {
                    u(tid);
                }
            } else {
                F(null, "UK or TID Value Not Found", false);
            }
        } catch (Exception e10) {
            F(null, "Mobile Approve Unexpected Error " + e10.getMessage(), false);
        }
        qd.b.b().l(s.class);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(v event) {
        h.f(event, "event");
        try {
            String str = event.f4899b;
            String str2 = event.f4900c;
            String str3 = event.f4898a;
            String str4 = event.f4901d;
            startActivity(ze.a.d(str3, str, str2, str4, event.f4902e));
            B(str4, true);
        } catch (Exception unused) {
        }
        qd.b.b().l(v.class);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(a0 registerDeviceEvent) throws JSONException {
        h.f(registerDeviceEvent, "registerDeviceEvent");
        try {
            JSONObject jSONObject = new JSONObject(registerDeviceEvent.f4865a);
            String eskValue = jSONObject.getString("esk");
            String didValue = jSONObject.getString("did");
            h.e(eskValue, "eskValue");
            boolean z10 = true;
            if (eskValue.length() > 0) {
                h.e(didValue, "didValue");
                if (didValue.length() <= 0) {
                    z10 = false;
                }
                if (z10) {
                    SharedPreferences oldPreferences = getSharedPreferences("settings", 0);
                    h.e(oldPreferences, "oldPreferences");
                    SharedPreferences.Editor editor = oldPreferences.edit();
                    h.e(editor, "editor");
                    editor.putString("esk", eskValue);
                    editor.putString("did", didValue);
                    editor.apply();
                    NotificationManagerCompat notificationManagerCompatFrom = NotificationManagerCompat.from(this);
                    h.e(notificationManagerCompatFrom, "from(this@LoginActivity)");
                    boolean zAreNotificationsEnabled = notificationManagerCompatFrom.areNotificationsEnabled();
                    String str = Build.MODEL;
                    String manufacturer = Build.MANUFACTURER;
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("pid", this.f16552t);
                    StringBuilder sb2 = new StringBuilder();
                    h.e(manufacturer, "manufacturer");
                    sb2.append(ge.f.a(manufacturer));
                    sb2.append(' ');
                    sb2.append(str);
                    jSONObject2.put("model", sb2.toString());
                    jSONObject2.put("appId", "tr.gov.turkiye.edevlet.kapisi.v21");
                    jSONObject2.put("isNotificationEnabled", zAreNotificationsEnabled);
                    x().f.evaluateJavascript("registerationResult(0," + jSONObject2 + ") ", null);
                }
            }
        } catch (Exception unused) {
            x().f.evaluateJavascript("registerationResult(1,null)", null);
        }
        qd.b.b().l(a0.class);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(b0 b0Var) {
        SharedPreferences sharedPreferences;
        if (b0Var != null) {
            try {
                if (b0Var.f4866a && (sharedPreferences = getSharedPreferences("settings", 0)) != null) {
                    SharedPreferences.Editor editor = sharedPreferences.edit();
                    h.e(editor, "editor");
                    editor.remove("did");
                    editor.remove("esk");
                    editor.apply();
                }
            } catch (Exception unused) {
            }
        }
        qd.b.b().l(b0.class);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0042 A[Catch: Exception -> 0x0059, TryCatch #0 {Exception -> 0x0059, blocks: (B:3:0x0007, B:5:0x001c, B:7:0x0020, B:13:0x002c, B:15:0x0032, B:17:0x0036, B:23:0x0042, B:25:0x0046, B:26:0x0053), top: B:32:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0053 A[Catch: Exception -> 0x0059, TRY_LEAVE, TryCatch #0 {Exception -> 0x0059, blocks: (B:3:0x0007, B:5:0x001c, B:7:0x0020, B:13:0x002c, B:15:0x0032, B:17:0x0036, B:23:0x0042, B:25:0x0046, B:26:0x0053), top: B:32:0x0007 }] */
    @qd.i(sticky = true, threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    @android.annotation.SuppressLint({"SimpleDateFormat"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onEvent(df.f0 r6) throws java.text.ParseException {
        /*
            r5 = this;
            java.lang.String r0 = "serverTimeEvent"
            kotlin.jvm.internal.h.f(r6, r0)
            r0 = 0
            r1 = 0
            java.text.SimpleDateFormat r2 = new java.text.SimpleDateFormat     // Catch: java.lang.Exception -> L59
            java.lang.String r3 = "dd/MM/yyyy HH:mm:ss"
            r2.<init>(r3)     // Catch: java.lang.Exception -> L59
            java.lang.String r3 = "GMT+3"
            java.util.TimeZone r3 = java.util.TimeZone.getTimeZone(r3)     // Catch: java.lang.Exception -> L59
            r2.setTimeZone(r3)     // Catch: java.lang.Exception -> L59
            boolean r3 = r6.f4869a     // Catch: java.lang.Exception -> L59
            r4 = 1
            if (r3 == 0) goto L31
            java.lang.String r6 = r6.f4870b     // Catch: java.lang.Exception -> L59
            if (r6 == 0) goto L29
            int r3 = r6.length()     // Catch: java.lang.Exception -> L59
            if (r3 != 0) goto L27
            goto L29
        L27:
            r3 = 0
            goto L2a
        L29:
            r3 = 1
        L2a:
            if (r3 != 0) goto L31
            java.util.Date r6 = r2.parse(r6)     // Catch: java.lang.Exception -> L59
            goto L32
        L31:
            r6 = r1
        L32:
            java.lang.String r2 = r5.f16553v     // Catch: java.lang.Exception -> L59
            if (r2 == 0) goto L3f
            int r2 = r2.length()     // Catch: java.lang.Exception -> L59
            if (r2 != 0) goto L3d
            goto L3f
        L3d:
            r2 = 0
            goto L40
        L3f:
            r2 = 1
        L40:
            if (r2 != 0) goto L53
            java.lang.String r2 = r5.f16553v     // Catch: java.lang.Exception -> L59
            if (r2 == 0) goto L6f
            jf.d r3 = new jf.d     // Catch: java.lang.Exception -> L59
            r3.<init>()     // Catch: java.lang.Exception -> L59
            java.lang.String r6 = r3.a(r2, r6)     // Catch: java.lang.Exception -> L59
            r5.F(r6, r1, r4)     // Catch: java.lang.Exception -> L59
            goto L6f
        L53:
            java.lang.String r6 = "TOTP Code Generation Error"
            r5.F(r1, r6, r0)     // Catch: java.lang.Exception -> L59
            goto L6f
        L59:
            r6 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "TOTP Code Generation Error "
            r2.<init>(r3)
            java.lang.String r6 = r6.getMessage()
            r2.append(r6)
            java.lang.String r6 = r2.toString()
            r5.F(r1, r6, r0)
        L6f:
            qd.b r6 = qd.b.b()
            java.lang.Class<df.f0> r0 = df.f0.class
            r6.l(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.login.LoginActivity.onEvent(df.f0):void");
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(j0 event) {
        h.f(event, "event");
        if (event.f4876a) {
            SharedPreferences sharedPreferencesZ = z();
            boolean z10 = sharedPreferencesZ.getBoolean("isFirstInitialize", false);
            String string = sharedPreferencesZ.getString("language", "tr");
            SharedPreferences.Editor editor = sharedPreferencesZ.edit();
            h.e(editor, "editor");
            editor.remove("as");
            editor.clear();
            editor.putBoolean("isFirstInitialize", z10);
            editor.putString("language", string);
            editor.apply();
            g0.t().s(new androidx.camera.camera2.internal.c());
            SharedPreferences oldPreferences = getSharedPreferences("settings", 0);
            h.e(oldPreferences, "oldPreferences");
            SharedPreferences.Editor editor2 = oldPreferences.edit();
            h.e(editor2, "editor");
            editor2.clear();
            editor2.apply();
            B("Delete User", false);
        }
        qd.b.b().l(j0.class);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(k0 twoFactorRequestEvent) throws JSONException {
        h.f(twoFactorRequestEvent, "twoFactorRequestEvent");
        this.f16555y = "login";
        try {
            String ukValue = new JSONObject(twoFactorRequestEvent.f4877a).getString("uk");
            h.e(ukValue, "ukValue");
            if (ukValue.length() > 0) {
                this.f16553v = cg.j.c(this, ukValue);
                OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(TimeWorker.class).build();
                h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilder<TimeWorker>().build()");
                WorkManager.getInstance(this).enqueue(oneTimeWorkRequestBuild);
            } else {
                F(null, "UK Value Not Found", false);
            }
        } catch (Exception e10) {
            F(null, "Two Factor Request Error " + e10.getMessage(), false);
        }
        qd.b.b().l(k0.class);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(m0 event) {
        String str;
        h.f(event, "event");
        try {
            str = this.f16537b;
        } catch (Exception unused) {
            x().f.evaluateJavascript("setCode(2,null)", null);
        }
        if (str != null) {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("tr.gov.turkiye.edevlet.kapisi.sifre", "tr.gov.turkiye.edevlet.kapisi.sifre.AutoGenerateCodeActivity"));
            intent.putExtra("callFromEDevlet", "message");
            intent.putExtra("callerVersion", str);
            intent.putExtra("callerPackage", "tr.gov.turkiye.edevlet.kapisi.v21");
            startActivityForResult(intent, 51);
            qd.b.b().l(m0.class);
            return;
        }
        h.n("appVersion");
        throw null;
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(o0 o0Var) {
        if (o0Var != null) {
            try {
                new cg.j().f(this, o0Var.f4890a, o0Var.f4891b, o0Var.f4892c, A(), z());
            } catch (Exception unused) {
            }
        }
        qd.b.b().l(o0.class);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0097 A[Catch: ParseException -> 0x009b, TRY_LEAVE, TryCatch #0 {ParseException -> 0x009b, blocks: (B:16:0x003e, B:23:0x004c, B:27:0x0055, B:29:0x005d, B:31:0x0088, B:32:0x008d, B:33:0x0091, B:34:0x0096, B:35:0x0097), top: B:49:0x003e }] */
    @qd.i(sticky = true, threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onEvent(tr.gov.turkiye.edevlet.kapisi.data.nfc.TokenServiceOperation r9) {
        /*
            r8 = this;
            java.lang.String r0 = "tokenServiceEvent"
            kotlin.jvm.internal.h.f(r9, r0)
            tr.gov.turkiye.edevlet.kapisi.login.databinding.ActivityLoginBinding r0 = r8.x()
            android.webkit.WebView r0 = r0.f
            java.lang.String r1 = "returnHomePage()"
            r2 = 0
            r0.evaluateJavascript(r1, r2)
            boolean r0 = r9.getIsSuccess()
            r1 = 2131952284(0x7f13029c, float:1.9541006E38)
            java.lang.String r3 = "error"
            if (r0 == 0) goto L9f
            tr.gov.turkiye.edevlet.kapisi.data.nfc.TokenServiceResult r0 = r9.getContent()
            if (r0 == 0) goto Ld4
            tr.gov.turkiye.edevlet.kapisi.data.nfc.TokenServiceResult r0 = r9.getContent()
            if (r0 == 0) goto L2d
            java.lang.String r0 = r0.getToken()
            goto L2e
        L2d:
            r0 = r2
        L2e:
            tr.gov.turkiye.edevlet.kapisi.data.nfc.TokenServiceResult r9 = r9.getContent()
            if (r9 == 0) goto L39
            java.lang.String r9 = r9.getChallenge()
            goto L3a
        L39:
            r9 = r2
        L3a:
            r4 = 0
            r5 = 1
            if (r0 == 0) goto L47
            int r6 = r0.length()     // Catch: java.text.ParseException -> L9b
            if (r6 != 0) goto L45
            goto L47
        L45:
            r6 = 0
            goto L48
        L47:
            r6 = 1
        L48:
            if (r6 != 0) goto L97
            if (r9 == 0) goto L52
            int r6 = r9.length()     // Catch: java.text.ParseException -> L9b
            if (r6 != 0) goto L53
        L52:
            r4 = 1
        L53:
            if (r4 != 0) goto L97
            r8.f16554x = r5     // Catch: java.text.ParseException -> L9b
            java.lang.String r4 = "4"
            java.lang.String r5 = r8.A     // Catch: java.text.ParseException -> L9b
            if (r5 == 0) goto L91
            java.lang.String r2 = "operationType"
            java.lang.String r6 = "challengeValue"
            kotlin.jvm.internal.h.f(r9, r6)     // Catch: java.text.ParseException -> L9b
            java.lang.String r6 = "tokenValue"
            kotlin.jvm.internal.h.f(r0, r6)     // Catch: java.text.ParseException -> L9b
            android.content.Intent r6 = new android.content.Intent     // Catch: java.text.ParseException -> L9b
            java.lang.String r7 = "action.verification.open"
            r6.<init>(r7)     // Catch: java.text.ParseException -> L9b
            r6.putExtra(r2, r4)     // Catch: java.text.ParseException -> L9b
            java.lang.String r2 = "challenge"
            r6.putExtra(r2, r9)     // Catch: java.text.ParseException -> L9b
            java.lang.String r9 = "token"
            r6.putExtra(r9, r0)     // Catch: java.text.ParseException -> L9b
            java.lang.String r9 = "uuid"
            r6.putExtra(r9, r5)     // Catch: java.text.ParseException -> L9b
            int r9 = android.os.Build.VERSION.SDK_INT     // Catch: java.text.ParseException -> L9b
            r0 = 34
            if (r9 < r0) goto L8d
            java.lang.String r9 = "tr.gov.turkiye.edevlet.kapisi"
            r6.setPackage(r9)     // Catch: java.text.ParseException -> L9b
        L8d:
            r8.startActivity(r6)     // Catch: java.text.ParseException -> L9b
            goto Ld4
        L91:
            java.lang.String r9 = "mScanUUIDValue"
            kotlin.jvm.internal.h.n(r9)     // Catch: java.text.ParseException -> L9b
            throw r2     // Catch: java.text.ParseException -> L9b
        L97:
            r8.L(r1, r3)     // Catch: java.text.ParseException -> L9b
            goto Ld4
        L9b:
            r8.L(r1, r3)
            goto Ld4
        L9f:
            tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult r9 = r9.getException()
            if (r9 == 0) goto La9
            java.lang.Throwable r2 = r9.getThrowable()
        La9:
            boolean r9 = r2 instanceof tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithMessage
            if (r9 == 0) goto Ld1
            tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithMessage r2 = (tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithMessage) r2
            java.lang.String r9 = r2.getErrorMessage()
            int r0 = ke.d.f8929a
            tr.gov.turkiye.edevlet.kapisi.login.databinding.ActivityLoginBinding r0 = r8.x()
            androidx.constraintlayout.widget.ConstraintLayout r0 = r0.f16562c
            java.lang.String r1 = "mLoginViewBinding.loginContainer"
            kotlin.jvm.internal.h.e(r0, r1)
            r1 = 2131099784(0x7f060088, float:1.781193E38)
            int r1 = androidx.core.content.ContextCompat.getColor(r8, r1)
            ke.d r9 = ke.d.a.b(r0, r9, r1)
            if (r9 == 0) goto Ld4
            r9.show()
            goto Ld4
        Ld1:
            r8.L(r1, r3)
        Ld4:
            qd.b r9 = qd.b.b()
            java.lang.Class<tr.gov.turkiye.edevlet.kapisi.data.nfc.TokenServiceOperation> r0 = tr.gov.turkiye.edevlet.kapisi.data.nfc.TokenServiceOperation.class
            r9.l(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.login.LoginActivity.onEvent(tr.gov.turkiye.edevlet.kapisi.data.nfc.TokenServiceOperation):void");
    }
}
