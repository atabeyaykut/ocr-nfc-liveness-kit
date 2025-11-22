package b1;

import android.util.Log;
import androidx.annotation.NonNull;
import b1.o;
import com.bumptech.glide.load.data.d;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class d implements o<File, ByteBuffer> {

    public static final class a implements com.bumptech.glide.load.data.d<ByteBuffer> {

        /* renamed from: a, reason: collision with root package name */
        public final File f1016a;

        public a(File file) {
            this.f1016a = file;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public final Class<ByteBuffer> a() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public final v0.a d() {
            return v0.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void e(@NonNull com.bumptech.glide.j jVar, @NonNull d.a<? super ByteBuffer> aVar) {
            try {
                aVar.f(q1.a.a(this.f1016a));
            } catch (IOException e10) {
                if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                    Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e10);
                }
                aVar.c(e10);
            }
        }
    }

    public static class b implements p<File, ByteBuffer> {
        @Override // b1.p
        @NonNull
        public final o<File, ByteBuffer> a(@NonNull s sVar) {
            return new d();
        }
    }

    @Override // b1.o
    public final /* bridge */ /* synthetic */ boolean a(@NonNull File file) {
        return true;
    }

    @Override // b1.o
    public final o.a<ByteBuffer> b(@NonNull File file, int r22, int r32, @NonNull v0.h hVar) {
        File file2 = file;
        return new o.a<>(new p1.b(file2), new a(file2));
    }
}
