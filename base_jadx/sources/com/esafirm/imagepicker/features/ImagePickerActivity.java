package com.esafirm.imagepicker.features;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.camera.core.impl.k;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.AsyncListDiffer;
import androidx.view.result.ActivityResultLauncher;
import androidx.view.result.contract.ActivityResultContracts;
import c5.e0;
import c5.y;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.j;
import l9.m;
import m9.v;
import t1.g;
import t1.l;
import t1.u;
import tr.gov.turkiye.edevlet.kapisi.R;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/esafirm/imagepicker/features/ImagePickerActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lt1/l;", "<init>", "()V", "imagepicker_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class ImagePickerActivity extends AppCompatActivity implements l {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f2867h = 0;

    /* renamed from: a, reason: collision with root package name */
    public final u1.a f2868a;

    /* renamed from: b, reason: collision with root package name */
    public ActionBar f2869b;

    /* renamed from: c, reason: collision with root package name */
    public g f2870c;

    /* renamed from: d, reason: collision with root package name */
    public final j f2871d;

    /* renamed from: e, reason: collision with root package name */
    public final j f2872e;
    public final j f;

    /* renamed from: g, reason: collision with root package name */
    public final ActivityResultLauncher<Intent> f2873g;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<v1.a> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final v1.a invoke() {
            Bundle extras = ImagePickerActivity.this.getIntent().getExtras();
            if (extras != null) {
                return (v1.a) extras.getParcelable(v1.a.class.getSimpleName());
            }
            return null;
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<t1.d> {
        public b() {
            super(0);
        }

        @Override // x9.a
        public final t1.d invoke() {
            Bundle extras = ImagePickerActivity.this.getIntent().getExtras();
            h.c(extras);
            return (t1.d) extras.getParcelable(t1.d.class.getSimpleName());
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.a<Boolean> {
        public c() {
            super(0);
        }

        @Override // x9.a
        public final Boolean invoke() {
            int r02 = ImagePickerActivity.f2867h;
            return Boolean.valueOf(((v1.a) ImagePickerActivity.this.f2872e.getValue()) != null);
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.l<List<? extends d2.b>, m> {
        public d() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(List<? extends d2.b> list) {
            List<? extends d2.b> list2 = list;
            Intent intent = new Intent();
            intent.putParcelableArrayListExtra("selectedImages", new ArrayList<>(list2 != null ? list2 : v.f10173a));
            ImagePickerActivity.this.k(intent);
            return m.f9594a;
        }
    }

    public ImagePickerActivity() {
        t1.c cVar = e0.f1500q;
        if (cVar == null) {
            h.n("internalComponents");
            throw null;
        }
        this.f2868a = cVar.b();
        this.f2871d = y.w(new b());
        this.f2872e = y.w(new a());
        this.f = y.w(new c());
        ActivityResultLauncher<Intent> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new k(1, this));
        h.e(activityResultLauncherRegisterForActivityResult, "registerForActivityResul…        }\n        }\n    }");
        this.f2873g = activityResultLauncherRegisterForActivityResult;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context newBase) {
        h.f(newBase, "newBase");
        String str = a2.c.f48a;
        Locale locale = new Locale(a2.c.f48a);
        String string = locale.toString();
        h.e(string, "localeLanguage.toString()");
        if (string.length() == 5) {
            String strSubstring = string.substring(0, 2);
            h.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String strSubstring2 = string.substring(3, 5);
            h.e(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
            Locale locale2 = Locale.getDefault();
            h.e(locale2, "getDefault()");
            String upperCase = strSubstring2.toUpperCase(locale2);
            h.e(upperCase, "this as java.lang.String).toUpperCase(locale)");
            locale = new Locale(strSubstring, upperCase);
        } else if (h.a(string, "zh")) {
            locale = h.a(Locale.getDefault().getCountry(), "TW") ? new Locale("zh", "TW") : new Locale("zh", "CN");
        }
        Locale.setDefault(locale);
        Configuration configuration = new Configuration(newBase.getResources().getConfiguration());
        configuration.setLocale(locale);
        Context contextCreateConfigurationContext = newBase.createConfigurationContext(configuration);
        h.e(contextCreateConfigurationContext, "resultContext.createConfigurationContext(config)");
        super.attachBaseContext(contextCreateConfigurationContext);
    }

    @Override // t1.l
    public final void cancel() {
        finish();
    }

    @Override // t1.l
    public final void d(String str) {
        ActionBar actionBar = this.f2869b;
        if (actionBar != null) {
            actionBar.setTitle(str);
        }
        invalidateOptionsMenu();
    }

    @Override // t1.l
    public final void j() {
    }

    @Override // t1.l
    public final void k(Intent intent) {
        setResult(-1, intent);
        finish();
    }

    @Override // androidx.view.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        boolean z10;
        g gVar = this.f2870c;
        if (gVar != null) {
            z1.b bVar = gVar.f15522b;
            if (bVar == null) {
                h.n("recyclerViewManager");
                throw null;
            }
            boolean z11 = true;
            if (!bVar.f19763b.f15505h || bVar.d()) {
                z10 = false;
            } else {
                bVar.e(null);
                s1.g gVar2 = bVar.f19766e;
                if (gVar2 == null) {
                    h.n("imageAdapter");
                    throw null;
                }
                ((AsyncListDiffer) gVar2.f14845d.getValue()).submitList(v.f10173a);
                z10 = true;
            }
            if (z10) {
                gVar.E();
            } else {
                z11 = false;
            }
            if (z11) {
                return;
            }
        }
        super.onBackPressed();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setResult(0);
        Intent intent = getIntent();
        if (intent == null || intent.getExtras() == null) {
            throw new IllegalStateException("This should not happen. Please open an issue!");
        }
        if (((Boolean) this.f.getValue()).booleanValue()) {
            v1.a aVar = (v1.a) this.f2872e.getValue();
            h.c(aVar);
            this.f2873g.launch(this.f2868a.a(this, aVar));
            return;
        }
        t1.d dVar = (t1.d) this.f2871d.getValue();
        h.c(dVar);
        setTheme(dVar.f15504g);
        setContentView(R.layout.ef_activity_image_picker);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        ActionBar supportActionBar = getSupportActionBar();
        this.f2869b = supportActionBar;
        if (supportActionBar != null) {
            Drawable drawable = ContextCompat.getDrawable(getApplicationContext(), getResources().getConfiguration().getLayoutDirection() == 1 ? R.drawable.ef_ic_arrow_forward : R.drawable.ef_ic_arrow_back);
            int r52 = dVar.f15503e;
            if (r52 != -1 && drawable != null) {
                drawable.setColorFilter(r52, PorterDuff.Mode.SRC_ATOP);
            }
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setHomeAsUpIndicator(drawable);
            supportActionBar.setDisplayShowTitleEnabled(true);
        }
        if (bundle != null) {
            Fragment fragmentFindFragmentById = getSupportFragmentManager().findFragmentById(R.id.ef_imagepicker_fragment_placeholder);
            h.d(fragmentFindFragmentById, "null cannot be cast to non-null type com.esafirm.imagepicker.features.ImagePickerFragment");
            this.f2870c = (g) fragmentFindFragmentById;
            return;
        }
        int r72 = g.f15520j;
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable(t1.d.class.getSimpleName(), dVar);
        g gVar = new g();
        gVar.setArguments(bundle2);
        this.f2870c = gVar;
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        h.e(fragmentTransactionBeginTransaction, "supportFragmentManager.beginTransaction()");
        g gVar2 = this.f2870c;
        if (gVar2 == null) {
            h.n("imagePickerFragment");
            throw null;
        }
        fragmentTransactionBeginTransaction.replace(R.id.ef_imagepicker_fragment_placeholder, gVar2);
        fragmentTransactionBeginTransaction.commit();
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        h.f(menu, "menu");
        getMenuInflater().inflate(R.menu.ef_image_picker_menu_main, menu);
        return true;
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem item) {
        h.f(item, "item");
        int itemId = item.getItemId();
        if (itemId == 16908332) {
            onBackPressed();
            return true;
        }
        if (itemId == R.id.menu_done) {
            g gVar = this.f2870c;
            if (gVar != null) {
                gVar.D();
                return true;
            }
            h.n("imagePickerFragment");
            throw null;
        }
        if (itemId != R.id.menu_camera) {
            return super.onOptionsItemSelected(item);
        }
        g gVar2 = this.f2870c;
        if (gVar2 == null) {
            h.n("imagePickerFragment");
            throw null;
        }
        FragmentActivity fragmentActivityRequireActivity = gVar2.requireActivity();
        h.e(fragmentActivityRequireActivity, "requireActivity()");
        boolean z10 = new Intent("android.media.action.IMAGE_CAPTURE").resolveActivity(fragmentActivityRequireActivity.getPackageManager()) != null;
        if (!z10) {
            Context applicationContext = fragmentActivityRequireActivity.getApplicationContext();
            Toast.makeText(applicationContext, applicationContext.getString(R.string.ef_error_no_camera), 1).show();
        }
        if (z10) {
            u uVar = gVar2.f15526g;
            if (uVar == null) {
                h.n("presenter");
                throw null;
            }
            t1.d config = gVar2.A();
            h.f(config, "config");
            Context applicationContext2 = gVar2.requireContext().getApplicationContext();
            Context contextRequireContext = gVar2.requireContext();
            h.e(contextRequireContext, "fragment.requireContext()");
            Intent intentA = uVar.f15551b.a(contextRequireContext, config);
            if (intentA == null) {
                Toast.makeText(applicationContext2, applicationContext2.getString(R.string.ef_error_create_image_file), 1).show();
            } else {
                gVar2.startActivityForResult(intentA, 2000);
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x008d  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onPrepareOptionsMenu(android.view.Menu r7) {
        /*
            r6 = this;
            java.lang.String r0 = "menu"
            kotlin.jvm.internal.h.f(r7, r0)
            l9.j r0 = r6.f
            java.lang.Object r0 = r0.getValue()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L9e
            r0 = 2131362399(0x7f0a025f, float:1.8344577E38)
            android.view.MenuItem r0 = r7.findItem(r0)
            l9.j r1 = r6.f2871d
            java.lang.Object r2 = r1.getValue()
            t1.d r2 = (t1.d) r2
            r3 = 1
            if (r2 == 0) goto L28
            boolean r2 = r2.f15509m
            goto L29
        L28:
            r2 = 1
        L29:
            r0.setVisible(r2)
            r0 = 2131362402(0x7f0a0262, float:1.8344584E38)
            android.view.MenuItem r0 = r7.findItem(r0)
            java.lang.Object r1 = r1.getValue()
            t1.d r1 = (t1.d) r1
            kotlin.jvm.internal.h.c(r1)
            r2 = 0
            java.lang.String r1 = r1.f15502d
            if (r1 == 0) goto L4a
            boolean r4 = mc.j.y(r1)
            if (r4 == 0) goto L48
            goto L4a
        L48:
            r4 = 0
            goto L4b
        L4a:
            r4 = 1
        L4b:
            if (r4 == 0) goto L59
            r1 = 2131951738(0x7f13007a, float:1.9539899E38)
            java.lang.String r1 = r6.getString(r1)
            java.lang.String r4 = "context.getString(R.string.ef_done)"
            kotlin.jvm.internal.h.e(r1, r4)
        L59:
            r0.setTitle(r1)
            t1.g r1 = r6.f2870c
            r4 = 0
            if (r1 == 0) goto L98
            z1.b r1 = r1.f15522b
            if (r1 == 0) goto L92
            boolean r5 = r1.d()
            if (r5 != 0) goto L8d
            s1.g r5 = r1.f19766e
            if (r5 == 0) goto L87
            java.util.ArrayList r4 = r5.f14846e
            boolean r4 = r4.isEmpty()
            r4 = r4 ^ r3
            t1.d r1 = r1.f19763b
            if (r4 != 0) goto L7e
            boolean r4 = r1.f15515t
            if (r4 == 0) goto L8d
        L7e:
            int r1 = r1.f15513r
            r4 = 2
            if (r1 == r4) goto L8d
            r4 = 4
            if (r1 == r4) goto L8d
            goto L8e
        L87:
            java.lang.String r7 = "imageAdapter"
            kotlin.jvm.internal.h.n(r7)
            throw r4
        L8d:
            r3 = 0
        L8e:
            r0.setVisible(r3)
            goto L9e
        L92:
            java.lang.String r7 = "recyclerViewManager"
            kotlin.jvm.internal.h.n(r7)
            throw r4
        L98:
            java.lang.String r7 = "imagePickerFragment"
            kotlin.jvm.internal.h.n(r7)
            throw r4
        L9e:
            boolean r7 = super.onPrepareOptionsMenu(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esafirm.imagepicker.features.ImagePickerActivity.onPrepareOptionsMenu(android.view.Menu):boolean");
    }
}
