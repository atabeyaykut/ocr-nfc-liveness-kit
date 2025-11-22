package g1;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import q1.m;
import v0.h;
import v0.j;
import x0.w;

@RequiresApi(28)
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final List<ImageHeaderParser> f5782a;

    /* renamed from: b, reason: collision with root package name */
    public final y0.b f5783b;

    /* renamed from: g1.a$a, reason: collision with other inner class name */
    public static final class C0092a implements w<Drawable> {

        /* renamed from: a, reason: collision with root package name */
        public final AnimatedImageDrawable f5784a;

        public C0092a(AnimatedImageDrawable animatedImageDrawable) {
            this.f5784a = animatedImageDrawable;
        }

        @Override // x0.w
        @NonNull
        public final Class<Drawable> a() {
            return Drawable.class;
        }

        @Override // x0.w
        @NonNull
        public final Drawable get() {
            return this.f5784a;
        }

        @Override // x0.w
        public final int getSize() {
            AnimatedImageDrawable animatedImageDrawable = this.f5784a;
            int intrinsicHeight = animatedImageDrawable.getIntrinsicHeight() * animatedImageDrawable.getIntrinsicWidth();
            Bitmap.Config config = Bitmap.Config.ARGB_8888;
            char[] cArr = m.f13318a;
            if (config == null) {
                config = Bitmap.Config.ARGB_8888;
            }
            int r12 = m.a.f13321a[config.ordinal()];
            int r32 = 1;
            if (r12 != 1) {
                if (r12 == 2 || r12 == 3) {
                    r32 = 2;
                } else {
                    r32 = 4;
                    if (r12 == 4) {
                        r32 = 8;
                    }
                }
            }
            return r32 * intrinsicHeight * 2;
        }

        @Override // x0.w
        public final void recycle() {
            AnimatedImageDrawable animatedImageDrawable = this.f5784a;
            animatedImageDrawable.stop();
            animatedImageDrawable.clearAnimationCallbacks();
        }
    }

    public static final class b implements j<ByteBuffer, Drawable> {

        /* renamed from: a, reason: collision with root package name */
        public final a f5785a;

        public b(a aVar) {
            this.f5785a = aVar;
        }

        @Override // v0.j
        public final boolean a(@NonNull ByteBuffer byteBuffer, @NonNull h hVar) throws IOException {
            return com.bumptech.glide.load.a.b(this.f5785a.f5782a, byteBuffer) == ImageHeaderParser.ImageType.ANIMATED_WEBP;
        }

        @Override // v0.j
        public final w<Drawable> b(@NonNull ByteBuffer byteBuffer, int r32, int r42, @NonNull h hVar) throws IOException {
            ImageDecoder.Source sourceCreateSource = ImageDecoder.createSource(byteBuffer);
            this.f5785a.getClass();
            return a.a(sourceCreateSource, r32, r42, hVar);
        }
    }

    public static final class c implements j<InputStream, Drawable> {

        /* renamed from: a, reason: collision with root package name */
        public final a f5786a;

        public c(a aVar) {
            this.f5786a = aVar;
        }

        @Override // v0.j
        public final boolean a(@NonNull InputStream inputStream, @NonNull h hVar) throws IOException {
            a aVar = this.f5786a;
            return com.bumptech.glide.load.a.c(aVar.f5783b, inputStream, aVar.f5782a) == ImageHeaderParser.ImageType.ANIMATED_WEBP;
        }

        @Override // v0.j
        public final w<Drawable> b(@NonNull InputStream inputStream, int r32, int r42, @NonNull h hVar) throws IOException {
            ImageDecoder.Source sourceCreateSource = ImageDecoder.createSource(q1.a.b(inputStream));
            this.f5786a.getClass();
            return a.a(sourceCreateSource, r32, r42, hVar);
        }
    }

    public a(ArrayList arrayList, y0.b bVar) {
        this.f5782a = arrayList;
        this.f5783b = bVar;
    }

    public static C0092a a(@NonNull ImageDecoder.Source source, int r22, int r32, @NonNull h hVar) throws IOException {
        Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(source, new d1.a(r22, r32, hVar));
        if (drawableDecodeDrawable instanceof AnimatedImageDrawable) {
            return new C0092a((AnimatedImageDrawable) drawableDecodeDrawable);
        }
        throw new IOException("Received unexpected drawable type for animated webp, failing: " + drawableDecodeDrawable);
    }
}
