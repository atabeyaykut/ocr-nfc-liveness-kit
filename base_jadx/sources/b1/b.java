package b1;

import androidx.annotation.NonNull;
import b1.o;
import com.bumptech.glide.load.data.d;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class b<Data> implements o<byte[], Data> {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0042b<Data> f1013a;

    public static class a implements p<byte[], ByteBuffer> {

        /* renamed from: b1.b$a$a, reason: collision with other inner class name */
        public class C0041a implements InterfaceC0042b<ByteBuffer> {
            @Override // b1.b.InterfaceC0042b
            public final Class<ByteBuffer> a() {
                return ByteBuffer.class;
            }

            @Override // b1.b.InterfaceC0042b
            public final ByteBuffer b(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }
        }

        @Override // b1.p
        @NonNull
        public final o<byte[], ByteBuffer> a(@NonNull s sVar) {
            return new b(new C0041a());
        }
    }

    /* renamed from: b1.b$b, reason: collision with other inner class name */
    public interface InterfaceC0042b<Data> {
        Class<Data> a();

        Data b(byte[] bArr);
    }

    public static class c<Data> implements com.bumptech.glide.load.data.d<Data> {

        /* renamed from: a, reason: collision with root package name */
        public final byte[] f1014a;

        /* renamed from: b, reason: collision with root package name */
        public final InterfaceC0042b<Data> f1015b;

        public c(byte[] bArr, InterfaceC0042b<Data> interfaceC0042b) {
            this.f1014a = bArr;
            this.f1015b = interfaceC0042b;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public final Class<Data> a() {
            return this.f1015b.a();
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
        public final void e(@NonNull com.bumptech.glide.j jVar, @NonNull d.a<? super Data> aVar) {
            aVar.f(this.f1015b.b(this.f1014a));
        }
    }

    public static class d implements p<byte[], InputStream> {

        public class a implements InterfaceC0042b<InputStream> {
            @Override // b1.b.InterfaceC0042b
            public final Class<InputStream> a() {
                return InputStream.class;
            }

            @Override // b1.b.InterfaceC0042b
            public final InputStream b(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }
        }

        @Override // b1.p
        @NonNull
        public final o<byte[], InputStream> a(@NonNull s sVar) {
            return new b(new a());
        }
    }

    public b(InterfaceC0042b<Data> interfaceC0042b) {
        this.f1013a = interfaceC0042b;
    }

    @Override // b1.o
    public final /* bridge */ /* synthetic */ boolean a(@NonNull byte[] bArr) {
        return true;
    }

    @Override // b1.o
    public final o.a b(@NonNull byte[] bArr, int r32, int r42, @NonNull v0.h hVar) {
        byte[] bArr2 = bArr;
        return new o.a(new p1.b(bArr2), new c(bArr2, this.f1013a));
    }
}
