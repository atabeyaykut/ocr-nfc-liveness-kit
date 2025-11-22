package m9;

import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class h extends c<Integer> implements RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int[] f10166a;

    public h(int[] r12) {
        this.f10166a = r12;
    }

    @Override // m9.a, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (!(obj instanceof Integer)) {
            return false;
        }
        int r6 = ((Number) obj).intValue();
        int[] r22 = this.f10166a;
        kotlin.jvm.internal.h.f(r22, "<this>");
        int length = r22.length;
        int r32 = 0;
        while (true) {
            if (r32 >= length) {
                r32 = -1;
                break;
            }
            if (r6 == r22[r32]) {
                break;
            }
            r32++;
        }
        return r32 >= 0;
    }

    @Override // m9.c, java.util.List
    public final Object get(int r22) {
        return Integer.valueOf(this.f10166a[r22]);
    }

    @Override // m9.c, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int r6 = ((Number) obj).intValue();
        int[] r22 = this.f10166a;
        kotlin.jvm.internal.h.f(r22, "<this>");
        int length = r22.length;
        for (int r32 = 0; r32 < length; r32++) {
            if (r6 == r22[r32]) {
                return r32;
            }
        }
        return -1;
    }

    @Override // m9.a, java.util.Collection
    public final boolean isEmpty() {
        return this.f10166a.length == 0;
    }

    @Override // m9.a
    public final int l() {
        return this.f10166a.length;
    }

    @Override // m9.c, java.util.List
    public final int lastIndexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int r6 = ((Number) obj).intValue();
        int[] r02 = this.f10166a;
        kotlin.jvm.internal.h.f(r02, "<this>");
        int length = r02.length - 1;
        if (length < 0) {
            return -1;
        }
        while (true) {
            int r32 = length - 1;
            if (r6 == r02[length]) {
                return length;
            }
            if (r32 < 0) {
                return -1;
            }
            length = r32;
        }
    }
}
