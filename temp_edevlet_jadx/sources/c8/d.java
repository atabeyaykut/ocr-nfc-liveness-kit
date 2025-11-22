package c8;

import androidx.annotation.Nullable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.Arrays;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import r3.p;
import v7.h;

/* loaded from: classes2.dex */
public final class d implements e {

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    public final AtomicReference<Boolean> f2244a = new AtomicReference<>();

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final Executor f2245b = null;

    static {
        new d();
    }

    @Override // c8.e
    @RecentlyNonNull
    public final String a() {
        return true != d() ? "play-services-mlkit-text-recognition" : "text-recognition-latin";
    }

    @Override // c8.e
    public final void b() {
    }

    @Override // c8.e
    @RecentlyNonNull
    public final String c() {
        return true != d() ? "com.google.android.gms.vision.text.mlkit.TextRecognizerCreator" : "com.google.mlkit.vision.text.bundled.latin.BundledLatinTextRecognizerCreator";
    }

    @Override // c8.e
    public final boolean d() {
        AtomicReference<Boolean> atomicReference = this.f2244a;
        if (atomicReference.get() != null) {
            return atomicReference.get().booleanValue();
        }
        boolean z10 = DynamiteModule.a(h.c().b(), "com.google.mlkit.dynamite.text.latin") > 0;
        atomicReference.set(Boolean.valueOf(z10));
        return z10;
    }

    @Override // c8.e
    public final int e() {
        return d() ? 24317 : 24306;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof d) && p.a(this.f2245b, ((d) obj).f2245b);
    }

    @Override // c8.e
    @RecentlyNonNull
    public final String f() {
        return true != d() ? "com.google.android.gms.vision.ocr" : "com.google.mlkit.dynamite.text.latin";
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2245b, Boolean.FALSE});
    }
}
