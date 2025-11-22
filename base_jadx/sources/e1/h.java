package e1;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.nio.ByteBuffer;

@RequiresApi(api = 28)
/* loaded from: classes.dex */
public final class h implements v0.j<ByteBuffer, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final d f5037a = new d();

    @Override // v0.j
    public final /* bridge */ /* synthetic */ boolean a(@NonNull ByteBuffer byteBuffer, @NonNull v0.h hVar) throws IOException {
        return true;
    }

    @Override // v0.j
    public final x0.w<Bitmap> b(@NonNull ByteBuffer byteBuffer, int r32, int r42, @NonNull v0.h hVar) throws IOException {
        return this.f5037a.b(ImageDecoder.createSource(byteBuffer), r32, r42, hVar);
    }
}
