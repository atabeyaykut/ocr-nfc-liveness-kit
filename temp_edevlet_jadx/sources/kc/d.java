package kc;

import b8.f;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.z;
import m9.a0;
import m9.k;

/* loaded from: classes2.dex */
public final class d<T> extends AbstractSet<T> {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f8838c = 0;

    /* renamed from: a, reason: collision with root package name */
    public Object f8839a;

    /* renamed from: b, reason: collision with root package name */
    public int f8840b;

    public static final class a<T> implements Iterator<T>, y9.a {

        /* renamed from: a, reason: collision with root package name */
        public final a0 f8841a;

        public a(T[] tArr) {
            this.f8841a = f.R(tArr);
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f8841a.hasNext();
        }

        @Override // java.util.Iterator
        public final T next() {
            return (T) this.f8841a.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public static final class b<T> implements Iterator<T>, y9.a {

        /* renamed from: a, reason: collision with root package name */
        public final T f8842a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f8843b = true;

        public b(T t10) {
            this.f8842a = t10;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f8843b;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (!this.f8843b) {
                throw new NoSuchElementException();
            }
            this.f8843b = false;
            return this.f8842a;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.util.AbstractCollection, java.util.Collection, java.util.LinkedHashSet] */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(T t10) {
        Object[] objArr;
        int r02 = this.f8840b;
        if (r02 == 0) {
            this.f8839a = t10;
        } else {
            if (r02 == 1) {
                if (h.a(this.f8839a, t10)) {
                    return false;
                }
                this.f8839a = new Object[]{this.f8839a, t10};
            } else if (r02 < 5) {
                Object obj = this.f8839a;
                h.d(obj, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
                Object[] objArr2 = (Object[]) obj;
                if (k.o0(objArr2, t10)) {
                    return false;
                }
                int r32 = this.f8840b;
                if (r32 == 4) {
                    Object[] elements = Arrays.copyOf(objArr2, objArr2.length);
                    h.f(elements, "elements");
                    ?? linkedHashSet = new LinkedHashSet(f.V(elements.length));
                    for (Object obj2 : elements) {
                        linkedHashSet.add(obj2);
                    }
                    linkedHashSet.add(t10);
                    objArr = linkedHashSet;
                } else {
                    Object[] objArrCopyOf = Arrays.copyOf(objArr2, r32 + 1);
                    h.e(objArrCopyOf, "copyOf(this, newSize)");
                    objArrCopyOf[objArrCopyOf.length - 1] = t10;
                    objArr = objArrCopyOf;
                }
                this.f8839a = objArr;
            } else {
                Object obj3 = this.f8839a;
                h.d(obj3, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>");
                if (!z.b(obj3).add(t10)) {
                    return false;
                }
            }
        }
        this.f8840b++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f8839a = null;
        this.f8840b = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int r02 = this.f8840b;
        if (r02 == 0) {
            return false;
        }
        if (r02 == 1) {
            return h.a(this.f8839a, obj);
        }
        if (r02 < 5) {
            Object obj2 = this.f8839a;
            h.d(obj2, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
            return k.o0((Object[]) obj2, obj);
        }
        Object obj3 = this.f8839a;
        h.d(obj3, "null cannot be cast to non-null type kotlin.collections.Set<T of org.jetbrains.kotlin.utils.SmartSet>");
        return ((Set) obj3).contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<T> iterator() {
        Set setB;
        int r02 = this.f8840b;
        if (r02 == 0) {
            setB = Collections.emptySet();
        } else {
            if (r02 == 1) {
                return new b(this.f8839a);
            }
            if (r02 < 5) {
                Object obj = this.f8839a;
                h.d(obj, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
                return new a((Object[]) obj);
            }
            Object obj2 = this.f8839a;
            h.d(obj2, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>");
            setB = z.b(obj2);
        }
        return setB.iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f8840b;
    }
}
