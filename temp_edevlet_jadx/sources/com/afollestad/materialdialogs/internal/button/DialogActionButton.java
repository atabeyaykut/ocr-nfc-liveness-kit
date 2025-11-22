package com.afollestad.materialdialogs.internal.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatButton;
import b0.c;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import tr.gov.turkiye.edevlet.kapisi.R;
import v.g;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\f"}, d2 = {"Lcom/afollestad/materialdialogs/internal/button/DialogActionButton;", "Landroidx/appcompat/widget/AppCompatButton;", "", "enabled", "Ll9/m;", "setEnabled", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "core"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class DialogActionButton extends AppCompatButton {

    /* renamed from: a, reason: collision with root package name */
    public int f2474a;

    /* renamed from: b, reason: collision with root package name */
    public int f2475b;

    public static final class a extends j implements x9.a<Integer> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f2476a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context) {
            super(0);
            this.f2476a = context;
        }

        @Override // x9.a
        public final Integer invoke() {
            return Integer.valueOf(c.c(this.f2476a, null, Integer.valueOf(R.attr.colorPrimary), null, 10));
        }
    }

    public static final class b extends j implements x9.a<Integer> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f2477a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context) {
            super(0);
            this.f2477a = context;
        }

        @Override // x9.a
        public final Integer invoke() {
            int r02 = c.c(this.f2477a, null, Integer.valueOf(R.attr.colorPrimary), null, 10);
            return Integer.valueOf(Color.argb((int) (255 * 0.12f), Color.red(r02), Color.green(r02), Color.blue(r02)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        h.g(context, "context");
        setClickable(true);
        setFocusable(true);
    }

    public final void a(Context context, Context appContext, boolean z10) {
        Drawable drawable;
        int r82;
        h.g(appContext, "appContext");
        TypedArray typedArrayObtainStyledAttributes = appContext.getTheme().obtainStyledAttributes(new int[]{R.attr.md_button_casing});
        try {
            int r22 = typedArrayObtainStyledAttributes.getInt(0, 1);
            typedArrayObtainStyledAttributes.recycle();
            setSupportAllCaps(r22 == 1);
            boolean zA = g.a(appContext);
            this.f2474a = c.c(appContext, null, Integer.valueOf(R.attr.md_color_button_text), new a(appContext), 2);
            this.f2475b = c.c(context, Integer.valueOf(zA ? R.color.md_disabled_text_light_theme : R.color.md_disabled_text_dark_theme), null, null, 12);
            setTextColor(this.f2474a);
            Integer numValueOf = Integer.valueOf(R.attr.md_button_selector);
            if (numValueOf != null) {
                try {
                    drawable = context.getTheme().obtainStyledAttributes(new int[]{numValueOf.intValue()}).getDrawable(0);
                } finally {
                }
            } else {
                drawable = null;
            }
            if ((drawable instanceof RippleDrawable) && (r82 = c.c(context, null, Integer.valueOf(R.attr.md_ripple_color), new b(appContext), 2)) != 0) {
                ((RippleDrawable) drawable).setColor(ColorStateList.valueOf(r82));
            }
            setBackground(drawable);
            if (z10) {
                setTextAlignment(6);
                setGravity(8388629);
            } else {
                setGravity(17);
            }
            setEnabled(isEnabled());
        } finally {
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        setTextColor(z10 ? this.f2474a : this.f2475b);
    }
}
