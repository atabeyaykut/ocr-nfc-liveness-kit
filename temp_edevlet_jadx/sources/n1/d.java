package n1;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class d extends e<Drawable> {
    public d(ImageView imageView) {
        super(imageView);
    }

    @Override // n1.e
    public final void k(@Nullable Drawable drawable) {
        ((ImageView) this.f10531a).setImageDrawable(drawable);
    }
}
