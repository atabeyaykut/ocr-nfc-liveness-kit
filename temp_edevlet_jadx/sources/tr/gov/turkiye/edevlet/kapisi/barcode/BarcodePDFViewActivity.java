package tr.gov.turkiye.edevlet.kapisi.barcode;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.camera2.internal.c;
import androidx.core.content.FileProvider;
import c5.y;
import com.github.barteksc.pdfviewer.PDFView;
import com.github.barteksc.pdfviewer.PDFView.a;
import ff.d;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.e;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.barcode.databinding.ActivityBarcodePdfBinding;
import x9.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/barcode/BarcodePDFViewActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "ui-barcode_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class BarcodePDFViewActivity extends AppCompatActivity {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f15761e = 0;

    /* renamed from: a, reason: collision with root package name */
    public final e f15762a = y.v(3, new b(this));

    /* renamed from: b, reason: collision with root package name */
    public final ff.b f15763b = new ff.b(this);

    /* renamed from: c, reason: collision with root package name */
    public boolean f15764c = true;

    /* renamed from: d, reason: collision with root package name */
    public String f15765d;

    public static final class a extends j implements l<v.e, m> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f15766a = new a();

        public a() {
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

    public static final class b extends j implements x9.a<ActivityBarcodePdfBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f15767a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(AppCompatActivity appCompatActivity) {
            super(0);
            this.f15767a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivityBarcodePdfBinding invoke() {
            LayoutInflater layoutInflater = this.f15767a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivityBarcodePdfBinding.inflate(layoutInflater);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context newBase) {
        h.f(newBase, "newBase");
        this.f15763b.getClass();
        applyOverrideConfiguration(ff.b.f(newBase));
        super.attachBaseContext(newBase);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        h.e(applicationContext, "super.getApplicationContext()");
        this.f15763b.getClass();
        return d.a(applicationContext);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Resources resources = super.getResources();
        h.e(resources, "super.getResources()");
        this.f15763b.b(resources);
        return resources;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        v.e eVar;
        Integer numE;
        l lVar;
        this.f15763b.d();
        super.onCreate(bundle);
        setContentView(s().f15786a);
        this.f15764c = getIntent().getBooleanExtra("isNativeData", true);
        this.f15765d = getIntent().getStringExtra("fileName");
        s().f15788c.setTitle(getString(R.string.title_pdf));
        setSupportActionBar(s().f15788c);
        s().f15788c.setNavigationOnClickListener(new zd.a(0, this));
        File fileT = t();
        if (fileT.exists()) {
            try {
                s().f15787b.s();
                s().f15787b.setBackgroundColor(-3355444);
                PDFView pDFView = s().f15787b;
                pDFView.getClass();
                PDFView.a aVar = pDFView.new a(new m2.a(fileT));
                aVar.f2901b = 8;
                aVar.a();
                return;
            } catch (Exception unused) {
                eVar = new v.e(this);
                numE = c.e(R.string.no_pdf_application_found, eVar, null, 6, R.string.no_pdf_application_found_close);
                lVar = zd.b.f20048a;
            }
        } else {
            eVar = new v.e(this);
            numE = c.e(R.string.no_file_found, eVar, null, 6, R.string.no_file_found_close);
            lVar = zd.c.f20049a;
        }
        v.e.e(eVar, numE, null, lVar, 2);
        eVar.show();
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        h.f(menu, "menu");
        getMenuInflater().inflate(R.menu.pdf_page_menu, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem item) {
        h.f(item, "item");
        if (item.getItemId() != R.id.action_share) {
            return false;
        }
        File fileT = t();
        Resources resources = getResources();
        Intent intent = new Intent("android.intent.action.SEND");
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                Uri uriForFile = FileProvider.getUriForFile(this, "tr.gov.turkiye.edevlet.kapisi.fileprovider", fileT);
                h.e(uriForFile, "getUriForFile(context,\n …\", file\n                )");
                if (fileT.exists()) {
                    intent.setType("application/pdf");
                    intent.putExtra("android.intent.extra.STREAM", uriForFile);
                    intent.putExtra("android.intent.extra.SUBJECT", resources.getString(R.string.action_share_file));
                }
            } catch (Exception unused) {
            }
        } else if (fileT.exists()) {
            intent.setType("application/pdf");
            intent.putExtra("android.intent.extra.STREAM", Uri.parse("file://" + fileT));
            intent.putExtra("android.intent.extra.SUBJECT", resources.getString(R.string.action_share_file));
            intent.putExtra("android.intent.extra.TEXT", resources.getString(R.string.action_share_file));
        }
        startActivity(Intent.createChooser(intent, resources.getString(R.string.action_share_file)));
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        this.f15763b.e(this);
    }

    public final ActivityBarcodePdfBinding s() {
        return (ActivityBarcodePdfBinding) this.f15762a.getValue();
    }

    public final File t() {
        File file = new File(getFilesDir(), getString(R.string.filename_pdf));
        if (this.f15764c) {
            return new File(getFilesDir(), getString(R.string.filename_pdf));
        }
        String str = this.f15765d;
        if (str == null || str.length() == 0) {
            v.e eVar = new v.e(this);
            v.e.e(eVar, c.e(R.string.no_file_found, eVar, null, 6, R.string.no_file_found_close), null, a.f15766a, 2);
            eVar.show();
            return file;
        }
        File externalFilesDir = getExternalFilesDir("download");
        String str2 = this.f15765d;
        h.c(str2);
        return new File(externalFilesDir, str2);
    }
}
