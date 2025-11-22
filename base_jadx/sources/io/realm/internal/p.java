package io.realm.internal;

import io.realm.RealmFieldType;
import io.realm.internal.core.NativeRealmAny;
import java.util.Date;
import java.util.UUID;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;

/* loaded from: classes2.dex */
public interface p {
    void A(long j10, long j11);

    Date B(long j10);

    boolean C(long j10);

    void E(long j10);

    boolean F();

    long G(String str);

    OsMap H(long j10);

    OsSet J(long j10, RealmFieldType realmFieldType);

    NativeRealmAny K(long j10);

    boolean L(long j10);

    void M(long j10);

    byte[] N(long j10);

    double O(long j10);

    long P(long j10);

    float Q(long j10);

    String R(long j10);

    OsList S(long j10, RealmFieldType realmFieldType);

    OsMap T(long j10, RealmFieldType realmFieldType);

    RealmFieldType V(long j10);

    void W(long j10, double d10);

    p X(OsSharedRealm osSharedRealm);

    long Y();

    String[] getColumnNames();

    boolean isValid();

    Decimal128 n(long j10);

    void o(long j10, String str);

    Table q();

    long r(long j10, RealmFieldType realmFieldType);

    void t(long j10, boolean z10);

    OsSet u(long j10);

    ObjectId v(long j10);

    UUID w(long j10);

    boolean x(long j10);

    long y(long j10);

    OsList z(long j10);
}
