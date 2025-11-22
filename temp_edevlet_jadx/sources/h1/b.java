package h1;

import java.io.File;
import q1.l;
import x0.w;

/* loaded from: classes.dex */
public final class b implements w<File> {

    /* renamed from: a, reason: collision with root package name */
    public final File f6786a;

    public b(File file) {
        l.b(file);
        this.f6786a = file;
    }

    @Override // x0.w
    public final Class<File> a() {
        return this.f6786a.getClass();
    }

    @Override // x0.w
    public final File get() {
        return this.f6786a;
    }

    @Override // x0.w
    public final /* bridge */ /* synthetic */ int getSize() {
        return 1;
    }

    @Override // x0.w
    public final /* bridge */ /* synthetic */ void recycle() {
    }
}
