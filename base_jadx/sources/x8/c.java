package x8;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.File;
import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public final class c implements b {

    /* renamed from: a, reason: collision with root package name */
    public int f19186a;

    /* renamed from: c, reason: collision with root package name */
    public final int f19188c;

    /* renamed from: d, reason: collision with root package name */
    public final int f19189d;

    /* renamed from: b, reason: collision with root package name */
    public final long f19187b = 3145728;

    /* renamed from: e, reason: collision with root package name */
    public final int f19190e = 10;

    public c(int r32, int r42) {
        this.f19188c = r32;
        this.f19189d = r42;
    }

    @Override // x8.b
    public final File a(File imageFile) {
        h.g(imageFile, "imageFile");
        int r02 = this.f19186a + 1;
        this.f19186a = r02;
        Integer numValueOf = Integer.valueOf(100 - (r02 * this.f19188c));
        int r22 = numValueOf.intValue();
        int r32 = this.f19190e;
        if (!(r22 >= r32)) {
            numValueOf = null;
        }
        if (numValueOf != null) {
            r32 = numValueOf.intValue();
        }
        String str = w8.c.f18823a;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(imageFile.getAbsolutePath());
        h.b(bitmapDecodeFile, "this");
        return w8.c.c(r32, w8.c.a(imageFile), w8.c.b(imageFile, bitmapDecodeFile), imageFile);
    }

    @Override // x8.b
    public final boolean b(File imageFile) {
        h.g(imageFile, "imageFile");
        return imageFile.length() <= this.f19187b || this.f19186a >= this.f19189d;
    }
}
