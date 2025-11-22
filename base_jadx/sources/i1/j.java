package i1;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import x0.w;

/* loaded from: classes.dex */
public final class j implements v0.j<InputStream, c> {

    /* renamed from: a, reason: collision with root package name */
    public final List<ImageHeaderParser> f7278a;

    /* renamed from: b, reason: collision with root package name */
    public final v0.j<ByteBuffer, c> f7279b;

    /* renamed from: c, reason: collision with root package name */
    public final y0.b f7280c;

    public j(ArrayList arrayList, a aVar, y0.b bVar) {
        this.f7278a = arrayList;
        this.f7279b = aVar;
        this.f7280c = bVar;
    }

    @Override // v0.j
    public final boolean a(@NonNull InputStream inputStream, @NonNull v0.h hVar) throws IOException {
        InputStream inputStream2 = inputStream;
        if (!((Boolean) hVar.c(i.f7277b)).booleanValue()) {
            if (com.bumptech.glide.load.a.c(this.f7280c, inputStream2, this.f7278a) == ImageHeaderParser.ImageType.GIF) {
                return true;
            }
        }
        return false;
    }

    @Override // v0.j
    public final w<c> b(@NonNull InputStream inputStream, int r72, int r82, @NonNull v0.h hVar) throws IOException {
        byte[] byteArray;
        InputStream inputStream2 = inputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int r32 = inputStream2.read(bArr);
                if (r32 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, r32);
            }
            byteArrayOutputStream.flush();
            byteArray = byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            if (Log.isLoggable("StreamGifDecoder", 5)) {
                Log.w("StreamGifDecoder", "Error reading data from stream", e10);
            }
            byteArray = null;
        }
        if (byteArray == null) {
            return null;
        }
        return this.f7279b.b(ByteBuffer.wrap(byteArray), r72, r82, hVar);
    }
}
