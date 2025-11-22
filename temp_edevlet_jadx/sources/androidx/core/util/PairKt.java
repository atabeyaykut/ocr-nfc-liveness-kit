package androidx.core.util;

import android.annotation.SuppressLint;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.g;

@Metadata(d1 = {"\u0000\u001c\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a,\u0010\u0003\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0087\n¢\u0006\u0004\b\u0003\u0010\u0004\u001a,\u0010\u0005\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0087\n¢\u0006\u0004\b\u0005\u0010\u0004\u001a1\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0086\b\u001a1\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006H\u0086\b\u001a,\u0010\u0003\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\tH\u0087\n¢\u0006\u0004\b\u0003\u0010\n\u001a,\u0010\u0005\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\tH\u0087\n¢\u0006\u0004\b\u0005\u0010\n\u001a1\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\tH\u0086\b\u001a1\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006H\u0086\b¨\u0006\f"}, d2 = {"F", ExifInterface.LATITUDE_SOUTH, "Landroidx/core/util/Pair;", "component1", "(Landroidx/core/util/Pair;)Ljava/lang/Object;", "component2", "Ll9/g;", "toKotlinPair", "toAndroidXPair", "Landroid/util/Pair;", "(Landroid/util/Pair;)Ljava/lang/Object;", "toAndroidPair", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class PairKt {
    @SuppressLint({"UnknownNullness"})
    public static final <F, S> F component1(android.util.Pair<F, S> pair) {
        h.f(pair, "<this>");
        return (F) pair.first;
    }

    @SuppressLint({"UnknownNullness"})
    public static final <F, S> F component1(Pair<F, S> pair) {
        h.f(pair, "<this>");
        return pair.first;
    }

    @SuppressLint({"UnknownNullness"})
    public static final <F, S> S component2(android.util.Pair<F, S> pair) {
        h.f(pair, "<this>");
        return (S) pair.second;
    }

    @SuppressLint({"UnknownNullness"})
    public static final <F, S> S component2(Pair<F, S> pair) {
        h.f(pair, "<this>");
        return pair.second;
    }

    public static final <F, S> android.util.Pair<F, S> toAndroidPair(g<? extends F, ? extends S> gVar) {
        h.f(gVar, "<this>");
        return new android.util.Pair<>(gVar.f9582a, gVar.f9583b);
    }

    public static final <F, S> Pair<F, S> toAndroidXPair(g<? extends F, ? extends S> gVar) {
        h.f(gVar, "<this>");
        return new Pair<>(gVar.f9582a, gVar.f9583b);
    }

    public static final <F, S> g<F, S> toKotlinPair(android.util.Pair<F, S> pair) {
        h.f(pair, "<this>");
        return new g<>(pair.first, pair.second);
    }

    public static final <F, S> g<F, S> toKotlinPair(Pair<F, S> pair) {
        h.f(pair, "<this>");
        return new g<>(pair.first, pair.second);
    }
}
