package e1;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.io.InputStream;

@RequiresApi(api = 28)
/* loaded from: classes.dex */
public final class t implements v0.j<InputStream, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final d f5085a = new d();

    @Override // v0.j
    public final /* bridge */ /* synthetic */ boolean a(@NonNull InputStream inputStream, @NonNull v0.h hVar) throws IOException {
        return true;
    }

    @Override // v0.j
    public final x0.w<Bitmap> b(@NonNull InputStream inputStream, int r32, int r42, @NonNull v0.h hVar) throws IOException {
        return this.f5085a.b(ImageDecoder.createSource(q1.a.b(inputStream)), r32, r42, hVar);
    }
}
