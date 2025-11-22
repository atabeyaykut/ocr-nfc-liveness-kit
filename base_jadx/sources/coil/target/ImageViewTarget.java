package coil.target;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcoil/target/ImageViewTarget;", "Lcoil/target/GenericViewTarget;", "Landroid/widget/ImageView;", "coil-base_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public class ImageViewTarget extends GenericViewTarget<ImageView> {

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f2468b;

    public ImageViewTarget(ImageView imageView) {
        this.f2468b = imageView;
    }

    @Override // r.b
    /* renamed from: d, reason: from getter */
    public final ImageView getF2468b() {
        return this.f2468b;
    }

    @Override // coil.target.GenericViewTarget, t.d
    public final Drawable e() {
        return this.f2468b.getDrawable();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ImageViewTarget) {
            if (h.a(this.f2468b, ((ImageViewTarget) obj).f2468b)) {
                return true;
            }
        }
        return false;
    }

    @Override // coil.target.GenericViewTarget
    public final void f(Drawable drawable) {
        this.f2468b.setImageDrawable(drawable);
    }

    public final int hashCode() {
        return this.f2468b.hashCode();
    }
}
