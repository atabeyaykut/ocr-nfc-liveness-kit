package b1;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import b1.o;
import com.bumptech.glide.load.data.d;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class f<Data> implements o<File, Data> {

    /* renamed from: a, reason: collision with root package name */
    public final d<Data> f1022a;

    public static class a<Data> implements p<File, Data> {

        /* renamed from: a, reason: collision with root package name */
        public final d<Data> f1023a;

        public a(d<Data> dVar) {
            this.f1023a = dVar;
        }

        @Override // b1.p
        @NonNull
        public final o<File, Data> a(@NonNull s sVar) {
            return new f(this.f1023a);
        }
    }

    public static class b extends a<ParcelFileDescriptor> {

        public class a implements d<ParcelFileDescriptor> {
            @Override // b1.f.d
            public final Class<ParcelFileDescriptor> a() {
                return ParcelFileDescriptor.class;
            }

            @Override // b1.f.d
            public final ParcelFileDescriptor b(File file) throws FileNotFoundException {
                return ParcelFileDescriptor.open(file, 268435456);
            }

            @Override // b1.f.d
            public final void c(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                parcelFileDescriptor.close();
            }
        }

        public b() {
            super(new a());
        }
    }

    public static final class c<Data> implements com.bumptech.glide.load.data.d<Data> {

        /* renamed from: a, reason: collision with root package name */
        public final File f1024a;

        /* renamed from: b, reason: collision with root package name */
        public final d<Data> f1025b;

        /* renamed from: c, reason: collision with root package name */
        public Data f1026c;

        public c(File file, d<Data> dVar) {
            this.f1024a = file;
            this.f1025b = dVar;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public final Class<Data> a() {
            return this.f1025b.a();
        }

        @Override // com.bumptech.glide.load.data.d
        public final void b() {
            Data data = this.f1026c;
            if (data != null) {
                try {
                    this.f1025b.c(data);
                } catch (IOException unused) {
                }
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

        /* JADX WARN: Type inference failed for: r3v3, types: [Data, java.lang.Object] */
        @Override // com.bumptech.glide.load.data.d
        public final void e(@NonNull com.bumptech.glide.j jVar, @NonNull d.a<? super Data> aVar) {
            try {
                Data dataB = this.f1025b.b(this.f1024a);
                this.f1026c = dataB;
                aVar.f(dataB);
            } catch (FileNotFoundException e10) {
                if (Log.isLoggable("FileLoader", 3)) {
                    Log.d("FileLoader", "Failed to open file", e10);
                }
                aVar.c(e10);
            }
        }
    }

    public interface d<Data> {
        Class<Data> a();

        Data b(File file) throws FileNotFoundException;

        void c(Data data) throws IOException;
    }

    public static class e extends a<InputStream> {

        public class a implements d<InputStream> {
            @Override // b1.f.d
            public final Class<InputStream> a() {
                return InputStream.class;
            }

            @Override // b1.f.d
            public final InputStream b(File file) throws FileNotFoundException {
                return new FileInputStream(file);
            }

            @Override // b1.f.d
            public final void c(InputStream inputStream) throws IOException {
                inputStream.close();
            }
        }

        public e() {
            super(new a());
        }
    }

    public f(d<Data> dVar) {
        this.f1022a = dVar;
    }

    @Override // b1.o
    public final /* bridge */ /* synthetic */ boolean a(@NonNull File file) {
        return true;
    }

    @Override // b1.o
    public final o.a b(@NonNull File file, int r32, int r42, @NonNull v0.h hVar) {
        File file2 = file;
        return new o.a(new p1.b(file2), new c(file2, this.f1022a));
    }
}
