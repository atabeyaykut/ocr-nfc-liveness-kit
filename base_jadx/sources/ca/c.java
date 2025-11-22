package ca;

import java.util.NoSuchElementException;
import m9.b0;

/* loaded from: classes2.dex */
public final class c extends b0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f2249a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2250b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2251c;

    /* renamed from: d, reason: collision with root package name */
    public int f2252d;

    public c(int r32, int r42, int r52) {
        this.f2249a = r52;
        this.f2250b = r42;
        boolean z10 = true;
        if (r52 <= 0 ? r32 < r42 : r32 > r42) {
            z10 = false;
        }
        this.f2251c = z10;
        this.f2252d = z10 ? r32 : r42;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f2251c;
    }

    @Override // m9.b0
    public final int nextInt() {
        int r02 = this.f2252d;
        if (r02 != this.f2250b) {
            this.f2252d = this.f2249a + r02;
        } else {
            if (!this.f2251c) {
                throw new NoSuchElementException();
            }
            this.f2251c = false;
        }
        return r02;
    }
}
