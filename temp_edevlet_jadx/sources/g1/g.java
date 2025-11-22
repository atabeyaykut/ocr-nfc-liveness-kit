package g1;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import v0.h;
import v0.j;
import x0.w;

/* loaded from: classes.dex */
public final class g implements j<Drawable, Drawable> {
    @Override // v0.j
    public final /* bridge */ /* synthetic */ boolean a(@NonNull Drawable drawable, @NonNull h hVar) throws IOException {
        return true;
    }

    @Override // v0.j
    @Nullable
    public final w<Drawable> b(@NonNull Drawable drawable, int r22, int r32, @NonNull h hVar) throws IOException {
        Drawable drawable2 = drawable;
        if (drawable2 != null) {
            return new e(drawable2);
        }
        return null;
    }
}
