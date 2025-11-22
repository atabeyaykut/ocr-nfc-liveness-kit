package e1;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.io.IOException;

/* loaded from: classes.dex */
public final class z implements v0.j<Bitmap, Bitmap> {

    public static final class a implements x0.w<Bitmap> {

        /* renamed from: a, reason: collision with root package name */
        public final Bitmap f5100a;

        public a(@NonNull Bitmap bitmap) {
            this.f5100a = bitmap;
        }

        @Override // x0.w
        @NonNull
        public final Class<Bitmap> a() {
            return Bitmap.class;
        }

        @Override // x0.w
        @NonNull
        public final Bitmap get() {
            return this.f5100a;
        }

        @Override // x0.w
        public final int getSize() {
            return q1.m.c(this.f5100a);
        }

        @Override // x0.w
        public final void recycle() {
        }
    }

    @Override // v0.j
    public final /* bridge */ /* synthetic */ boolean a(@NonNull Bitmap bitmap, @NonNull v0.h hVar) throws IOException {
        return true;
    }

    @Override // v0.j
    public final x0.w<Bitmap> b(@NonNull Bitmap bitmap, int r22, int r32, @NonNull v0.h hVar) throws IOException {
        return new a(bitmap);
    }
}
