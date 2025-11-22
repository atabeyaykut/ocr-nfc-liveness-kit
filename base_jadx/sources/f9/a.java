package f9;

import java.io.File;
import java.io.FileFilter;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class a implements FileFilter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Pattern f5549a;

    public a(Pattern pattern) {
        this.f5549a = pattern;
    }

    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        return this.f5549a.matcher(file.getName()).matches();
    }
}
