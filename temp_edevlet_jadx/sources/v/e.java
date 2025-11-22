package v;

import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import c5.w;
import com.afollestad.materialdialogs.internal.button.DialogActionButton;
import com.afollestad.materialdialogs.internal.button.DialogActionButtonLayout;
import com.afollestad.materialdialogs.internal.main.DialogLayout;
import com.afollestad.materialdialogs.internal.main.DialogTitleLayout;
import com.afollestad.materialdialogs.internal.message.DialogContentLayout;
import da.m;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.h;
import org.bouncycastle.i18n.MessageBundle;
import tr.gov.turkiye.edevlet.kapisi.R;
import x9.l;

/* loaded from: classes.dex */
public final class e extends Dialog {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f18174a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f18175b;

    /* renamed from: c, reason: collision with root package name */
    public final Typeface f18176c;

    /* renamed from: d, reason: collision with root package name */
    public final Typeface f18177d;

    /* renamed from: e, reason: collision with root package name */
    public final Typeface f18178e;
    public final DialogLayout f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f18179g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f18180h;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f18181j;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f18182k;

    /* renamed from: l, reason: collision with root package name */
    public final Context f18183l;

    /* renamed from: m, reason: collision with root package name */
    public final a f18184m;

    /* JADX WARN: Illegal instructions before constructor call */
    public e(Context windowContext) {
        f fVar = f.f18185a;
        h.g(windowContext, "windowContext");
        super(windowContext, fVar.e(!g.a(windowContext)));
        this.f18183l = windowContext;
        this.f18184m = fVar;
        this.f18174a = new LinkedHashMap();
        this.f18175b = true;
        this.f18179g = new ArrayList();
        new ArrayList();
        new ArrayList();
        new ArrayList();
        this.f18180h = new ArrayList();
        this.f18181j = new ArrayList();
        this.f18182k = new ArrayList();
        LayoutInflater layoutInflater = LayoutInflater.from(windowContext);
        Window window = getWindow();
        if (window == null) {
            h.l();
            throw null;
        }
        h.b(layoutInflater, "layoutInflater");
        ViewGroup viewGroupD = fVar.d(windowContext, window, layoutInflater, this);
        setContentView(viewGroupD);
        DialogLayout dialogLayout = (DialogLayout) viewGroupD;
        DialogTitleLayout dialogTitleLayout = dialogLayout.titleLayout;
        if (dialogTitleLayout == null) {
            h.n("titleLayout");
            throw null;
        }
        dialogTitleLayout.setDialog(this);
        DialogActionButtonLayout dialogActionButtonLayout = dialogLayout.buttonsLayout;
        if (dialogActionButtonLayout != null) {
            dialogActionButtonLayout.setDialog(this);
        }
        this.f = dialogLayout;
        this.f18176c = b0.a.e(this, Integer.valueOf(R.attr.md_font_title));
        this.f18177d = b0.a.e(this, Integer.valueOf(R.attr.md_font_body));
        this.f18178e = b0.a.e(this, Integer.valueOf(R.attr.md_font_button));
        int r32 = a0.b.q(this, Integer.valueOf(R.attr.md_background_color), new d(this), 1);
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setBackgroundDrawable(new ColorDrawable(0));
        }
        c cVar = new c(this);
        TypedArray typedArrayObtainStyledAttributes = windowContext.getTheme().obtainStyledAttributes(new int[]{R.attr.md_corner_radius});
        try {
            Float f = (Float) cVar.invoke();
            float dimension = typedArrayObtainStyledAttributes.getDimension(0, f != null ? f.floatValue() : 0.0f);
            typedArrayObtainStyledAttributes.recycle();
            fVar.f(dialogLayout, r32, dimension);
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes.recycle();
            throw th2;
        }
    }

    public static void c(e eVar, Integer num, CharSequence charSequence, int r82) {
        if ((r82 & 1) != 0) {
            num = null;
        }
        if ((r82 & 2) != 0) {
            charSequence = null;
        }
        CharSequence charSequence2 = charSequence;
        if (num == null && charSequence2 == null) {
            throw new IllegalArgumentException("message".concat(": You must specify a resource ID or literal value"));
        }
        DialogContentLayout contentLayout = eVar.f.getContentLayout();
        contentLayout.getClass();
        contentLayout.a(false);
        if (contentLayout.f2514b == null) {
            ViewGroup viewGroup = contentLayout.f2513a;
            if (viewGroup == null) {
                h.l();
                throw null;
            }
            TextView textView = (TextView) b0.d.a(contentLayout, R.layout.md_dialog_stub_message, viewGroup);
            ViewGroup viewGroup2 = contentLayout.f2513a;
            if (viewGroup2 == null) {
                h.l();
                throw null;
            }
            viewGroup2.addView(textView);
            contentLayout.f2514b = textView;
        }
        TextView textView2 = contentLayout.f2514b;
        if (textView2 == null) {
            h.l();
            throw null;
        }
        TextView textView3 = contentLayout.f2514b;
        if (textView3 != null) {
            Typeface typeface = eVar.f18177d;
            if (typeface != null) {
                textView3.setTypeface(typeface);
            }
            Integer numValueOf = Integer.valueOf(R.attr.md_color_content);
            Context context = eVar.f18183l;
            b0.c.b(textView3, context, numValueOf);
            h.g(context, "context");
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.md_line_spacing_body});
            try {
                float f = typedArrayObtainStyledAttributes.getFloat(0, 1.1f);
                typedArrayObtainStyledAttributes.recycle();
                textView2.setLineSpacing(0.0f, f);
                if (charSequence == null) {
                    charSequence = null;
                }
                if (charSequence == null) {
                    charSequence = b0.c.d(eVar, num, null, 4);
                }
                textView2.setText(charSequence);
            } catch (Throwable th2) {
                typedArrayObtainStyledAttributes.recycle();
                throw th2;
            }
        }
    }

    public static void d(e eVar, Integer num, l lVar) {
        if (lVar != null) {
            eVar.f18181j.add(lVar);
        }
        DialogActionButton dialogActionButtonJ = x5.a.j(eVar, 2);
        if (num == null && b0.d.c(dialogActionButtonJ)) {
            return;
        }
        a2.b.l(eVar, dialogActionButtonJ, num, null, android.R.string.cancel, eVar.f18178e, null, 32);
    }

    public static void e(e eVar, Integer num, String str, l lVar, int r14) {
        Integer num2 = (r14 & 1) != 0 ? null : num;
        String str2 = (r14 & 2) != 0 ? null : str;
        if ((r14 & 4) != 0) {
            lVar = null;
        }
        if (lVar != null) {
            eVar.f18180h.add(lVar);
        }
        DialogActionButton dialogActionButtonJ = x5.a.j(eVar, 1);
        if (num2 == null && str2 == null && b0.d.c(dialogActionButtonJ)) {
            return;
        }
        a2.b.l(eVar, dialogActionButtonJ, num2, str2, android.R.string.ok, eVar.f18178e, null, 32);
    }

    public static void f(e eVar, Integer num, String str, int r13) {
        Integer num2 = (r13 & 1) != 0 ? null : num;
        String str2 = (r13 & 2) != 0 ? null : str;
        if (num2 == null && str2 == null) {
            throw new IllegalArgumentException(MessageBundle.TITLE_ENTRY.concat(": You must specify a resource ID or literal value"));
        }
        a2.b.l(eVar, eVar.f.getTitleLayout().getTitleView$core(), num2, str2, 0, eVar.f18176c, Integer.valueOf(R.attr.md_color_title), 8);
    }

    public final void a() {
        super.setCanceledOnTouchOutside(true);
    }

    public final void b(boolean z10) {
        super.setCancelable(z10);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18184m.onDismiss();
        Object systemService = this.f18183l.getSystemService("input_method");
        if (systemService == null) {
            throw new l9.l("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        }
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        View currentFocus = getCurrentFocus();
        if (currentFocus == null) {
            currentFocus = this.f;
        }
        inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        super.dismiss();
    }

    @Override // android.app.Dialog
    public final void setCancelable(boolean z10) {
        super.setCancelable(z10);
    }

    @Override // android.app.Dialog
    public final void setCanceledOnTouchOutside(boolean z10) {
        super.setCanceledOnTouchOutside(z10);
    }

    @Override // android.app.Dialog
    public final void show() {
        AppCompatCheckBox checkBoxPrompt;
        Window window = getWindow();
        if (window == null) {
            h.l();
            throw null;
        }
        Context context = this.f18183l;
        a aVar = this.f18184m;
        DialogLayout dialogLayout = this.f;
        aVar.a(context, window, dialogLayout, null);
        Object obj = this.f18174a.get("md.custom_view_no_vertical_padding");
        boolean zA = h.a((Boolean) (obj instanceof Boolean ? obj : null), Boolean.TRUE);
        w.y(this.f18179g, this);
        if (dialogLayout.getTitleLayout().b() && !zA) {
            dialogLayout.getContentLayout().c(dialogLayout.getFrameMarginVertical(), dialogLayout.getFrameMarginVertical());
        }
        DialogActionButtonLayout buttonsLayout = dialogLayout.getButtonsLayout();
        if (buttonsLayout == null || (checkBoxPrompt = buttonsLayout.getCheckBoxPrompt()) == null) {
            throw new IllegalStateException("The dialog does not have an attached buttons layout.");
        }
        if (b0.d.c(checkBoxPrompt)) {
            DialogContentLayout contentLayout = dialogLayout.getContentLayout();
            m[] mVarArr = DialogContentLayout.f2512h;
            contentLayout.c(-1, 0);
        } else {
            if (dialogLayout.getContentLayout().getChildCount() > 1) {
                DialogContentLayout contentLayout2 = dialogLayout.getContentLayout();
                int frameMarginVerticalLess$core = dialogLayout.getFrameMarginVerticalLess();
                ViewGroup viewGroup = contentLayout2.scrollView;
                ViewGroup viewGroup2 = viewGroup != null ? viewGroup : contentLayout2.recyclerView;
                if (frameMarginVerticalLess$core != -1) {
                    b0.c.e(viewGroup2, 0, 0, 0, frameMarginVerticalLess$core, 7);
                }
            }
        }
        aVar.b(this);
        super.show();
        aVar.c(this);
    }
}
