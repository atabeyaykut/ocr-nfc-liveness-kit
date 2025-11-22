package tr.gov.turkiye.edevlet.kapisi.servicepage;

import android.app.Activity;
import android.app.DownloadManager;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.Location;
import android.location.LocationManager;
import android.net.Uri;
import android.nfc.NfcAdapter;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.provider.CalendarContract;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.CookieManager;
import android.webkit.DownloadListener;
import android.webkit.URLUtil;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import androidx.core.location.LocationCompat;
import androidx.view.result.ActivityResultLauncher;
import androidx.view.result.contract.ActivityResultContracts;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import c5.y;
import com.google.firebase.messaging.FirebaseMessaging;
import df.a0;
import df.b0;
import df.c0;
import df.d0;
import df.g0;
import df.h0;
import df.i0;
import df.l0;
import df.t;
import df.u;
import gd.e;
import gd.j;
import gd.k;
import gd.l;
import ge.f;
import h5.z;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.g;
import l9.m;
import o3.m;
import org.bouncycastle.i18n.MessageBundle;
import org.bouncycastle.i18n.TextBundle;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import pg.n;
import pg.p;
import pg.q;
import pg.r;
import pg.s;
import pg.v;
import qd.i;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteListWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteOperationWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.UnfavoriteOperationWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.otp.TimeWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity;
import tr.gov.turkiye.edevlet.kapisi.servicepage.databinding.ActivityServicePageBinding;
import yd.a;

