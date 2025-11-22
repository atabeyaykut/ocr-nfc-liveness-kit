package com.yalantis.ucrop;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.content.ContextCompat;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionManager;
import com.yalantis.ucrop.view.GestureCropImageView;
import com.yalantis.ucrop.view.OverlayView;
import com.yalantis.ucrop.view.UCropView;
import java.util.ArrayList;
import java.util.Locale;
import n8.f;
import p8.d;
import s8.c;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes2.dex */
public class UCropActivity extends AppCompatActivity {
    public static final Bitmap.CompressFormat H = Bitmap.CompressFormat.JPEG;
    public View A;
    public AutoTransition B;

    /* renamed from: a, reason: collision with root package name */
    public String f4445a;

    /* renamed from: b, reason: collision with root package name */
    public int f4446b;

    /* renamed from: c, reason: collision with root package name */
    public int f4447c;

    /* renamed from: d, reason: collision with root package name */
    public int f4448d;

    /* renamed from: e, reason: collision with root package name */
    public int f4449e;

    @ColorInt
    public int f;

    /* renamed from: g, reason: collision with root package name */
    @DrawableRes
    public int f4450g;

    /* renamed from: h, reason: collision with root package name */
    @DrawableRes
    public int f4451h;

    /* renamed from: j, reason: collision with root package name */
    public int f4452j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f4453k;

    /* renamed from: m, reason: collision with root package name */
    public UCropView f4455m;

    /* renamed from: n, reason: collision with root package name */
    public GestureCropImageView f4456n;

    /* renamed from: p, reason: collision with root package name */
    public OverlayView f4457p;

    /* renamed from: q, reason: collision with root package name */
    public ViewGroup f4458q;

    /* renamed from: r, reason: collision with root package name */
    public ViewGroup f4459r;

    /* renamed from: s, reason: collision with root package name */
    public ViewGroup f4460s;

    /* renamed from: t, reason: collision with root package name */
    public ViewGroup f4461t;

    /* renamed from: v, reason: collision with root package name */
    public ViewGroup f4462v;
    public ViewGroup w;

    /* renamed from: y, reason: collision with root package name */
    public TextView f4464y;

    /* renamed from: z, reason: collision with root package name */
    public TextView f4465z;

    /* renamed from: l, reason: collision with root package name */
    public boolean f4454l = true;

    /* renamed from: x, reason: collision with root package name */
    public final ArrayList f4463x = new ArrayList();
    public Bitmap.CompressFormat C = H;
    public int D = 90;
    public int[] E = {1, 2, 3};
    public final a F = new a();
    public final b G = new b();

    public class a implements c.a {
        public a() {
        }

        public final void a(float f) {
            TextView textView = UCropActivity.this.f4464y;
            if (textView != null) {
                textView.setText(String.format(Locale.getDefault(), "%.1f°", Float.valueOf(f)));
            }
        }

