package o1;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.widget.ImageView;
import o1.d;

/* loaded from: classes.dex */
public final class b implements d<Drawable> {

    /* renamed from: a, reason: collision with root package name */
    public final int f11060a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f11061b;

    public b(int r12, boolean z10) {
        this.f11060a = r12;
        this.f11061b = z10;
    }

    @Override // o1.d
    public final boolean a(Drawable drawable, d.a aVar) {
        Drawable drawable2 = drawable;
        n1.e eVar = (n1.e) aVar;
        Drawable drawable3 = ((ImageView) eVar.f10531a).getDrawable();
        if (drawable3 == null) {
            drawable3 = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{drawable3, drawable2});
        transitionDrawable.setCrossFadeEnabled(this.f11061b);
        transitionDrawable.startTransition(this.f11060a);
        ((ImageView) eVar.f10531a).setImageDrawable(transitionDrawable);
        return true;
    }
}
