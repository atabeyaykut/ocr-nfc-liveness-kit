package b1;

import android.util.Base64;
import androidx.annotation.NonNull;
import b1.o;
import com.bumptech.glide.load.data.d;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class e<Model, Data> implements o<Model, Data> {

    /* renamed from: a, reason: collision with root package name */
    public final a<Data> f1017a;

    public interface a<Data> {
    }

    public static final class b<Data> implements com.bumptech.glide.load.data.d<Data> {

        /* renamed from: a, reason: collision with root package name */
        public final String f1018a;

        /* renamed from: b, reason: collision with root package name */
        public final a<Data> f1019b;

        /* renamed from: c, reason: collision with root package name */
        public ByteArrayInputStream f1020c;

        public b(String str, a<Data> aVar) {
            this.f1018a = str;
            this.f1019b = aVar;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public final Class<Data> a() {
            this.f1019b.getClass();
            return InputStream.class;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void b() throws IOException {
            try {
                a<Data> aVar = this.f1019b;
                ByteArrayInputStream byteArrayInputStream = this.f1020c;
                ((c.a) aVar).getClass();
                byteArrayInputStream.close();
            } catch (IOException unused) {
            }
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
        public final void e(@NonNull com.bumptech.glide.j jVar, @NonNull d.a<? super Data> aVar) {
            try {
                ByteArrayInputStream byteArrayInputStreamA = ((c.a) this.f1019b).a(this.f1018a);
                this.f1020c = byteArrayInputStreamA;
                aVar.f(byteArrayInputStreamA);
            } catch (IllegalArgumentException e10) {
                aVar.c(e10);
            }
        }
    }

    public static final class c<Model> implements p<Model, InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final a f1021a = new a();

        public class a implements a<InputStream> {
            public final ByteArrayInputStream a(String str) throws IllegalArgumentException {
                if (!str.startsWith("data:image")) {
                    throw new IllegalArgumentException("Not a valid image data URL.");
                }
                int r02 = str.indexOf(44);
                if (r02 == -1) {
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                if (str.substring(0, r02).endsWith(";base64")) {
                    return new ByteArrayInputStream(Base64.decode(str.substring(r02 + 1), 0));
                }
                throw new IllegalArgumentException("Not a base64 image data URL.");
            }
        }

        @Override // b1.p
        @NonNull
        public final o<Model, InputStream> a(@NonNull s sVar) {
            return new e(this.f1021a);
        }
    }

    public e(c.a aVar) {
        this.f1017a = aVar;
    }

    @Override // b1.o
    public final boolean a(@NonNull Model model) {
        return model.toString().startsWith("data:image");
    }

    @Override // b1.o
    public final o.a<Data> b(@NonNull Model model, int r32, int r42, @NonNull v0.h hVar) {
        return new o.a<>(new p1.b(model), new b(model.toString(), this.f1017a));
    }
}