        public final void b(float f) {
            TextView textView = UCropActivity.this.f4465z;
            if (textView != null) {
                textView.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf((int) (f * 100.0f))));
            }
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (view.isSelected()) {
                return;
            }
            int id2 = view.getId();
            Bitmap.CompressFormat compressFormat = UCropActivity.H;
            UCropActivity.this.u(id2);
        }
    }

    static {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x050b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x051e  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0525  */
    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate(android.os.Bundle r18) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 1361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yalantis.ucrop.UCropActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.ucrop_menu_activity, menu);
        MenuItem menuItemFindItem = menu.findItem(R.id.menu_loader);
        Drawable icon = menuItemFindItem.getIcon();
        if (icon != null) {
            try {
                icon.mutate();
                icon.setColorFilter(this.f4449e, PorterDuff.Mode.SRC_ATOP);
                menuItemFindItem.setIcon(icon);
            } catch (IllegalStateException e10) {
                Log.i("UCropActivity", String.format("%s - %s", e10.getMessage(), getString(R.string.ucrop_mutate_exception_hint)));
            }
            ((Animatable) menuItemFindItem.getIcon()).start();
        }
        MenuItem menuItemFindItem2 = menu.findItem(R.id.menu_crop);
        Drawable drawable = ContextCompat.getDrawable(this, this.f4451h);
        if (drawable != null) {
            drawable.mutate();
            drawable.setColorFilter(this.f4449e, PorterDuff.Mode.SRC_ATOP);
            menuItemFindItem2.setIcon(drawable);
        }
        return true;
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != R.id.menu_crop) {
            if (menuItem.getItemId() != 16908332) {
                return super.onOptionsItemSelected(menuItem);
            }
            onBackPressed();
            return true;
        }
        this.A.setClickable(true);
        this.f4454l = true;
        supportInvalidateOptionsMenu();
        GestureCropImageView gestureCropImageView = this.f4456n;
        Bitmap.CompressFormat compressFormat = this.C;
        int r72 = this.D;
        f fVar = new f(this);
        gestureCropImageView.h();
        gestureCropImageView.setImageToWrapCropBounds(false);
        new q8.a(gestureCropImageView.getContext(), gestureCropImageView.getViewBitmap(), new d(gestureCropImageView.f15277r, b8.f.p0(gestureCropImageView.f15300a), gestureCropImageView.getCurrentScale(), gestureCropImageView.getCurrentAngle()), new p8.b(gestureCropImageView.B, gestureCropImageView.C, compressFormat, r72, gestureCropImageView.getImageInputPath(), gestureCropImageView.getImageOutputPath(), gestureCropImageView.getExifInfo()), fVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        return true;
    }

    @Override // android.app.Activity
    public final boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.id.menu_crop).setVisible(!this.f4454l);
        menu.findItem(R.id.menu_loader).setVisible(this.f4454l);
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        super.onStop();
        GestureCropImageView gestureCropImageView = this.f4456n;
        if (gestureCropImageView != null) {
            gestureCropImageView.h();
        }
    }

    public final void s(int r6) {
        GestureCropImageView gestureCropImageView = this.f4456n;
        int r12 = this.E[r6];
        gestureCropImageView.setScaleEnabled(r12 == 3 || r12 == 1);
        GestureCropImageView gestureCropImageView2 = this.f4456n;
        int r62 = this.E[r6];
        gestureCropImageView2.setRotateEnabled(r62 == 3 || r62 == 2);
    }

    public final void t(Throwable th2) {
        setResult(96, new Intent().putExtra("com.yalantis.ucrop.Error", th2));
    }

    public final void u(@IdRes int r92) {
        if (this.f4453k) {
            this.f4458q.setSelected(r92 == R.id.state_aspect_ratio);
            this.f4459r.setSelected(r92 == R.id.state_rotate);
            this.f4460s.setSelected(r92 == R.id.state_scale);
            this.f4461t.setVisibility(r92 == R.id.state_aspect_ratio ? 0 : 8);
            this.f4462v.setVisibility(r92 == R.id.state_rotate ? 0 : 8);
            this.w.setVisibility(r92 == R.id.state_scale ? 0 : 8);
            TransitionManager.beginDelayedTransition((ViewGroup) findViewById(R.id.ucrop_photobox), this.B);
            this.f4460s.findViewById(R.id.text_view_scale).setVisibility(r92 == R.id.state_scale ? 0 : 8);
            this.f4458q.findViewById(R.id.text_view_crop).setVisibility(r92 == R.id.state_aspect_ratio ? 0 : 8);
            this.f4459r.findViewById(R.id.text_view_rotate).setVisibility(r92 == R.id.state_rotate ? 0 : 8);
            if (r92 == R.id.state_scale) {
                s(0);
            } else if (r92 == R.id.state_rotate) {
                s(1);
            } else {
                s(2);
            }
        }
    }
}
