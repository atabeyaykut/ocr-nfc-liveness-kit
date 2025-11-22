package r8;

import android.R;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;

/* loaded from: classes2.dex */
public final class f extends StateListDrawable {

    /* renamed from: a, reason: collision with root package name */
    public final int f14351a;

    public f(Drawable drawable, int r42) {
        this.f14351a = r42;
        addState(new int[]{R.attr.state_selected}, drawable);
        addState(new int[0], drawable);
    }

    @Override // android.graphics.drawable.StateListDrawable, android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.StateListDrawable, android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] r6) {
        boolean z10 = false;
        for (int r02 : r6) {
            if (r02 == 16842913) {
                z10 = true;
            }
        }
        if (z10) {
            setColorFilter(this.f14351a, PorterDuff.Mode.SRC_ATOP);
        } else {
            clearColorFilter();
        }
        return super.onStateChange(r6);
    }
}
