package e1;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.io.IOException;

@RequiresApi(api = 28)
/* loaded from: classes.dex */
public final class d implements v0.j<ImageDecoder.Source, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final y0.d f5033a = new y0.d();

    @Override // v0.j
    public final /* bridge */ /* synthetic */ boolean a(@NonNull ImageDecoder.Source source, @NonNull v0.h hVar) throws IOException {
        return true;
    }

    @Override // v0.j
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final e b(@NonNull ImageDecoder.Source source, int r52, int r6, @NonNull v0.h hVar) throws IOException {
        Bitmap bitmapDecodeBitmap = ImageDecoder.decodeBitmap(source, new d1.a(r52, r6, hVar));
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            Log.v("BitmapImageDecoder", "Decoded [" + bitmapDecodeBitmap.getWidth() + "x" + bitmapDecodeBitmap.getHeight() + "] for [" + r52 + "x" + r6 + "]");
        }
        return new e(bitmapDecodeBitmap, this.f5033a);
    }
}
