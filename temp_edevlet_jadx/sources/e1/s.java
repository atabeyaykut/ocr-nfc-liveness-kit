package e1;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import q1.a;

/* loaded from: classes.dex */
public interface s {

    public static final class a implements s {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f5076a;

        /* renamed from: b, reason: collision with root package name */
        public final List<ImageHeaderParser> f5077b;

        /* renamed from: c, reason: collision with root package name */
        public final y0.b f5078c;

        public a(y0.b bVar, ByteBuffer byteBuffer, List list) {
            this.f5076a = byteBuffer;
            this.f5077b = list;
            this.f5078c = bVar;
        }

        @Override // e1.s
        public final int a() throws IOException {
            ByteBuffer byteBufferC = q1.a.c(this.f5076a);
            y0.b bVar = this.f5078c;
            if (byteBufferC == null) {
                return -1;
            }
            List<ImageHeaderParser> list = this.f5077b;
            int size = list.size();
            for (int r52 = 0; r52 < size; r52++) {
                try {
                    int r6 = list.get(r52).d(byteBufferC, bVar);
                    if (r6 != -1) {
                        return r6;
                    }
                } finally {
                    q1.a.c(byteBufferC);
                }
            }
            return -1;
        }

        @Override // e1.s
        @Nullable
        public final Bitmap b(BitmapFactory.Options options) {
            return BitmapFactory.decodeStream(new a.C0222a(q1.a.c(this.f5076a)), null, options);
        }

        @Override // e1.s
        public final void c() {
        }

        @Override // e1.s
        public final ImageHeaderParser.ImageType d() throws IOException {
            return com.bumptech.glide.load.a.b(this.f5077b, q1.a.c(this.f5076a));
        }
    }

    public static final class b implements s {

        /* renamed from: a, reason: collision with root package name */
        public final com.bumptech.glide.load.data.k f5079a;

        /* renamed from: b, reason: collision with root package name */
        public final y0.b f5080b;

        /* renamed from: c, reason: collision with root package name */
        public final List<ImageHeaderParser> f5081c;

        public b(y0.b bVar, q1.j jVar, List list) {
            q1.l.b(bVar);
            this.f5080b = bVar;
            q1.l.b(list);
            this.f5081c = list;
            this.f5079a = new com.bumptech.glide.load.data.k(jVar, bVar);
        }

        @Override // e1.s
        public final int a() throws IOException {
            w wVar = this.f5079a.f2764a;
            wVar.reset();
            return com.bumptech.glide.load.a.a(this.f5080b, wVar, this.f5081c);
        }

        @Override // e1.s
        @Nullable
        public final Bitmap b(BitmapFactory.Options options) throws IOException {
            w wVar = this.f5079a.f2764a;
            wVar.reset();
            return BitmapFactory.decodeStream(wVar, null, options);
        }

        @Override // e1.s
        public final void c() {
            w wVar = this.f5079a.f2764a;
            synchronized (wVar) {
                wVar.f5091c = wVar.f5089a.length;
            }
        }

        @Override // e1.s
        public final ImageHeaderParser.ImageType d() throws IOException {
            w wVar = this.f5079a.f2764a;
            wVar.reset();
            return com.bumptech.glide.load.a.c(this.f5080b, wVar, this.f5081c);
        }
    }

    @RequiresApi(21)
    public static final class c implements s {

        /* renamed from: a, reason: collision with root package name */
        public final y0.b f5082a;

        /* renamed from: b, reason: collision with root package name */
        public final List<ImageHeaderParser> f5083b;

        /* renamed from: c, reason: collision with root package name */
        public final ParcelFileDescriptorRewinder f5084c;

        public c(ParcelFileDescriptor parcelFileDescriptor, List<ImageHeaderParser> list, y0.b bVar) {
            q1.l.b(bVar);
            this.f5082a = bVar;
            q1.l.b(list);
            this.f5083b = list;
            this.f5084c = new ParcelFileDescriptorRewinder(parcelFileDescriptor);
        }

        @Override // e1.s
        public final int a() throws Throwable {
            w wVar;
            ParcelFileDescriptorRewinder parcelFileDescriptorRewinder = this.f5084c;
            y0.b bVar = this.f5082a;
            List<ImageHeaderParser> list = this.f5083b;
            int size = list.size();
            for (int r42 = 0; r42 < size; r42++) {
                ImageHeaderParser imageHeaderParser = list.get(r42);
                try {
                    wVar = new w(new FileInputStream(parcelFileDescriptorRewinder.a().getFileDescriptor()), bVar);
                    try {
                        int r6 = imageHeaderParser.b(wVar, bVar);
                        wVar.b();
                        parcelFileDescriptorRewinder.a();
                        if (r6 != -1) {
                            return r6;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (wVar != null) {
                            wVar.b();
                        }
                        parcelFileDescriptorRewinder.a();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    wVar = null;
                }
            }
            return -1;
        }

        @Override // e1.s
        @Nullable
        public final Bitmap b(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeFileDescriptor(this.f5084c.a().getFileDescriptor(), null, options);
        }

        @Override // e1.s
        public final void c() {
        }

        @Override // e1.s
        public final ImageHeaderParser.ImageType d() throws Throwable {
            w wVar;
            ParcelFileDescriptorRewinder parcelFileDescriptorRewinder = this.f5084c;
            y0.b bVar = this.f5082a;
            List<ImageHeaderParser> list = this.f5083b;
            int size = list.size();
            for (int r42 = 0; r42 < size; r42++) {
                ImageHeaderParser imageHeaderParser = list.get(r42);
                try {
                    wVar = new w(new FileInputStream(parcelFileDescriptorRewinder.a().getFileDescriptor()), bVar);
                    try {
                        ImageHeaderParser.ImageType imageTypeC = imageHeaderParser.c(wVar);
                        wVar.b();
                        parcelFileDescriptorRewinder.a();
                        if (imageTypeC != ImageHeaderParser.ImageType.UNKNOWN) {
                            return imageTypeC;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (wVar != null) {
                            wVar.b();
                        }
                        parcelFileDescriptorRewinder.a();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    wVar = null;
                }
            }
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    int a() throws IOException;

    @Nullable
    Bitmap b(BitmapFactory.Options options) throws IOException;

    void c();

    ImageHeaderParser.ImageType d() throws IOException;
}
