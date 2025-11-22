package io.realm;

import io.realm.internal.OsList;
import io.realm.internal.OsMap;
import io.realm.internal.OsSet;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.Table;
import io.realm.internal.core.NativeRealmAny;
import java.util.Date;
import java.util.UUID;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class s implements io.realm.internal.p {

    /* renamed from: a, reason: collision with root package name */
    public static final s f7829a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ s[] f7830b;

    static {
        s sVar = new s();
        f7829a = sVar;
        f7830b = new s[]{sVar};
    }

    public static s valueOf(String str) {
        return (s) Enum.valueOf(s.class, str);
    }

    public static s[] values() {
        return (s[]) f7830b.clone();
    }

    @Override // io.realm.internal.p
    public final void A(long j10, long j11) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final Date B(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final boolean C(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final void E(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final boolean F() {
        return false;
    }

    @Override // io.realm.internal.p
    public final long G(String str) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final OsMap H(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final OsSet J(long j10, RealmFieldType realmFieldType) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final NativeRealmAny K(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final boolean L(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final void M(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final byte[] N(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final double O(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final long P(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final float Q(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final String R(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final OsList S(long j10, RealmFieldType realmFieldType) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final OsMap T(long j10, RealmFieldType realmFieldType) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final RealmFieldType V(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final void W(long j10, double d10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final io.realm.internal.p X(OsSharedRealm osSharedRealm) {
        return io.realm.internal.g.f7661a;
    }

    @Override // io.realm.internal.p
    public final long Y() {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final String[] getColumnNames() {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final boolean isValid() {
        return false;
    }

    @Override // io.realm.internal.p
    public final Decimal128 n(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final void o(long j10, String str) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final Table q() {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final long r(long j10, RealmFieldType realmFieldType) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final void t(long j10, boolean z10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final OsSet u(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final ObjectId v(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final UUID w(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final boolean x(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final long y(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }

    @Override // io.realm.internal.p
    public final OsList z(long j10) {
        throw new IllegalStateException("This object was frozen while a query for it was still running.");
    }
}
