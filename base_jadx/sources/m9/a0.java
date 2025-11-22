package m9;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class a0 implements Iterator, y9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10148a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f10149b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f10150c;

    public a0(Iterator iterator) {
        kotlin.jvm.internal.h.f(iterator, "iterator");
        this.f10150c = iterator;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int r02 = this.f10148a;
        Object obj = this.f10150c;
        switch (r02) {
            case 0:
                return ((Iterator) obj).hasNext();
            default:
                return this.f10149b < ((Object[]) obj).length;
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int r02 = this.f10148a;
        Object obj = this.f10150c;
        switch (r02) {
            case 0:
                int r22 = this.f10149b;
                this.f10149b = r22 + 1;
                if (r22 >= 0) {
                    return new y(r22, ((Iterator) obj).next());
                }
                b8.f.k0();
                throw null;
            default:
                try {
                    int r03 = this.f10149b;
                    this.f10149b = r03 + 1;
                    return ((Object[]) obj)[r03];
                } catch (ArrayIndexOutOfBoundsException e10) {
                    this.f10149b--;
                    throw new NoSuchElementException(e10.getMessage());
                }
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f10148a) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public a0(Object[] array) {
        kotlin.jvm.internal.h.f(array, "array");
        this.f10150c = array;
    }
}
