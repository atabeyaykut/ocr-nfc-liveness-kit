package androidx.core.util;

import android.annotation.SuppressLint;
import androidx.core.content.g;
import androidx.core.content.h;
import androidx.core.content.n;
import java.util.Objects;

/* loaded from: classes.dex */
public final /* synthetic */ class c<T> {
    @SuppressLint({"MissingNullability"})
    public static Predicate a(Predicate predicate, @SuppressLint({"MissingNullability"}) Predicate predicate2) {
        Objects.requireNonNull(predicate2);
        return new g(predicate, predicate2);
    }

    @SuppressLint({"MissingNullability"})
    public static Predicate b(Predicate predicate) {
        return new h(2, predicate);
    }

    @SuppressLint({"MissingNullability"})
    public static Predicate c(final Predicate predicate, @SuppressLint({"MissingNullability"}) final Predicate predicate2) {
        Objects.requireNonNull(predicate2);
        return new Predicate() { // from class: androidx.core.util.a
            @Override // androidx.core.util.Predicate
            public final /* synthetic */ Predicate and(Predicate predicate3) {
                return c.a(this, predicate3);
            }

            @Override // androidx.core.util.Predicate
            public final /* synthetic */ Predicate negate() {
                return c.b(this);
            }

            @Override // androidx.core.util.Predicate
            public final /* synthetic */ Predicate or(Predicate predicate3) {
                return c.c(this, predicate3);
            }

            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return c.f(predicate, predicate2, obj);
            }
        };
    }

    public static /* synthetic */ boolean d(Predicate predicate, Predicate predicate2, Object obj) {
        return predicate.test(obj) && predicate2.test(obj);
    }

    public static /* synthetic */ boolean e(Predicate predicate, Object obj) {
        return !predicate.test(obj);
    }

    public static /* synthetic */ boolean f(Predicate predicate, Predicate predicate2, Object obj) {
        return predicate.test(obj) || predicate2.test(obj);
    }

    @SuppressLint({"MissingNullability"})
    public static <T> Predicate<T> g(@SuppressLint({"MissingNullability"}) final Object obj) {
        return obj == null ? new n(2) : new Predicate() { // from class: androidx.core.util.b
            @Override // androidx.core.util.Predicate
            public final /* synthetic */ Predicate and(Predicate predicate) {
                return c.a(this, predicate);
            }

            @Override // androidx.core.util.Predicate
            public final /* synthetic */ Predicate negate() {
                return c.b(this);
            }

            @Override // androidx.core.util.Predicate
            public final /* synthetic */ Predicate or(Predicate predicate) {
                return c.c(this, predicate);
            }

            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj2) {
                return obj.equals(obj2);
            }
        };
    }

    public static /* synthetic */ boolean h(Object obj) {
        return obj == null;
    }

    @SuppressLint({"MissingNullability"})
    public static <T> Predicate<T> j(@SuppressLint({"MissingNullability"}) Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return predicate.negate();
    }
}
