package io.realm.internal;

import io.realm.internal.ObservableCollection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public class OsResults implements i, ObservableCollection {

    /* renamed from: g, reason: collision with root package name */
    public static final long f7611g = nativeGetFinalizerPtr();

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f7612h = 0;

    /* renamed from: a, reason: collision with root package name */
    public final long f7613a;

    /* renamed from: b, reason: collision with root package name */
    public final OsSharedRealm f7614b;

    /* renamed from: c, reason: collision with root package name */
    public final Table f7615c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f7616d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f7617e = false;
    public final k<ObservableCollection.b> f = new k<>();

    public static abstract class a<T> implements Iterator<T> {

        /* renamed from: a, reason: collision with root package name */
        public OsResults f7618a;

        /* renamed from: b, reason: collision with root package name */
        public int f7619b = -1;

        public a(OsResults osResults) {
            if (osResults.f7614b.isClosed()) {
                throw new IllegalStateException("This Realm instance has already been closed, making it unusable.");
            }
            this.f7618a = osResults;
            if (osResults.f7617e) {
                return;
            }
            if (osResults.f7614b.isInTransaction()) {
                this.f7618a = this.f7618a.a();
            } else {
                this.f7618a.f7614b.addIterator(this);
            }
        }

        public final void a() {
            if (this.f7618a == null) {
                throw new ConcurrentModificationException("No outside changes to a Realm is allowed while iterating a living Realm collection.");
            }
        }

        public abstract T b(int r12, OsResults osResults);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            a();
            return ((long) (this.f7619b + 1)) < this.f7618a.f();
        }

        @Override // java.util.Iterator
        public final T next() {
            a();
            int r02 = this.f7619b + 1;
            this.f7619b = r02;
            if (r02 < this.f7618a.f()) {
                return b(this.f7619b, this.f7618a);
            }
            throw new NoSuchElementException("Cannot access index " + this.f7619b + " when size is " + this.f7618a.f() + ". Remember to check hasNext() before using next().");
        }

        @Override // java.util.Iterator
        @Deprecated
        public final void remove() {
            throw new UnsupportedOperationException("remove() is not supported by RealmResults iterators.");
        }
    }

    public static abstract class b<T> extends a<T> implements ListIterator<T> {
        public b(int r6, OsResults osResults) {
            super(osResults);
            if (r6 >= 0 && r6 <= this.f7618a.f()) {
                this.f7619b = r6 - 1;
                return;
            }
            throw new IndexOutOfBoundsException("Starting location must be a valid index: [0, " + (this.f7618a.f() - 1) + "]. Yours was " + r6);
        }

        @Override // java.util.ListIterator
        @Deprecated
        public final void add(T t10) {
            throw new UnsupportedOperationException("Adding an element is not supported. Use Realm.createObject() instead.");
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            a();
            return this.f7619b >= 0;
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            a();
            return this.f7619b + 1;
        }

        @Override // java.util.ListIterator
        public final T previous() {
            a();
            try {
                this.f7619b--;
                return b(this.f7619b, this.f7618a);
            } catch (IndexOutOfBoundsException unused) {
                throw new NoSuchElementException(androidx.browser.browseractions.a.b(new StringBuilder("Cannot access index less than zero. This was "), this.f7619b, ". Remember to check hasPrevious() before using previous()."));
            }
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            a();
            return this.f7619b;
        }

        @Override // java.util.ListIterator
        @Deprecated
        public final void set(T t10) {
            throw new UnsupportedOperationException("Replacing an element is not supported.");
        }
    }

    public OsResults(OsSharedRealm osSharedRealm, Table table, long j10) {
        char c10;
        this.f7614b = osSharedRealm;
        h hVar = osSharedRealm.context;
        this.f7615c = table;
        this.f7613a = j10;
        hVar.a(this);
        byte bNativeGetMode = nativeGetMode(j10);
        if (bNativeGetMode != 0) {
            c10 = 2;
            if (bNativeGetMode != 1) {
                if (bNativeGetMode == 2) {
                    c10 = 3;
                } else if (bNativeGetMode == 3) {
                    c10 = 4;
                } else {
                    if (bNativeGetMode != 4) {
                        throw new IllegalArgumentException(android.support.v4.media.a.d("Invalid value: ", bNativeGetMode));
                    }
                    c10 = 5;
                }
            }
        } else {
            c10 = 1;
        }
        this.f7616d = c10 != 4;
    }

    public static native long nativeCreateResults(long j10, long j11);

    private static native long nativeCreateSnapshot(long j10);

    private static native void nativeEvaluateQueryIfNeeded(long j10, boolean z10);

    private static native long nativeFreeze(long j10, long j11);

    private static native long nativeGetFinalizerPtr();

    private static native byte nativeGetMode(long j10);

    private static native long nativeGetRow(long j10, int r22);

    private static native boolean nativeIsValid(long j10);

    private static native long nativeSize(long j10);

    public final OsResults a() {
        if (this.f7617e) {
            return this;
        }
        OsResults osResults = new OsResults(this.f7614b, this.f7615c, nativeCreateSnapshot(this.f7613a));
        osResults.f7617e = true;
        return osResults;
    }

    public final OsResults b(OsSharedRealm osSharedRealm) {
        OsResults osResults = new OsResults(osSharedRealm, this.f7615c.e(osSharedRealm), nativeFreeze(this.f7613a, osSharedRealm.getNativePtr()));
        if (this.f7616d) {
            osResults.e();
        }
        return osResults;
    }

    public final UncheckedRow c(int r52) {
        long jNativeGetRow = nativeGetRow(this.f7613a, r52);
        Table table = this.f7615c;
        table.getClass();
        return new UncheckedRow(table.f7634b, table, jNativeGetRow);
    }

    public final boolean d() {
        return nativeIsValid(this.f7613a);
    }

    public final void e() {
        if (this.f7616d) {
            return;
        }
        try {
            nativeEvaluateQueryIfNeeded(this.f7613a, false);
        } catch (IllegalArgumentException e10) {
            if (e10.getMessage().contains("Cannot sort on a collection property")) {
                throw new IllegalStateException("Illegal Argument: " + e10.getMessage());
            }
        } catch (IllegalStateException e11) {
            throw new IllegalArgumentException("Illegal Argument: " + e11.getMessage());
        }
        notifyChangeListeners(0L);
    }

    public final long f() {
        return nativeSize(this.f7613a);
    }

    @Override // io.realm.internal.i
    public final long getNativeFinalizerPtr() {
        return f7611g;
    }

    @Override // io.realm.internal.i
    public final long getNativePtr() {
        return this.f7613a;
    }

    @Override // io.realm.internal.ObservableCollection
    public final void notifyChangeListeners(long j10) {
        OsCollectionChangeSet dVar = j10 == 0 ? new d() : new OsCollectionChangeSet(j10, !this.f7616d);
        if (dVar.e() && this.f7616d) {
            return;
        }
        this.f7616d = true;
        this.f.b(new ObservableCollection.a(dVar));
    }
}
