package j1;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import v0.h;
import x0.w;

/* loaded from: classes.dex */
public final class a implements e<Bitmap, byte[]> {

    /* renamed from: a, reason: collision with root package name */
    public final Bitmap.CompressFormat f7967a = Bitmap.CompressFormat.JPEG;

    /* renamed from: b, reason: collision with root package name */
    public final int f7968b = 100;

    @Override // j1.e
    @Nullable
    public final w<byte[]> a(@NonNull w<Bitmap> wVar, @NonNull h hVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        wVar.get().compress(this.f7967a, this.f7968b, byteArrayOutputStream);
        wVar.recycle();
        return new f1.b(byteArrayOutputStream.toByteArray());
    }
}
