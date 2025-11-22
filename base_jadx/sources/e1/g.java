package e1;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import e1.s;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;

/* loaded from: classes.dex */
public final class g implements v0.j<ByteBuffer, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final m f5036a;

    public g(m mVar) {
        this.f5036a = mVar;
    }

    @Override // v0.j
    public final boolean a(@NonNull ByteBuffer byteBuffer, @NonNull v0.h hVar) throws IOException {
        this.f5036a.getClass();
        return true;
    }

    @Override // v0.j
    public final x0.w<Bitmap> b(@NonNull ByteBuffer byteBuffer, int r82, int r92, @NonNull v0.h hVar) throws IOException {
        m mVar = this.f5036a;
        List<ImageHeaderParser> list = mVar.f5060d;
        return mVar.a(new s.a(mVar.f5059c, byteBuffer, list), r82, r92, hVar, m.f5055k);
    }
}
