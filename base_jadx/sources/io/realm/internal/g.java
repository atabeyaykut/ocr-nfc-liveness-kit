package io.realm.internal;

import io.realm.RealmFieldType;
import io.realm.internal.core.NativeRealmAny;
import java.util.Date;
import java.util.UUID;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class g implements p {

    /* renamed from: a, reason: collision with root package name */
    public static final g f7661a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ g[] f7662b;

    static {
        g gVar = new g();
        f7661a = gVar;
        f7662b = new g[]{gVar};
    }

    public static IllegalStateException Z() {
        return new IllegalStateException("Object is no longer managed by Realm. Has it been deleted?");
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f7662b.clone();
    }

    @Override // io.realm.internal.p
    public final void A(long j10, long j11) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final Date B(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final boolean C(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final void E(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final boolean F() {
        return true;
    }

    @Override // io.realm.internal.p
    public final long G(String str) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final OsMap H(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final OsSet J(long j10, RealmFieldType realmFieldType) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final NativeRealmAny K(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final boolean L(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final void M(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final byte[] N(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final double O(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final long P(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final float Q(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final String R(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final OsList S(long j10, RealmFieldType realmFieldType) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final OsMap T(long j10, RealmFieldType realmFieldType) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final RealmFieldType V(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final void W(long j10, double d10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final p X(OsSharedRealm osSharedRealm) {
        return f7661a;
    }

    @Override // io.realm.internal.p
    public final long Y() {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final String[] getColumnNames() {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final boolean isValid() {
        return false;
    }

    @Override // io.realm.internal.p
    public final Decimal128 n(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final void o(long j10, String str) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final Table q() {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final long r(long j10, RealmFieldType realmFieldType) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final void t(long j10, boolean z10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final OsSet u(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final ObjectId v(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final UUID w(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final boolean x(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final long y(long j10) {
        throw Z();
    }

    @Override // io.realm.internal.p
    public final OsList z(long j10) {
        throw Z();
    }
}
