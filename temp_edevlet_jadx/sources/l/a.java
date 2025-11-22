package l;

import java.io.File;
import p.k;

/* loaded from: classes.dex */
public final class a implements b<File> {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f9266a;

    public a(boolean z10) {
        this.f9266a = z10;
    }

    @Override // l.b
    public final String a(File file, k kVar) {
        File file2 = file;
        if (!this.f9266a) {
            return file2.getPath();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) file2.getPath());
        sb2.append(':');
        sb2.append(file2.lastModified());
        return sb2.toString();
    }
}