@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b$\u0010%J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\bH\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\tH\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\nH\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u000bH\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\fH\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\rH\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u000eH\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u000fH\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0010H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0011H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0012H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0013H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0014H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0015H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0016H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0017H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0018H\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0019H\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u001bH\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001cH\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010 H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010!H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\"H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010#H\u0007¨\u0006&"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/servicepage/ServicePageActivity;", "Lu8/a;", "Lgd/k;", "Lgd/j;", "Ldf/n;", NotificationCompat.CATEGORY_EVENT, "Ll9/m;", "onEvent", "Ldf/h0;", "Ldf/g0;", "Ldf/i;", "Ldf/j;", "Ldf/g;", "Ldf/i0;", "Lxe/a;", "Lpe/e;", "Ldf/a;", "Ldf/f;", "Ldf/w;", "Ldf/c0;", "Ldf/d0;", "Ldf/z;", "Ldf/c;", "Ldf/b0;", "Ldf/d;", "Ldf/a0;", "registerDeviceEvent", "Ldf/e;", "Ldf/l0;", "twoFactorRequestEvent", "Ldf/f0;", "serverTimeEvent", "Ldf/l;", "Ldf/q;", "Ldf/u;", "Ldf/t;", "<init>", "()V", "ui-service-page_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class ServicePageActivity extends u8.a implements k, j {
    public static final /* synthetic */ int s0 = 0;
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public MenuItem E;
    public String F;
    public boolean G;
    public boolean H;
    public String I;
    public String K;
    public String L;
    public boolean M;
    public boolean N;
    public gd.c O;
    public int R;
    public p T;
    public e V;
    public float Y;
    public float Z;

    /* renamed from: a0, reason: collision with root package name */
    public double f16789a0;

    /* renamed from: b, reason: collision with root package name */
    public String f16790b;

    /* renamed from: c, reason: collision with root package name */
    public String f16791c;

    /* renamed from: d, reason: collision with root package name */
    public gf.b f16792d;

    /* renamed from: g, reason: collision with root package name */
    public String f16794g;

    /* renamed from: h, reason: collision with root package name */
    public String f16795h;

    /* renamed from: h0, reason: collision with root package name */
    public double f16796h0;

    /* renamed from: j, reason: collision with root package name */
    public int f16797j;

    /* renamed from: k, reason: collision with root package name */
    public String f16798k;

    /* renamed from: l, reason: collision with root package name */
    public String f16799l;

    /* renamed from: m, reason: collision with root package name */
    public String f16800m;

    /* renamed from: m0, reason: collision with root package name */
    public ValueCallback<Uri[]> f16801m0;

    /* renamed from: n, reason: collision with root package name */
    public String f16802n;

    /* renamed from: o0, reason: collision with root package name */
    public final ActivityResultLauncher<Intent> f16804o0;

    /* renamed from: p, reason: collision with root package name */
    public String f16805p;

    /* renamed from: p0, reason: collision with root package name */
    public final ActivityResultLauncher<Intent> f16806p0;

    /* renamed from: q, reason: collision with root package name */
    public String f16807q;

    /* renamed from: q0, reason: collision with root package name */
    public final ActivityResultLauncher<Intent> f16808q0;

    /* renamed from: r, reason: collision with root package name */
    public Integer f16809r;

    /* renamed from: r0, reason: collision with root package name */
    public final ActivityResultLauncher<Intent> f16810r0;

    /* renamed from: s, reason: collision with root package name */
    public boolean f16811s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f16812t;

    /* renamed from: v, reason: collision with root package name */
    public boolean f16813v;
    public boolean w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f16814x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f16815y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f16816z;

    /* renamed from: e, reason: collision with root package name */
    public final l9.e f16793e = y.v(3, new d(this));
    public final int f = 8224;
    public int P = 3;
    public final l X = new l();

    /* renamed from: n0, reason: collision with root package name */
    public final ff.b f16803n0 = new ff.b(this);

    public static final class a extends kotlin.jvm.internal.j implements x9.l<Location, m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(Location location) {
            Location location2 = location;
            if (location2 != null) {
                ServicePageActivity servicePageActivity = ServicePageActivity.this;
                servicePageActivity.N = false;
                servicePageActivity.Y = location2.getAccuracy();
                servicePageActivity.Z = (Build.VERSION.SDK_INT < 26 || !location2.hasVerticalAccuracy()) ? 0.0f : location2.getVerticalAccuracyMeters();
                servicePageActivity.f16789a0 = location2.getLatitude();
                servicePageActivity.f16796h0 = location2.getLongitude();
            }
            return m.f9594a;
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.l<v.e, m> {
        public b() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(v.e eVar) {
            v.e dialog = eVar;
            h.f(dialog, "dialog");
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            ServicePageActivity servicePageActivity = ServicePageActivity.this;
            intent.setData(Uri.fromParts("package", servicePageActivity.getPackageName(), null));
            servicePageActivity.startActivity(intent);
            dialog.dismiss();
            return m.f9594a;
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.l<v.e, m> {
        public c() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(v.e eVar) throws JSONException {
            v.e dialog = eVar;
            h.f(dialog, "dialog");
            dialog.dismiss();
            ServicePageActivity servicePageActivity = ServicePageActivity.this;
            String str = servicePageActivity.L;
            if (!(str == null || str.length() == 0)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("result", false);
                String str2 = servicePageActivity.L;
                String str3 = h.a(str2, "PERMISSION_LOCATION") ? "Karekod oluşturmak için e-Devlet uygulamasına konum izni vermeniz gerekmektedir." : h.a(str2, "PERMISSION_BLUETOOTH") ? "Turnike bilgisine ulaşmak için e-Devlet uygulamasına bluetooth izni vermeniz gerekmektedir." : "Karekod oluşturmak için cihazınızın uygunluğunun kontrollerinde beklenmeyen bir hata ile oluştu. Cihazınızın bluetooth ve konum ayarlarının açık olup, kullanabilir olduğuna emin olunuz.";
                JSONArray jSONArray = new JSONArray();
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("name", servicePageActivity.L);
                jSONObject2.put("message", str3);
                jSONArray.put(jSONObject2);
                jSONObject.put("revokedPermissions", jSONArray);
                yd.a.f19652a.c("Error Value, " + jSONObject, new Object[0]);
                servicePageActivity.v().f16829g.evaluateJavascript("muzekartPermissionResult(" + jSONObject + ')', null);
            }
            return m.f9594a;
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.a<ActivityServicePageBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f16820a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(AppCompatActivity appCompatActivity) {
            super(0);
            this.f16820a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivityServicePageBinding invoke() {
            LayoutInflater layoutInflater = this.f16820a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivityServicePageBinding.inflate(layoutInflater);
        }
    }

    public ServicePageActivity() {
        ActivityResultLauncher<Intent> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new androidx.camera.core.impl.k(6, this));
        h.e(activityResultLauncherRegisterForActivityResult, "registerForActivityResul…)\n            }\n        }");
        this.f16804o0 = activityResultLauncherRegisterForActivityResult;
        ActivityResultLauncher<Intent> activityResultLauncherRegisterForActivityResult2 = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new t1.e(3, this));
        h.e(activityResultLauncherRegisterForActivityResult2, "registerForActivityResul…}\n            }\n        }");
        this.f16806p0 = activityResultLauncherRegisterForActivityResult2;
        ActivityResultLauncher<Intent> activityResultLauncherRegisterForActivityResult3 = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new androidx.camera.camera2.interop.c(8, this));
        h.e(activityResultLauncherRegisterForActivityResult3, "registerForActivityResul…)\n            }\n        }");
        this.f16808q0 = activityResultLauncherRegisterForActivityResult3;
        ActivityResultLauncher<Intent> activityResultLauncherRegisterForActivityResult4 = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new pg.m(this));
        h.e(activityResultLauncherRegisterForActivityResult4, "registerForActivityResul…)\n            }\n        }");
        this.f16810r0 = activityResultLauncherRegisterForActivityResult4;
    }

    public static void D(ServicePageActivity servicePageActivity, JSONObject jSONObject) throws JSONException {
        WebView webView;
        StringBuilder sb2;
        servicePageActivity.getClass();
        jSONObject.put("result", false);
        a.C0306a c0306a = yd.a.f19652a;
        c0306a.c("Error Value, " + jSONObject, new Object[0]);
        if (servicePageActivity.M) {
            c0306a.c("Error Value beacon result", new Object[0]);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("latitude", servicePageActivity.f16789a0);
            jSONObject2.put("longitude", servicePageActivity.f16796h0);
            jSONObject2.put(LocationCompat.EXTRA_VERTICAL_ACCURACY, Float.valueOf(servicePageActivity.Z));
            jSONObject2.put("horizontalAccuracy", Float.valueOf(servicePageActivity.Y));
            jSONObject.put("location", jSONObject2);
            webView = servicePageActivity.v().f16829g;
            sb2 = new StringBuilder("muzekartBeaconResult(");
        } else {
            webView = servicePageActivity.v().f16829g;
            sb2 = new StringBuilder("muzekartPermissionResult(");
        }
        sb2.append(jSONObject);
        sb2.append(')');
        webView.evaluateJavascript(sb2.toString(), null);
    }

    public final void A() {
        Intent intent = new Intent("action.qr.open");
        if (Build.VERSION.SDK_INT >= 34) {
            intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
        }
        intent.putExtra("comingFrom", 1);
        this.f16810r0.launch(intent);
    }

    public final void B() {
        String str;
        if (!v().f16829g.canGoBack()) {
            if (this.f16812t) {
                Intent intent = new Intent("action.dashboard.open");
                if (Build.VERSION.SDK_INT >= 34) {
                    intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
                }
                intent.putExtra("favListFetched", true);
                startActivity(intent);
            } else if (this.H && this.C) {
                this.H = false;
                String str2 = this.f16802n;
                if ((str2 == null || str2.length() == 0) || (str = this.f16802n) == null) {
                    return;
                }
            }
            finish();
            return;
        }
        if (!this.H) {
            v().f16829g.goBack();
            return;
        }
        this.H = false;
        String str3 = this.f16802n;
        if ((str3 == null || str3.length() == 0) || (str = this.f16802n) == null) {
            return;
        }
        v().f16829g.loadUrl(str);
        this.G = true;
    }

    public final void C() {
        try {
            this.L = "PERMISSION_LOCATION";
            int r12 = w4.d.f18694a;
            m4.d dVar = new m4.d((Activity) this);
            m.a aVar = new m.a();
            aVar.f11165a = a0.b.f14m;
            aVar.f11168d = 2414;
            z zVarC = dVar.c(0, aVar.a());
            androidx.view.result.b bVar = new androidx.view.result.b(new a());
            zVarC.getClass();
            zVarC.d(h5.m.f6842a, bVar);
            zVarC.p(new pg.m(this));
            if (Build.VERSION.SDK_INT >= 31) {
                this.L = "PERMISSION_BLUETOOTH";
                String[] strArr = a0.b.f20t;
                if (td.a.a(this, (String[]) Arrays.copyOf(strArr, 1))) {
                    this.L = "PERMISSION_BLUETOOTH";
                    s();
                } else {
                    ActivityCompat.requestPermissions(this, strArr, 6);
                }
            } else {
                s();
            }
        } catch (Exception unused) {
        }
    }

    public final void E() {
        this.f16814x = false;
        v().f16825b.setVisibility(8);
        v().f16828e.f15873a.setVisibility(8);
        v().f.f15882a.setVisibility(8);
        v().f16829g.setVisibility(0);
    }

    public final void F() {
        v().f16829g.setVisibility(8);
        v().f16825b.setVisibility(8);
        v().f16828e.f15873a.setVisibility(8);
        v().f.f15882a.setVisibility(0);
        v().f.f15886e.setText(getString(R.string.service_error_title));
        v().f.f15885d.setText(getString(R.string.service_error_info));
        v().f.f15883b.setOnClickListener(new n(this, 1));
        ImageView imageView = v().f.f15884c;
        h.e(imageView, "mServicePageBinding.webSystemError.iconSearch");
        ge.b.a(imageView, R.drawable.icon_system_error);
    }

    public final void G() {
        int r02 = ke.d.f8929a;
        ConstraintLayout constraintLayout = v().f16827d;
        h.e(constraintLayout, "mServicePageBinding.webContainer");
        ke.d dVarC = d.a.c(constraintLayout, R.string.web_page_error, ContextCompat.getColor(this, R.color.error_color));
        if (dVarC != null) {
            dVarC.show();
        }
    }

    public final void H() {
        int r02 = ke.d.f8929a;
        ConstraintLayout constraintLayout = v().f16827d;
        h.e(constraintLayout, "mServicePageBinding.webContainer");
        ke.d dVarC = d.a.c(constraintLayout, R.string.web_page_file_download_error, ContextCompat.getColor(this, R.color.error_color));
        if (dVarC != null) {
            dVarC.show();
        }
    }

    public final void I(String str) {
        StringBuilder sb2;
        String str2;
        String str3;
        String str4;
        if (this.f16813v) {
            Integer num = this.f16809r;
            if (num != null && num.intValue() == 0) {
                sb2 = new StringBuilder("https://m.turkiye.gov.tr/edk_services/");
                sb2.append(this.f16798k);
                sb2.append("/index.html?folderName=");
                sb2.append(this.f16794g);
                sb2.append("&url=");
                str4 = this.f16799l;
                sb2.append(str4);
                str3 = "&native=iframe&os=android&v=";
            } else {
                sb2 = (num != null && num.intValue() == 1) ? new StringBuilder() : new StringBuilder();
                sb2.append(this.f16798k);
                str2 = this.f16799l;
                sb2.append(str2);
                str3 = "?os=android&v=";
            }
        } else if (!this.w) {
            Integer num2 = this.f16809r;
            if (num2 != null && num2.intValue() == 0) {
                sb2 = new StringBuilder();
                sb2.append(this.f16798k);
                sb2.append(this.f16794g);
                sb2.append("/index.html?url=");
                str4 = this.f16799l;
                sb2.append(str4);
                str3 = "&native=iframe&os=android&v=";
            } else {
                sb2 = (num2 != null && num2.intValue() == 1) ? new StringBuilder() : new StringBuilder();
                sb2.append(this.f16798k);
                str2 = this.f16799l;
                sb2.append(str2);
                str3 = "?os=android&v=";
            }
        } else if (this.f16815y) {
            sb2 = new StringBuilder("https://m.turkiye.gov.tr/edk_services/");
            sb2.append(this.f16794g);
            sb2.append("/index.html?url=");
            str4 = this.f16794g;
            sb2.append(str4);
            str3 = "&native=iframe&os=android&v=";
        } else if (this.f16816z) {
            sb2 = new StringBuilder();
            sb2.append(this.f16800m);
            str3 = "&os=android&v=";
        } else {
            sb2 = new StringBuilder();
            str2 = this.f16794g;
            sb2.append(str2);
            str3 = "?os=android&v=";
        }
        sb2.append(str3);
        sb2.append(t());
        sb2.append("&mode=");
        sb2.append(str);
        sb2.append("&language=");
        sb2.append(u());
        String string = sb2.toString();
        this.F = string;
        gf.b bVar = this.f16792d;
        if (bVar == null) {
            F();
            return;
        }
        if (bVar == null) {
            h.n("mNetworkHelper");
            throw null;
        }
        if (bVar.a()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("eDevletMobil", "true");
            yd.a.f19652a.c(androidx.browser.browseractions.b.e("connected ", string), new Object[0]);
            v().f16829g.loadUrl(string, linkedHashMap);
            return;
        }
        v().f16829g.setVisibility(8);
        v().f16825b.setVisibility(8);
        v().f.f15882a.setVisibility(8);
        v().f16828e.f15873a.setVisibility(0);
        v().f16828e.f15874b.setOnClickListener(new be.d(6, this));
        v().f16828e.f15874b.setOnClickListener(new ke.b(1, this, string));
    }

    public final void J() {
        v().f16828e.f15873a.setVisibility(8);
        v().f.f15882a.setVisibility(8);
        v().f16829g.setVisibility(0);
        v().f16825b.setVisibility(0);
    }

    public final void K(int r52) {
        v.e eVar = new v.e(this);
        v.e.e(eVar, androidx.camera.camera2.internal.c.e(r52, eVar, null, 6, R.string.permission_rationale_dialog_ok), null, new b(), 2);
        v.e.d(eVar, Integer.valueOf(R.string.permission_rationale_dialog_cancel), new c());
        eVar.show();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context newBase) {
        h.f(newBase, "newBase");
        this.f16803n0.getClass();
        applyOverrideConfiguration(ff.b.f(newBase));
        super.attachBaseContext(newBase);
    }

    @Override // gd.k
    public final void e(Collection collection) throws JSONException {
        Object obj;
        a.C0306a c0306a = yd.a.f19652a;
        StringBuilder sb2 = new StringBuilder("DidBeaconInRegion ");
        sb2.append(collection != null ? Integer.valueOf(collection.size()) : null);
        c0306a.c(sb2.toString(), new Object[0]);
        if (collection != null) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                gd.c cVar = (gd.c) it.next();
                this.O = cVar;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("result", true);
                JSONObject jSONObject2 = new JSONObject();
                if ((cVar.f6617a.getClass().isInstance(gd.c.f6615y) ? cVar.f6617a : Collections.unmodifiableList(cVar.f6617a)).size() > 2) {
                    jSONObject2.put("majorCode", (gd.h) cVar.f6617a.get(1));
                    obj = (gd.h) cVar.f6617a.get(2);
                } else {
                    obj = "";
                    jSONObject2.put("majorCode", "");
                }
                jSONObject2.put("minorCode", obj);
                jSONObject2.put("distance", cVar.a());
                jSONObject.put("beacon", jSONObject2);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("latitude", this.f16789a0);
                jSONObject3.put("longitude", this.f16796h0);
                jSONObject3.put(LocationCompat.EXTRA_VERTICAL_ACCURACY, Float.valueOf(this.Z));
                jSONObject3.put("horizontalAccuracy", Float.valueOf(this.Y));
                jSONObject.put("location", jSONObject3);
                yd.a.f19652a.c("beacon result " + jSONObject, new Object[0]);
                e eVar = this.V;
                if (eVar != null) {
                    id.b.a("BeaconManager", "API removeAllRangeNotifiers", new Object[0]);
                    eVar.f6643d.clear();
                }
                e eVar2 = this.V;
                if (eVar2 != null) {
                    id.b.a("BeaconManager", "API removeAllMonitorNotifiers", new Object[0]);
                    if (!eVar2.e()) {
                        eVar2.f6644e.clear();
                    }
                }
                p pVar = this.T;
                if (pVar != null) {
                    pVar.cancel();
                }
                v().f16829g.evaluateJavascript("muzekartBeaconResult(" + jSONObject + ')', null);
            }
        }
    }

    @Override // gd.j
    public final void f() {
    }

    @Override // gd.j
    public final void g() {
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        h.e(applicationContext, "super.getApplicationContext()");
        this.f16803n0.getClass();
        return ff.d.a(applicationContext);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Resources resources = super.getResources();
        h.e(resources, "super.getResources()");
        this.f16803n0.b(resources);
        return resources;
    }

    @Override // gd.j
    public final void l() {
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002f  */
    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onActivityResult(int r2, int r3, android.content.Intent r4) {
        /*
            r1 = this;
            int r0 = r1.f
            if (r2 == r0) goto L11
            android.webkit.ValueCallback<android.net.Uri[]> r0 = r1.f16801m0
            if (r0 == 0) goto L9
            goto L11
        L9:
            r0 = 1071(0x42f, float:1.501E-42)
            if (r2 == r0) goto L39
            super.onActivityResult(r2, r3, r4)
            return
        L11:
            r2 = -1
            r0 = 0
            if (r3 != r2) goto L2f
            if (r4 == 0) goto L1c
            java.lang.String r2 = r4.getDataString()
            goto L1d
        L1c:
            r2 = r0
        L1d:
            if (r2 == 0) goto L2f
            r3 = 1
            android.net.Uri[] r3 = new android.net.Uri[r3]
            android.net.Uri r2 = android.net.Uri.parse(r2)
            java.lang.String r4 = "parse(dataString)"
            kotlin.jvm.internal.h.e(r2, r4)
            r4 = 0
            r3[r4] = r2
            goto L30
        L2f:
            r3 = r0
        L30:
            android.webkit.ValueCallback<android.net.Uri[]> r2 = r1.f16801m0
            if (r2 == 0) goto L37
            r2.onReceiveValue(r3)
        L37:
            r1.f16801m0 = r0
        L39:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity.onActivityResult(int, int, android.content.Intent):void");
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
        I(str);
    }

    @Override // u8.a, androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        this.f16803n0.d();
        super.onCreate(bundle);
        setContentView(v().f16824a);
        Intent intent = getIntent();
        if (intent != null) {
            this.f16811s = intent.getBooleanExtra("isFavMenuActive", false);
            this.w = intent.getBooleanExtra("isCustomPage", false);
            this.f16815y = intent.getBooleanExtra("isEdkFolder", false);
            this.f16816z = intent.getBooleanExtra("isPartOfService", false);
            this.f16813v = intent.getBooleanExtra("isOpenService", false);
            this.B = intent.getBooleanExtra("isFavoriteService", false);
            this.f16812t = intent.getBooleanExtra("isCallingFromLogin", false);
            this.A = intent.getBooleanExtra("shouldSendNativeCall", false);
            this.f16794g = intent.getStringExtra("folderUrl");
            this.f16800m = intent.getStringExtra("fullUrl");
            this.f16799l = intent.getStringExtra("serviceUrl");
            this.f16798k = intent.getStringExtra("baseUrl");
            this.f16795h = intent.getStringExtra("serviceName");
            this.f16805p = intent.getStringExtra("nativeCallMethod");
            this.f16807q = intent.getStringExtra("nativeCallParam");
            this.f16809r = Integer.valueOf(intent.getIntExtra("serviceDomainType", -1));
            this.f16797j = intent.getIntExtra("serviceCode", 0);
            if (this.f16812t) {
                try {
                    OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(FavoriteListWorker.class).build();
                    h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…riteListWorker>().build()");
                    WorkManager.getInstance(this).enqueue(oneTimeWorkRequestBuild);
                } catch (Exception unused) {
                }
            }
        }
        String str = this.f16795h;
        if (!(str == null || str.length() == 0)) {
            v().f16826c.setTitle(this.f16795h);
        }
        setSupportActionBar(v().f16826c);
        v().f16826c.setNavigationOnClickListener(new n(this, 0));
        final s sVar = new s(this);
        v().f16829g.setDownloadListener(new DownloadListener() { // from class: pg.o
            @Override // android.webkit.DownloadListener
            public final void onDownloadStart(String str2, String str3, String str4, String str5, long j10) {
                int r92 = ServicePageActivity.s0;
                ServicePageActivity this$0 = this.f13217a;
                kotlin.jvm.internal.h.f(this$0, "this$0");
                BroadcastReceiver onComplete = sVar;
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
                    this$0.J();
                    request.setDestinationInExternalFilesDir(this$0, "download", strGuessFileName);
                    if (Build.VERSION.SDK_INT >= 33) {
                        this$0.registerReceiver(onComplete, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"), 2);
                    } else {
                        this$0.registerReceiver(onComplete, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
                    }
                    Object systemService = this$0.getSystemService("download");
                    kotlin.jvm.internal.h.d(systemService, "null cannot be cast to non-null type android.app.DownloadManager");
                    ((DownloadManager) systemService).enqueue(request);
                } catch (Exception unused2) {
                    this$0.E();
                    this$0.H();
                }
            }
        });
        v().f16829g.setBackgroundColor(0);
        v().f16829g.getSettings().setDomStorageEnabled(true);
        v().f16829g.getSettings().setGeolocationEnabled(true);
        v().f16829g.getSettings().setBuiltInZoomControls(false);
        v().f16829g.getSettings().setSupportZoom(false);
        v().f16829g.getSettings().setLoadWithOverviewMode(false);
        v().f16829g.getSettings().setUseWideViewPort(false);
        v().f16829g.getSettings().setJavaScriptEnabled(true);
        v().f16829g.getSettings().setMediaPlaybackRequiresUserGesture(false);
        v().f16829g.addJavascriptInterface(new pg.d(this), "JSInterface");
        v().f16829g.clearCache(true);
        WebSettings settings = v().f16829g.getSettings();
        String userAgentString = v().f16829g.getSettings().getUserAgentString();
        h.e(userAgentString, "mServicePageBinding.wvSe….settings.userAgentString");
        settings.setUserAgentString(userAgentString + "; eDevlet Mobil Agent (edk-" + t() + ')');
        v().f16829g.setWebChromeClient(new q(this));
        v().f16829g.setWebViewClient(new r(this));
        int r52 = getResources().getConfiguration().uiMode & 48;
        I((r52 == 16 || r52 != 32) ? "light" : "dark");
        try {
            FirebaseMessaging.c().e().b(new androidx.camera.core.impl.p(5, this));
        } catch (Exception unused2) {
        }
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        h.f(menu, "menu");
        getMenuInflater().inflate(R.menu.service_page_menu, menu);
        MenuItem menuItemFindItem = menu.findItem(R.id.action_favourite);
        if (menuItemFindItem != null) {
            this.E = menuItemFindItem;
            if (this.f16811s) {
                menuItemFindItem.setVisible(true);
                if (this.B) {
                    menuItemFindItem.setIcon(R.drawable.action_favorite_selected);
                    if (Build.VERSION.SDK_INT >= 26) {
                        menuItemFindItem.setContentDescription(getString(R.string.cd_title_unfavorite_button));
                    }
                } else {
                    menuItemFindItem.setIcon(R.drawable.action_favorite);
                    if (Build.VERSION.SDK_INT >= 26) {
                        menuItemFindItem.setContentDescription(getString(R.string.cd_title_favorite_button));
                    }
                }
            } else {
                menuItemFindItem.setVisible(false);
            }
        }
        return super.onCreateOptionsMenu(menu);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.a event) throws JSONException, ParseException {
        Date date;
        Intent intentPutExtra;
        h.f(event, "event");
        String str = event.f4864a;
        if (str.length() > 0) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String dateValue = jSONObject.getString("value");
                String titleValue = jSONObject.getString(TextBundle.TEXT_ENTRY);
                try {
                    Calendar calendar = Calendar.getInstance();
                    h.e(dateValue, "dateValue");
                    try {
                        date = new SimpleDateFormat("dd.MM.yyyy").parse(dateValue);
                    } catch (Exception unused) {
                        date = null;
                    }
                    if (date != null) {
                        calendar.setTime(date);
                        long timeInMillis = calendar.getTimeInMillis();
                        h.e(titleValue, "titleValue");
                        intentPutExtra = new Intent("android.intent.action.INSERT").setData(CalendarContract.Events.CONTENT_URI).putExtra(MessageBundle.TITLE_ENTRY, titleValue).putExtra("beginTime", timeInMillis).putExtra("allDay", true).putExtra("availability", 1);
                        h.e(intentPutExtra, "Intent(Intent.ACTION_INS…BILITY_FREE\n            )");
                    } else {
                        h.e(titleValue, "titleValue");
                        intentPutExtra = new Intent("android.intent.action.INSERT").setData(CalendarContract.Events.CONTENT_URI).putExtra(MessageBundle.TITLE_ENTRY, titleValue).putExtra("allDay", true).putExtra("availability", 1);
                        h.e(intentPutExtra, "Intent(Intent.ACTION_INS…BILITY_FREE\n            )");
                    }
                    startActivityForResult(intentPutExtra, 0);
                } catch (ParseException unused2) {
                    h.e(titleValue, "titleValue");
                    Intent intentPutExtra2 = new Intent("android.intent.action.INSERT").setData(CalendarContract.Events.CONTENT_URI).putExtra(MessageBundle.TITLE_ENTRY, titleValue).putExtra("allDay", true).putExtra("availability", 1);
                    h.e(intentPutExtra2, "Intent(Intent.ACTION_INS…BILITY_FREE\n            )");
                    startActivityForResult(intentPutExtra2, 0);
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        qd.b.b().l(df.a.class);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(c0 c0Var) {
        qd.b.b().l(c0.class);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.c cVar) {
        WebView webView;
        String str;
        if (cVar != null) {
            try {
                NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(this);
                if (defaultAdapter != null && defaultAdapter.isEnabled()) {
                    webView = v().f16829g;
                    str = "isNfcSupported(1)";
                } else if (defaultAdapter == null || defaultAdapter.isEnabled()) {
                    v().f16829g.evaluateJavascript("isNfcSupported(0) ", null);
                } else {
                    webView = v().f16829g;
                    str = "isNfcSupported(2)";
                }
                webView.evaluateJavascript(str, null);
            } catch (Exception unused) {
                v().f16829g.evaluateJavascript("isNfcSupported(0) ", null);
            }
        }
        qd.b.b().l(df.c.class);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(g0 g0Var) {
        if (g0Var != null) {
            finish();
        }
        qd.b.b().l(g0.class);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.n nVar) {
        ProgressBar progressBar;
        int r02;
        if (nVar != null) {
            if (nVar.f4881a) {
                progressBar = v().f16825b;
                r02 = 0;
            } else {
                progressBar = v().f16825b;
                r02 = 8;
            }
            progressBar.setVisibility(r02);
        }
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.q qVar) throws JSONException {
        if (qVar != null) {
            try {
                String str = qVar.f4894a;
                qd.b.b().l(df.q.class);
                yd.a.f19652a.c("scenario result " + str, new Object[0]);
                Intent intent = new Intent();
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString("result");
                intent.putExtra("result", string);
                if (h.a(string, "true")) {
                    intent.putExtra("scenarioId", jSONObject.getString("scenarioId"));
                } else {
                    intent.putExtra("errorMessage", jSONObject.getString("errorMessage"));
                }
                setResult(-1, intent);
                finish();
            } catch (Exception e10) {
                Intent intent2 = new Intent();
                intent2.putExtra("result", "false");
                setResult(-1, intent2);
                e10.printStackTrace();
                finish();
            }
        }
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(u uVar) {
        if (uVar != null) {
            try {
                this.M = false;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.L = "PERMISSION_LOCATION";
                    a0.b.p(this);
                } else {
                    C();
                }
                qd.b.b().l(u.class);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0017, code lost:
    
        if (r2 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0026, code lost:
    
        if (r2 != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0028, code lost:
    
        r0 = tr.gov.turkiye.edevlet.kapisi.R.drawable.action_favorite;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002e, code lost:
    
        if (r2 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0030, code lost:
    
        r0 = tr.gov.turkiye.edevlet.kapisi.R.drawable.action_favorite_selected;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0033, code lost:
    
        r2.setIcon(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x000f, code lost:
    
        if (r2 != null) goto L17;
     */
    @qd.i(sticky = true, threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onEvent(pe.e r2) {
        /*
            r1 = this;
            if (r2 == 0) goto L39
            boolean r0 = r2.f13131a
            if (r0 == 0) goto L1a
            boolean r2 = r1.B
            if (r2 == 0) goto L12
            r2 = 0
            r1.B = r2
            android.view.MenuItem r2 = r1.E
            if (r2 == 0) goto L36
            goto L28
        L12:
            r2 = 1
            r1.B = r2
            android.view.MenuItem r2 = r1.E
            if (r2 == 0) goto L36
            goto L30
        L1a:
            java.lang.String r0 = "ADD"
            java.lang.String r2 = r2.f13132b
            boolean r2 = kotlin.jvm.internal.h.a(r2, r0)
            if (r2 == 0) goto L2c
            android.view.MenuItem r2 = r1.E
            if (r2 == 0) goto L36
        L28:
            r0 = 2131230805(0x7f080055, float:1.8077673E38)
            goto L33
        L2c:
            android.view.MenuItem r2 = r1.E
            if (r2 == 0) goto L36
        L30:
            r0 = 2131230806(0x7f080056, float:1.8077675E38)
        L33:
            r2.setIcon(r0)
        L36:
            r1.invalidateOptionsMenu()
        L39:
            qd.b r2 = qd.b.b()
            java.lang.Class<pe.e> r0 = pe.e.class
            r2.l(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity.onEvent(pe.e):void");
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(xe.a aVar) {
        ServiceModelRealm serviceModelRealm;
        Intent intentC;
        if (aVar != null) {
            v().f16825b.setVisibility(8);
            if (!aVar.f19225a || (serviceModelRealm = aVar.f19226b) == null || (intentC = oe.a.c(serviceModelRealm, serviceModelRealm.isFavorite())) == null) {
                G();
            } else {
                this.D = true;
                startActivity(intentC);
            }
        }
        qd.b.b().l(xe.a.class);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int r22, KeyEvent keyEvent) {
        if (r22 != 4) {
            return super.onKeyDown(r22, keyEvent);
        }
        B();
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem item) throws Throwable {
        OneTimeWorkRequest oneTimeWorkRequestBuild;
        String str;
        h.f(item, "item");
        if (item.getItemId() != R.id.action_favourite) {
            return false;
        }
        item.setActionView(new ProgressBar(this));
        g[] gVarArr = {new g("serviceCode", Integer.valueOf(this.f16797j))};
        Data.Builder builder = new Data.Builder();
        g gVar = gVarArr[0];
        builder.put((String) gVar.f9582a, gVar.f9583b);
        Data dataBuild = builder.build();
        h.e(dataBuild, "dataBuilder.build()");
        if (this.B) {
            oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(UnfavoriteOperationWorker.class).setInputData(dataBuild).build();
            str = "OneTimeWorkRequestBuilde…                ).build()";
        } else {
            oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(FavoriteOperationWorker.class).setInputData(dataBuild).build();
            str = "OneTimeWorkRequestBuilde…                 .build()";
        }
        h.e(oneTimeWorkRequestBuild, str);
        WorkManager.getInstance(this).enqueue(oneTimeWorkRequestBuild);
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (qd.b.b().e(this)) {
            qd.b.b().n(this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005b, code lost:
    
        if (td.a.b(r3, (java.lang.String[]) java.util.Arrays.copyOf(a0.b.f21v, 2)) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005d, code lost:
    
        K(tr.gov.turkiye.edevlet.kapisi.R.string.permission_location_rationale);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0062, code lost:
    
        K(tr.gov.turkiye.edevlet.kapisi.R.string.permission_location_rationale);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
    
        if (td.a.b(r3, (java.lang.String[]) java.util.Arrays.copyOf(a0.b.w, 2)) == false) goto L17;
     */
    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onRequestPermissionsResult(int r4, java.lang.String[] r5, int[] r6) throws org.json.JSONException, java.lang.NumberFormatException, java.lang.ClassNotFoundException {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity.onRequestPermissionsResult(int, java.lang.String[], int[]):void");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() throws SecurityException {
        super.onResume();
        if (!qd.b.b().e(this)) {
            qd.b.b().k(this);
        }
        if (this.D) {
            this.D = false;
            try {
                v().f16829g.evaluateJavascript("refreshService()", null);
            } catch (Exception unused) {
            }
        }
    }

    public final void s() throws JSONException, NumberFormatException, ClassNotFoundException {
        JSONObject jSONObject;
        Object systemService = getSystemService("bluetooth");
        h.d(systemService, "null cannot be cast to non-null type android.bluetooth.BluetoothManager");
        Object systemService2 = getSystemService("location");
        h.d(systemService2, "null cannot be cast to non-null type android.location.LocationManager");
        BluetoothAdapter adapter = ((BluetoothManager) systemService).getAdapter();
        boolean zIsProviderEnabled = ((LocationManager) systemService2).isProviderEnabled("gps");
        if (zIsProviderEnabled && adapter.isEnabled()) {
            if (!this.N) {
                if (!this.M) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("result", true);
                    v().f16829g.evaluateJavascript("muzekartPermissionResult(" + jSONObject2 + ')', null);
                    return;
                }
                e eVarG = e.g(this);
                this.V = eVarG;
                id.b.f7422a = id.d.f7424a;
                id.b.f7423b = false;
                md.a aVar = eVarG.f6647i;
                gd.g gVar = new gd.g();
                gVar.h("m:2-3=beac,i:4-19,i:20-21,i:22-23,p:24-24,d:25-25");
                aVar.add(gVar);
                gd.g gVar2 = new gd.g();
                gVar2.h("x,s:0-1=feaa,m:2-2=20,d:3-3,d:4-5,d:6-7,d:8-11,d:12-15");
                aVar.add(gVar2);
                gd.g gVar3 = new gd.g();
                gVar3.h("s:0-1=feaa,m:2-2=00,p:3-3:-41,i:4-13,i:14-19");
                aVar.add(gVar3);
                gd.g gVar4 = new gd.g();
                gVar4.h("s:0-1=feaa,m:2-2=10,p:3-3:-41,i:4-21v");
                aVar.add(gVar4);
                gd.g gVar5 = new gd.g();
                gVar5.h("s:0-1=fed8,m:2-2=00,p:3-3:-41,i:4-21v");
                aVar.add(gVar5);
                gd.g gVar6 = new gd.g();
                gVar6.h("m:2-3=0215,i:4-19,i:20-21,i:22-23,p:24-24");
                aVar.add(gVar6);
                e eVar = this.V;
                if (eVar != null) {
                    id.b.a("BeaconManager", "API addMonitorNotifier " + this, new Object[0]);
                    if (!eVar.e()) {
                        eVar.f6644e.add(this);
                    }
                    id.b.a("BeaconManager", "API addRangeNotifier " + this, new Object[0]);
                    eVar.f6643d.add(this);
                    l lVar = this.X;
                    id.b.a("BeaconManager", "API startMonitoring " + lVar, new Object[0]);
                    eVar.f();
                    if (eVar.h()) {
                        try {
                            eVar.m(lVar);
                        } catch (RemoteException e10) {
                            id.b.c("BeaconManager", "Failed to start monitoring", e10);
                        }
                    } else {
                        synchronized (eVar.f6646h) {
                            eVar.f6646h.remove(lVar);
                            eVar.f6646h.add(lVar);
                        }
                        eVar.c();
                    }
                    eVar.n(this.X);
                    p pVar = new p(this);
                    this.T = pVar;
                    pVar.start();
                    return;
                }
                return;
            }
            JSONObject jSONObject3 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("name", "CONTROL_UNKNOWN");
            jSONObject4.put("message", "Karekod oluşturmak için cihazınızın uygunluğunun kontrollerinde beklenmeyen bir hata ile oluştu. Cihazınızın bluetooth ve konum ayarlarının açık olup, kullanabilir olduğuna emin olunuz.");
            jSONArray.put(jSONObject4);
            jSONObject3.put("failedControls", jSONArray);
            jSONObject = jSONObject3;
        } else if (!zIsProviderEnabled && !adapter.isEnabled()) {
            JSONObject jSONObject5 = new JSONObject();
            JSONArray jSONArray2 = new JSONArray();
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("name", "CONTROL_LOCATION");
            jSONObject6.put("message", "Karekod oluşturmak için cihazınızın konum ayarını açmanız gerekmektedir.");
            jSONArray2.put(jSONObject6);
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("name", "CONTROL_BLUETOOTH");
            jSONObject7.put("message", "Turnike bilgisine ulaşmak için cihazınızın bluetooth ayarını açmanız gerekmektedir.");
            jSONArray2.put(jSONObject7);
            jSONObject5.put("failedControls", jSONArray2);
            yd.a.f19652a.c("Error 0, " + jSONObject5, new Object[0]);
            jSONObject = jSONObject5;
        } else if (!zIsProviderEnabled) {
            JSONObject jSONObject8 = new JSONObject();
            JSONArray jSONArray3 = new JSONArray();
            JSONObject jSONObject9 = new JSONObject();
            jSONObject9.put("name", "CONTROL_LOCATION");
            jSONObject9.put("message", "Karekod oluşturmak için cihazınızın konum ayarını açmanız gerekmektedir.");
            jSONArray3.put(jSONObject9);
            jSONObject8.put("failedControls", jSONArray3);
            yd.a.f19652a.c("Error 1, " + jSONObject8, new Object[0]);
            jSONObject = jSONObject8;
        } else if (adapter.isEnabled()) {
            JSONObject jSONObject10 = new JSONObject();
            JSONArray jSONArray4 = new JSONArray();
            JSONObject jSONObject11 = new JSONObject();
            jSONObject11.put("name", "CONTROL_UNKNOWN");
            jSONObject11.put("message", "Bilinmedik bir hata durumu oluştu");
            jSONArray4.put(jSONObject11);
            jSONObject10.put("failedControls", jSONArray4);
            yd.a.f19652a.c("Error 3, " + jSONObject10, new Object[0]);
            jSONObject = jSONObject10;
        } else {
            JSONObject jSONObject12 = new JSONObject();
            JSONArray jSONArray5 = new JSONArray();
            JSONObject jSONObject13 = new JSONObject();
            jSONObject13.put("name", "CONTROL_BLUETOOTH");
            jSONObject13.put("message", "Turnike bilgisine ulaşmak için cihazınızın bluetooth ayarını açmanız gerekmektedir.");
            jSONArray5.put(jSONObject13);
            jSONObject12.put("failedControls", jSONArray5);
            yd.a.f19652a.c("Error 2, " + jSONObject12, new Object[0]);
            jSONObject = jSONObject12;
        }
        D(this, jSONObject);
    }

    public final String t() {
        String str = this.f16790b;
        if (str != null) {
            return str;
        }
        h.n("mAppVersion");
        throw null;
    }

    public final String u() {
        String str = this.f16791c;
        if (str != null) {
            return str;
        }
        h.n("mLanguage");
        throw null;
    }

    public final ActivityServicePageBinding v() {
        return (ActivityServicePageBinding) this.f16793e.getValue();
    }

    public final void x() {
        Intent intent = new Intent("action.barcode.open");
        if (Build.VERSION.SDK_INT >= 34) {
            intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
        }
        intent.putExtra("comingFromService", true);
        this.f16804o0.launch(intent);
    }

    public final void y(String str) {
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

    public final void z() {
        Intent intent = new Intent("action.general.ocr.scan");
        if (Build.VERSION.SDK_INT >= 34) {
            intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
        }
        this.f16808q0.launch(intent);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.d dVar) {
        if (dVar != null) {
            boolean z10 = false;
            SharedPreferences sharedPreferences = getSharedPreferences("settings", 0);
            String string = sharedPreferences.getString("did", null);
            String string2 = sharedPreferences.getString("esk", null);
            if (!(string == null || string.length() == 0)) {
                if (!(string2 == null || string2.length() == 0)) {
                    z10 = true;
                }
            }
            v().f16829g.evaluateJavascript("isRegisteredDevice(" + z10 + ')', null);
        }
        qd.b.b().l(df.d.class);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.e event) throws JSONException {
        h.f(event, "event");
        try {
            if (event.f4867a) {
                NotificationManagerCompat notificationManagerCompatFrom = NotificationManagerCompat.from(this);
                h.e(notificationManagerCompatFrom, "from(this@ServicePageActivity)");
                boolean zAreNotificationsEnabled = notificationManagerCompatFrom.areNotificationsEnabled();
                String str = Build.MODEL;
                String manufacturer = Build.MANUFACTURER;
                int r72 = Build.VERSION.SDK_INT;
                JSONObject jSONObject = new JSONObject();
                StringBuilder sb2 = new StringBuilder();
                h.e(manufacturer, "manufacturer");
                sb2.append(f.a(manufacturer));
                sb2.append(' ');
                sb2.append(str);
                jSONObject.put("model", sb2.toString());
                jSONObject.put("os", "android");
                jSONObject.put("osVersion", String.valueOf(r72));
                jSONObject.put("appVersion", t());
                jSONObject.put("appId", "tr.gov.turkiye.edevlet.kapisi.v21");
                jSONObject.put("isNotificationEnabled", zAreNotificationsEnabled);
                jSONObject.put("platformId", this.K);
                jSONObject.put(NotificationCompat.CATEGORY_STATUS, "1");
                v().f16829g.evaluateJavascript("sendDeviceInfo(" + jSONObject + ')', null);
            } else {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(NotificationCompat.CATEGORY_STATUS, "0");
                v().f16829g.evaluateJavascript("sendDeviceInfo(" + jSONObject2 + ')', null);
            }
        } catch (Exception unused) {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(NotificationCompat.CATEGORY_STATUS, "0");
            v().f16829g.evaluateJavascript("sendDeviceInfo(" + jSONObject3 + ')', null);
        }
        qd.b.b().l(df.e.class);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
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

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.g gVar) {
        if (gVar != null) {
            try {
                if (Build.VERSION.SDK_INT >= 23) {
                    String[] strArr = a0.b.f21v;
                    if (td.a.a(this, (String[]) Arrays.copyOf(strArr, 2))) {
                        v().f16829g.evaluateJavascript("callLocationFromJS()", null);
                    } else {
                        ActivityCompat.requestPermissions(this, strArr, 7);
                    }
                } else {
                    v().f16829g.evaluateJavascript("callLocationFromJS()", null);
                }
            } catch (Exception unused) {
            }
        }
        qd.b.b().l(df.g.class);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.i iVar) {
        if (iVar != null) {
            try {
                if (Build.VERSION.SDK_INT >= 23) {
                    String[] strArr = a0.b.f18r;
                    if (td.a.a(this, (String[]) Arrays.copyOf(strArr, 1))) {
                        z();
                    } else {
                        ActivityCompat.requestPermissions(this, strArr, 4);
                    }
                } else {
                    z();
                }
            } catch (Exception unused) {
            }
        }
        qd.b.b().l(df.i.class);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.j jVar) {
        if (jVar != null) {
            try {
                if (Build.VERSION.SDK_INT >= 23) {
                    String[] strArr = a0.b.f19s;
                    if (td.a.a(this, (String[]) Arrays.copyOf(strArr, 1))) {
                        A();
                    } else {
                        ActivityCompat.requestPermissions(this, strArr, 5);
                    }
                } else {
                    A();
                }
            } catch (Exception unused) {
            }
        }
        qd.b.b().l(df.j.class);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.l lVar) throws JSONException {
        if (lVar != null) {
            try {
                String str = lVar.f4878a;
                if (str.length() > 0) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        String operationType = jSONObject.getString("verificationByIdCode");
                        String challengeValue = jSONObject.getString("challenge");
                        String tokenValue = jSONObject.getString("token");
                        String uuidValue = jSONObject.getString("uuid");
                        String phoneNumber = jSONObject.getString("cepTel");
                        String countryCode = jSONObject.getString("uKod");
                        h.e(operationType, "operationType");
                        h.e(challengeValue, "challengeValue");
                        h.e(tokenValue, "tokenValue");
                        h.e(uuidValue, "uuidValue");
                        h.e(phoneNumber, "phoneNumber");
                        h.e(countryCode, "countryCode");
                        startActivity(ze.a.f(operationType, challengeValue, tokenValue, uuidValue, phoneNumber, countryCode));
                        finish();
                    } catch (JSONException e10) {
                        e10.printStackTrace();
                    }
                }
            } catch (ParseException | Exception unused) {
            }
        }
        qd.b.b().l(df.l.class);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(t tVar) {
        if (tVar != null) {
            try {
                this.M = true;
                JSONObject jSONObject = new JSONObject(tVar.f4897a);
                this.P = jSONObject.has("tryCount") ? jSONObject.getInt("tryCount") : 3;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.L = "PERMISSION_LOCATION";
                    a0.b.p(this);
                } else {
                    C();
                }
                qd.b.b().l(t.class);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0066 A[Catch: Exception -> 0x00ef, TryCatch #0 {Exception -> 0x00ef, blocks: (B:4:0x000e, B:6:0x0027, B:8:0x0044, B:10:0x004a, B:12:0x0053, B:14:0x0059, B:22:0x0068, B:24:0x006c, B:26:0x0072, B:33:0x007f, B:36:0x008d, B:39:0x0095, B:41:0x009b, B:47:0x00a6, B:49:0x00b2, B:48:0x00ab, B:34:0x0084, B:21:0x0066), top: B:55:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006c A[Catch: Exception -> 0x00ef, TryCatch #0 {Exception -> 0x00ef, blocks: (B:4:0x000e, B:6:0x0027, B:8:0x0044, B:10:0x004a, B:12:0x0053, B:14:0x0059, B:22:0x0068, B:24:0x006c, B:26:0x0072, B:33:0x007f, B:36:0x008d, B:39:0x0095, B:41:0x009b, B:47:0x00a6, B:49:0x00b2, B:48:0x00ab, B:34:0x0084, B:21:0x0066), top: B:55:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0084 A[Catch: Exception -> 0x00ef, TryCatch #0 {Exception -> 0x00ef, blocks: (B:4:0x000e, B:6:0x0027, B:8:0x0044, B:10:0x004a, B:12:0x0053, B:14:0x0059, B:22:0x0068, B:24:0x006c, B:26:0x0072, B:33:0x007f, B:36:0x008d, B:39:0x0095, B:41:0x009b, B:47:0x00a6, B:49:0x00b2, B:48:0x00ab, B:34:0x0084, B:21:0x0066), top: B:55:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008d A[Catch: Exception -> 0x00ef, TryCatch #0 {Exception -> 0x00ef, blocks: (B:4:0x000e, B:6:0x0027, B:8:0x0044, B:10:0x004a, B:12:0x0053, B:14:0x0059, B:22:0x0068, B:24:0x006c, B:26:0x0072, B:33:0x007f, B:36:0x008d, B:39:0x0095, B:41:0x009b, B:47:0x00a6, B:49:0x00b2, B:48:0x00ab, B:34:0x0084, B:21:0x0066), top: B:55:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0095 A[Catch: Exception -> 0x00ef, TryCatch #0 {Exception -> 0x00ef, blocks: (B:4:0x000e, B:6:0x0027, B:8:0x0044, B:10:0x004a, B:12:0x0053, B:14:0x0059, B:22:0x0068, B:24:0x006c, B:26:0x0072, B:33:0x007f, B:36:0x008d, B:39:0x0095, B:41:0x009b, B:47:0x00a6, B:49:0x00b2, B:48:0x00ab, B:34:0x0084, B:21:0x0066), top: B:55:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ab A[Catch: Exception -> 0x00ef, TryCatch #0 {Exception -> 0x00ef, blocks: (B:4:0x000e, B:6:0x0027, B:8:0x0044, B:10:0x004a, B:12:0x0053, B:14:0x0059, B:22:0x0068, B:24:0x006c, B:26:0x0072, B:33:0x007f, B:36:0x008d, B:39:0x0095, B:41:0x009b, B:47:0x00a6, B:49:0x00b2, B:48:0x00ab, B:34:0x0084, B:21:0x0066), top: B:55:0x000e }] */
    @qd.i(sticky = true, threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onEvent(df.w r15) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity.onEvent(df.w):void");
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(df.z zVar) throws JSONException {
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
        qd.b.b().l(df.z.class);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
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
                    SharedPreferences sharedPreferences = getSharedPreferences("settings", 0);
                    if (sharedPreferences != null) {
                        SharedPreferences.Editor editor = sharedPreferences.edit();
                        h.e(editor, "editor");
                        editor.putString("did", didValue);
                        editor.putString("esk", eskValue);
                        editor.apply();
                    }
                    NotificationManagerCompat notificationManagerCompatFrom = NotificationManagerCompat.from(this);
                    h.e(notificationManagerCompatFrom, "from(this@ServicePageActivity)");
                    boolean zAreNotificationsEnabled = notificationManagerCompatFrom.areNotificationsEnabled();
                    String str = Build.MODEL;
                    String manufacturer = Build.MANUFACTURER;
                    int r6 = Build.VERSION.SDK_INT;
                    JSONObject jSONObject2 = new JSONObject();
                    StringBuilder sb2 = new StringBuilder();
                    h.e(manufacturer, "manufacturer");
                    sb2.append(f.a(manufacturer));
                    sb2.append(' ');
                    sb2.append(str);
                    jSONObject2.put("model", sb2.toString());
                    jSONObject2.put("os", "android");
                    jSONObject2.put("osVersion", String.valueOf(r6));
                    jSONObject2.put("appVersion", t());
                    jSONObject2.put("appId", "tr.gov.turkiye.edevlet.kapisi.v21");
                    jSONObject2.put("isNotificationEnabled", zAreNotificationsEnabled);
                    jSONObject2.put("platformId", this.K);
                    jSONObject2.put(NotificationCompat.CATEGORY_STATUS, "1");
                    v().f16829g.evaluateJavascript("deviceRegistrationCallback(" + jSONObject2 + ')', null);
                }
            }
        } catch (Exception unused) {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(NotificationCompat.CATEGORY_STATUS, "0");
            v().f16829g.evaluateJavascript("deviceRegistrationCallback(" + jSONObject3 + ')', null);
        }
        qd.b.b().l(a0.class);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
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

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(d0 d0Var) {
        if (d0Var != null) {
            try {
                if (Build.VERSION.SDK_INT >= 23) {
                    String[] strArr = a0.b.f15n;
                    if (td.a.a(this, (String[]) Arrays.copyOf(strArr, 1))) {
                        x();
                    } else {
                        ActivityCompat.requestPermissions(this, strArr, 2);
                    }
                } else {
                    x();
                }
            } catch (Exception unused) {
            }
        }
        qd.b.b().l(d0.class);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004e A[Catch: Exception -> 0x00b8, TryCatch #0 {Exception -> 0x00b8, blocks: (B:3:0x0014, B:5:0x002a, B:7:0x002e, B:13:0x003a, B:15:0x0040, B:17:0x0044, B:22:0x004e, B:24:0x0052, B:25:0x0094), top: B:30:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0094 A[Catch: Exception -> 0x00b8, TRY_LEAVE, TryCatch #0 {Exception -> 0x00b8, blocks: (B:3:0x0014, B:5:0x002a, B:7:0x002e, B:13:0x003a, B:15:0x0040, B:17:0x0044, B:22:0x004e, B:24:0x0052, B:25:0x0094), top: B:30:0x0014 }] */
    @qd.i(sticky = true, threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    @android.annotation.SuppressLint({"SimpleDateFormat"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onEvent(df.f0 r13) throws org.json.JSONException, java.text.ParseException {
        /*
            r12 = this;
            java.lang.String r0 = ""
            java.lang.String r1 = "0"
            java.lang.String r2 = "code"
            java.lang.String r3 = "status"
            java.lang.String r4 = "sendTOTP("
            java.lang.String r5 = "value "
            java.lang.String r6 = "serverTimeEvent"
            kotlin.jvm.internal.h.f(r13, r6)
            r6 = 41
            r7 = 0
            java.text.SimpleDateFormat r8 = new java.text.SimpleDateFormat     // Catch: java.lang.Exception -> Lb8
            java.lang.String r9 = "dd/MM/yyyy HH:mm:ss"
            r8.<init>(r9)     // Catch: java.lang.Exception -> Lb8
            java.lang.String r9 = "GMT+3"
            java.util.TimeZone r9 = java.util.TimeZone.getTimeZone(r9)     // Catch: java.lang.Exception -> Lb8
            r8.setTimeZone(r9)     // Catch: java.lang.Exception -> Lb8
            boolean r9 = r13.f4869a     // Catch: java.lang.Exception -> Lb8
            r10 = 1
            r11 = 0
            if (r9 == 0) goto L3f
            java.lang.String r13 = r13.f4870b     // Catch: java.lang.Exception -> Lb8
            if (r13 == 0) goto L37
            int r9 = r13.length()     // Catch: java.lang.Exception -> Lb8
            if (r9 != 0) goto L35
            goto L37
        L35:
            r9 = 0
            goto L38
        L37:
            r9 = 1
        L38:
            if (r9 != 0) goto L3f
            java.util.Date r13 = r8.parse(r13)     // Catch: java.lang.Exception -> Lb8
            goto L40
        L3f:
            r13 = r7
        L40:
            java.lang.String r8 = r12.I     // Catch: java.lang.Exception -> Lb8
            if (r8 == 0) goto L4c
            int r8 = r8.length()     // Catch: java.lang.Exception -> Lb8
            if (r8 != 0) goto L4b
            goto L4c
        L4b:
            r10 = 0
        L4c:
            if (r10 != 0) goto L94
            java.lang.String r8 = r12.I     // Catch: java.lang.Exception -> Lb8
            if (r8 == 0) goto Ldb
            jf.d r9 = new jf.d     // Catch: java.lang.Exception -> Lb8
            r9.<init>()     // Catch: java.lang.Exception -> Lb8
            java.lang.String r13 = r9.a(r8, r13)     // Catch: java.lang.Exception -> Lb8
            org.json.JSONObject r8 = new org.json.JSONObject     // Catch: java.lang.Exception -> Lb8
            r8.<init>()     // Catch: java.lang.Exception -> Lb8
            java.lang.String r9 = "1"
            r8.put(r3, r9)     // Catch: java.lang.Exception -> Lb8
            r8.put(r2, r13)     // Catch: java.lang.Exception -> Lb8
            yd.a$a r13 = yd.a.f19652a     // Catch: java.lang.Exception -> Lb8
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lb8
            r9.<init>(r5)     // Catch: java.lang.Exception -> Lb8
            r9.append(r8)     // Catch: java.lang.Exception -> Lb8
            java.lang.String r5 = r9.toString()     // Catch: java.lang.Exception -> Lb8
            java.lang.Object[] r9 = new java.lang.Object[r11]     // Catch: java.lang.Exception -> Lb8
            r13.c(r5, r9)     // Catch: java.lang.Exception -> Lb8
            tr.gov.turkiye.edevlet.kapisi.servicepage.databinding.ActivityServicePageBinding r13 = r12.v()     // Catch: java.lang.Exception -> Lb8
            android.webkit.WebView r13 = r13.f16829g     // Catch: java.lang.Exception -> Lb8
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lb8
            r5.<init>(r4)     // Catch: java.lang.Exception -> Lb8
            r5.append(r8)     // Catch: java.lang.Exception -> Lb8
            r5.append(r6)     // Catch: java.lang.Exception -> Lb8
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> Lb8
            r13.evaluateJavascript(r5, r7)     // Catch: java.lang.Exception -> Lb8
            goto Ldb
        L94:
            org.json.JSONObject r13 = new org.json.JSONObject     // Catch: java.lang.Exception -> Lb8
            r13.<init>()     // Catch: java.lang.Exception -> Lb8
            r13.put(r3, r1)     // Catch: java.lang.Exception -> Lb8
            r13.put(r2, r0)     // Catch: java.lang.Exception -> Lb8
            tr.gov.turkiye.edevlet.kapisi.servicepage.databinding.ActivityServicePageBinding r5 = r12.v()     // Catch: java.lang.Exception -> Lb8
            android.webkit.WebView r5 = r5.f16829g     // Catch: java.lang.Exception -> Lb8
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lb8
            r8.<init>(r4)     // Catch: java.lang.Exception -> Lb8
            r8.append(r13)     // Catch: java.lang.Exception -> Lb8
            r8.append(r6)     // Catch: java.lang.Exception -> Lb8
            java.lang.String r13 = r8.toString()     // Catch: java.lang.Exception -> Lb8
            r5.evaluateJavascript(r13, r7)     // Catch: java.lang.Exception -> Lb8
            goto Ldb
        Lb8:
            org.json.JSONObject r13 = new org.json.JSONObject
            r13.<init>()
            r13.put(r3, r1)
            r13.put(r2, r0)
            tr.gov.turkiye.edevlet.kapisi.servicepage.databinding.ActivityServicePageBinding r0 = r12.v()
            android.webkit.WebView r0 = r0.f16829g
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r4)
            r1.append(r13)
            r1.append(r6)
            java.lang.String r13 = r1.toString()
            r0.evaluateJavascript(r13, r7)
        Ldb:
            qd.b r13 = qd.b.b()
            java.lang.Class<df.f0> r0 = df.f0.class
            r13.l(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity.onEvent(df.f0):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(h0 h0Var) throws Throwable {
        if (h0Var != null) {
            v().f16825b.setVisibility(0);
            g[] gVarArr = {new g("serviceCode", Integer.valueOf(h0Var.f4872a))};
            Data.Builder builder = new Data.Builder();
            g gVar = gVarArr[0];
            builder.put((String) gVar.f9582a, gVar.f9583b);
            Data dataBuild = builder.build();
            h.e(dataBuild, "dataBuilder.build()");
            OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(ServiceDetailWorker.class).setInputData(dataBuild).build();
            h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…                 .build()");
            WorkManager.getInstance(this).enqueue(oneTimeWorkRequestBuild);
        }
        qd.b.b().l(h0.class);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(i0 i0Var) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        String string;
        FileOutputStream fileOutputStreamOpenFileOutput;
        String str;
        if (i0Var != null) {
            String content = i0Var.f4873a;
            h.f(content, "content");
            String type = i0Var.f4874b;
            h.f(type, "type");
            if (i0Var.f4875c) {
                pg.c.c(this, content);
            } else {
                boolean z10 = false;
                if (mc.j.x(type, "pdf")) {
                    string = getString(R.string.filename_pdf);
                    h.e(string, "context.getString(R.string.filename_pdf)");
                    byte[] bArrA = je.a.a(content);
                    fileOutputStreamOpenFileOutput = openFileOutput(string, 0);
                    try {
                        try {
                            fileOutputStreamOpenFileOutput.write(bArrA);
                            z10 = true;
                        } catch (Exception unused) {
                        }
                        l9.m mVar = l9.m.f9594a;
                        x5.a.f(fileOutputStreamOpenFileOutput, null);
                        if (z10) {
                            str = "application/pdf";
                            pg.c.a(this, string, str);
                        }
                    } finally {
                    }
                } else if (mc.j.x(type, "xls")) {
                    string = getString(R.string.filename_excel);
                    h.e(string, "context.getString(R.string.filename_excel)");
                    byte[] bArrA2 = je.a.a(content);
                    fileOutputStreamOpenFileOutput = openFileOutput(string, 0);
                    try {
                        try {
                            fileOutputStreamOpenFileOutput.write(bArrA2);
                            z10 = true;
                        } catch (Exception unused2) {
                        }
                        l9.m mVar2 = l9.m.f9594a;
                        x5.a.f(fileOutputStreamOpenFileOutput, null);
                        if (z10) {
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

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(l0 twoFactorRequestEvent) throws JSONException {
        h.f(twoFactorRequestEvent, "twoFactorRequestEvent");
        try {
            String ukValue = new JSONObject(twoFactorRequestEvent.f4879a).getString("uk");
            h.e(ukValue, "ukValue");
            if (ukValue.length() > 0) {
                this.I = v.b(this, ukValue);
                OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(TimeWorker.class).build();
                h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilder<TimeWorker>().build()");
                WorkManager.getInstance(this).enqueue(oneTimeWorkRequestBuild);
            } else {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(NotificationCompat.CATEGORY_STATUS, "0");
                jSONObject.put("code", "");
                v().f16829g.evaluateJavascript("sendTOTP(" + jSONObject + ')', null);
            }
        } catch (Exception unused) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(NotificationCompat.CATEGORY_STATUS, "0");
            jSONObject2.put("code", "");
            v().f16829g.evaluateJavascript("sendTOTP(" + jSONObject2 + ')', null);
        }
        qd.b.b().l(l0.class);
    }
}
