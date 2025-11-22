package f1;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.e;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class a implements e<ByteBuffer> {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f5498a;

    /* renamed from: f1.a$a, reason: collision with other inner class name */
    public static class C0085a implements e.a<ByteBuffer> {
        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        public final Class<ByteBuffer> a() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        public final e<ByteBuffer> b(ByteBuffer byteBuffer) {
            return new a(byteBuffer);
        }
    }

    public a(ByteBuffer byteBuffer) {
        this.f5498a = byteBuffer;
    }

    @Override // com.bumptech.glide.load.data.e
    @NonNull
    public final ByteBuffer a() throws IOException {
        ByteBuffer byteBuffer = this.f5498a;
        byteBuffer.position(0);
        return byteBuffer;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
    }
}
