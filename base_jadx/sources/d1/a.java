package d1;

import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import e1.l;
import e1.m;
import e1.r;
import v0.g;
import v0.h;
import v0.i;

@RequiresApi(api = 28)
/* loaded from: classes.dex */
public final class a implements ImageDecoder.OnHeaderDecodedListener {

    /* renamed from: a, reason: collision with root package name */
    public final r f4640a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4641b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4642c;

    /* renamed from: d, reason: collision with root package name */
    public final v0.b f4643d;

    /* renamed from: e, reason: collision with root package name */
    public final l f4644e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final i f4645g;

    /* renamed from: d1.a$a, reason: collision with other inner class name */
    public class C0068a implements ImageDecoder.OnPartialImageListener {
        @Override // android.graphics.ImageDecoder.OnPartialImageListener
        public final boolean onPartialImage(@NonNull ImageDecoder.DecodeException decodeException) {
            return false;
        }
    }

    public a(int r32, int r42, @NonNull h hVar) {
        if (r.f5069j == null) {
            synchronized (r.class) {
                if (r.f5069j == null) {
                    r.f5069j = new r();
                }
            }
        }
        this.f4640a = r.f5069j;
        this.f4641b = r32;
        this.f4642c = r42;
        this.f4643d = (v0.b) hVar.c(m.f);
        this.f4644e = (l) hVar.c(l.f);
        g<Boolean> gVar = m.f5053i;
        this.f = hVar.c(gVar) != null && ((Boolean) hVar.c(gVar)).booleanValue();
        this.f4645g = (i) hVar.c(m.f5051g);
    }

    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
    public final void onHeaderDecoded(@NonNull ImageDecoder imageDecoder, @NonNull ImageDecoder.ImageInfo imageInfo, @NonNull ImageDecoder.Source source) {
        boolean z10 = false;
        if (this.f4640a.a(this.f4641b, this.f4642c, this.f, false)) {
            imageDecoder.setAllocator(3);
        } else {
            imageDecoder.setAllocator(1);
        }
        if (this.f4643d == v0.b.PREFER_RGB_565) {
            imageDecoder.setMemorySizePolicy(0);
        }
        imageDecoder.setOnPartialImageListener(new C0068a());
        Size size = imageInfo.getSize();
        int width = this.f4641b;
        if (width == Integer.MIN_VALUE) {
            width = size.getWidth();
        }
        int height = this.f4642c;
        if (height == Integer.MIN_VALUE) {
            height = size.getHeight();
        }
        float fB = this.f4644e.b(size.getWidth(), size.getHeight(), width, height);
        int r12 = Math.round(size.getWidth() * fB);
        int r22 = Math.round(size.getHeight() * fB);
        if (Log.isLoggable("ImageDecoder", 2)) {
            Log.v("ImageDecoder", "Resizing from [" + size.getWidth() + "x" + size.getHeight() + "] to [" + r12 + "x" + r22 + "] scaleFactor: " + fB);
        }
        imageDecoder.setTargetSize(r12, r22);
        i iVar = this.f4645g;
        if (iVar != null) {
            int r02 = Build.VERSION.SDK_INT;
            if (r02 < 28) {
                if (r02 >= 26) {
                    imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
                }
            } else {
                if (iVar == i.DISPLAY_P3 && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) {
                    z10 = true;
                }
                imageDecoder.setTargetColorSpace(ColorSpace.get(z10 ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
            }
        }
    }
}
