package r7;

import androidx.annotation.Nullable;
import androidx.annotation.RecentlyNonNull;
import r3.r;

/* loaded from: classes2.dex */
public final class a extends Exception {

    /* renamed from: a, reason: collision with root package name */
    public final int f14333a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@RecentlyNonNull String str, int r32) {
        super(str);
        r.g("Provided message must not be empty.", str);
        this.f14333a = r32;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@RecentlyNonNull String str, @Nullable Exception exc) {
        super(str, exc);
        r.g("Provided message must not be empty.", str);
        this.f14333a = 13;
    }
}
