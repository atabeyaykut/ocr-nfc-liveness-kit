package n1;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* loaded from: classes.dex */
public final class b extends e<Bitmap> {
    public b(ImageView imageView) {
        super(imageView);
    }

    @Override // n1.e
    public final void k(Bitmap bitmap) {
        ((ImageView) this.f10531a).setImageBitmap(bitmap);
    }
}
