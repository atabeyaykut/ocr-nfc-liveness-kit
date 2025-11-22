package z;

import android.content.Context;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.annotation.RestrictTo;
import b0.c;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;
import v.e;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public abstract class a extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f19728a;

    /* renamed from: b, reason: collision with root package name */
    public final int f19729b;

    /* renamed from: c, reason: collision with root package name */
    public e f19730c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f19731d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        h.g(context, "context");
        Paint paint = new Paint();
        this.f19728a = paint;
        Context context2 = getContext();
        h.b(context2, "context");
        this.f19729b = context2.getResources().getDimensionPixelSize(R.dimen.md_divider_height);
        setWillNotDraw(false);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(context.getResources().getDimension(R.dimen.md_divider_height));
        paint.setAntiAlias(true);
    }

    private final int getDividerColor() {
        e eVar = this.f19730c;
        if (eVar == null) {
            h.n("dialog");
            throw null;
        }
        Context context = eVar.getContext();
        h.b(context, "dialog.context");
        return c.c(context, null, Integer.valueOf(R.attr.md_divider_color), null, 10);
    }

    public final Paint a() {
        Paint paint = this.f19728a;
        paint.setColor(getDividerColor());
        return paint;
    }

    public final e getDialog() {
        e eVar = this.f19730c;
        if (eVar != null) {
            return eVar;
        }
        h.n("dialog");
        throw null;
    }

    public final int getDividerHeight() {
        return this.f19729b;
    }

    public final boolean getDrawDivider() {
        return this.f19731d;
    }

    public final void setDialog(e eVar) {
        h.g(eVar, "<set-?>");
        this.f19730c = eVar;
    }

    public final void setDrawDivider(boolean z10) {
        this.f19731d = z10;
        invalidate();
    }
}
