package v;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.ColorInt;
import com.afollestad.materialdialogs.internal.button.DialogActionButton;
import com.afollestad.materialdialogs.internal.main.DialogLayout;
import kotlin.jvm.internal.h;
import l9.l;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public final class f implements v.a {

    /* renamed from: a, reason: collision with root package name */
    public static final f f18185a = new f();

    public static final class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ DialogActionButton f18186a;

        public a(DialogActionButton dialogActionButton) {
            this.f18186a = dialogActionButton;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f18186a.requestFocus();
        }
    }

    public static final class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ DialogActionButton f18187a;

        public b(DialogActionButton dialogActionButton) {
            this.f18187a = dialogActionButton;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f18187a.requestFocus();
        }
    }

    @Override // v.a
    public final void a(Context context, Window window, DialogLayout view, Integer num) {
        h.g(context, "context");
        h.g(view, "view");
        if (num != null && num.intValue() == 0) {
            return;
        }
        window.setSoftInputMode(16);
        WindowManager windowManager = window.getWindowManager();
        if (windowManager != null) {
            Resources resources = context.getResources();
            Point point = new Point();
            windowManager.getDefaultDisplay().getSize(point);
            Integer numValueOf = Integer.valueOf(point.x);
            Integer numValueOf2 = Integer.valueOf(point.y);
            int r02 = numValueOf.intValue();
            view.setMaxHeight(numValueOf2.intValue() - (resources.getDimensionPixelSize(R.dimen.md_dialog_vertical_margin) * 2));
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.copyFrom(window.getAttributes());
            layoutParams.width = Math.min(num != null ? num.intValue() : resources.getDimensionPixelSize(R.dimen.md_dialog_max_width), r02 - (resources.getDimensionPixelSize(R.dimen.md_dialog_horizontal_margin) * 2));
            window.setAttributes(layoutParams);
        }
    }

    @Override // v.a
    public final void b(e dialog) {
        h.g(dialog, "dialog");
    }

    @Override // v.a
    public final void c(e dialog) {
        h.g(dialog, "dialog");
        DialogActionButton dialogActionButtonJ = x5.a.j(dialog, 2);
        if (b0.d.c(dialogActionButtonJ)) {
            dialogActionButtonJ.post(new a(dialogActionButtonJ));
            return;
        }
        DialogActionButton dialogActionButtonJ2 = x5.a.j(dialog, 1);
        if (b0.d.c(dialogActionButtonJ2)) {
            dialogActionButtonJ2.post(new b(dialogActionButtonJ2));
        }
    }

    @SuppressLint({"InflateParams"})
    public final ViewGroup d(Context creatingContext, Window window, LayoutInflater layoutInflater, e dialog) {
        h.g(creatingContext, "creatingContext");
        h.g(dialog, "dialog");
        View viewInflate = layoutInflater.inflate(R.layout.md_dialog_base, (ViewGroup) null, false);
        if (viewInflate != null) {
            return (ViewGroup) viewInflate;
        }
        throw new l("null cannot be cast to non-null type android.view.ViewGroup");
    }

    public final int e(boolean z10) {
        return z10 ? R.style.MD_Dark : R.style.MD_Light;
    }

    public final void f(DialogLayout view, @ColorInt int r52, float f) {
        h.g(view, "view");
        view.setCornerRadii(new float[]{f, f, f, f, 0.0f, 0.0f, 0.0f, 0.0f});
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(f);
        gradientDrawable.setColor(r52);
        view.setBackground(gradientDrawable);
    }

    @Override // v.a
    public final void onDismiss() {
    }
}
