.class public Lio/realm/internal/OsList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/i;
.implements Lio/realm/internal/ObservableCollection;


# static fields
.field public static final d:J


# instance fields
.field public final a:J

.field public final b:Lio/realm/internal/Table;

.field public final c:Lio/realm/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/k<",
            "Lio/realm/internal/ObservableCollection$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/realm/internal/OsList;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsList;->d:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/UncheckedRow;J)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/realm/internal/k;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/realm/internal/k;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/realm/internal/OsList;->c:Lio/realm/internal/k;

    .line 10
    .line 11
    iget-object v0, p1, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    .line 12
    .line 13
    iget-object v0, v0, Lio/realm/internal/Table;->c:Lio/realm/internal/OsSharedRealm;

    .line 14
    .line 15
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iget-wide v3, p1, Lio/realm/internal/UncheckedRow;->c:J

    .line 20
    .line 21
    move-wide v5, p2

    .line 22
    invoke-static/range {v1 .. v6}, Lio/realm/internal/OsList;->nativeCreate(JJJ)[J

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x0

    .line 27
    aget-wide p2, p1, p2

    .line 28
    .line 29
    iput-wide p2, p0, Lio/realm/internal/OsList;->a:J

    .line 30
    .line 31
    iget-object p2, v0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/h;

    .line 32
    .line 33
    invoke-virtual {p2, p0}, Lio/realm/internal/h;->a(Lio/realm/internal/i;)V

    .line 34
    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    aget-wide v1, p1, p2

    .line 38
    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    cmp-long p3, v1, v3

    .line 42
    .line 43
    if-eqz p3, :cond_0

    .line 44
    .line 45
    new-instance p3, Lio/realm/internal/Table;

    .line 46
    .line 47
    aget-wide v1, p1, p2

    .line 48
    .line 49
    invoke-direct {p3, v1, v2, v0}, Lio/realm/internal/Table;-><init>(JLio/realm/internal/OsSharedRealm;)V

    .line 50
    .line 51
    .line 52
    iput-object p3, p0, Lio/realm/internal/OsList;->b:Lio/realm/internal/Table;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lio/realm/internal/OsList;->b:Lio/realm/internal/Table;

    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method private static native nativeAddBinary(J[B)V
.end method

.method private static native nativeAddBoolean(JZ)V
.end method

.method private static native nativeAddDate(JJ)V
.end method

.method private static native nativeAddDecimal128(JJJ)V
.end method

.method private static native nativeAddDouble(JD)V
.end method

.method private static native nativeAddFloat(JF)V
.end method

.method private static native nativeAddLong(JJ)V
.end method

.method private static native nativeAddNull(J)V
.end method

.method private static native nativeAddObjectId(JLjava/lang/String;)V
.end method

.method private static native nativeAddRealmAny(JJ)V
.end method

.method private static native nativeAddRow(JJ)V
.end method

.method private static native nativeAddString(JLjava/lang/String;)V
.end method

.method private static native nativeAddUUID(JLjava/lang/String;)V
.end method

.method private static native nativeCreate(JJJ)[J
.end method

.method private static native nativeCreateAndAddEmbeddedObject(JJ)J
.end method

.method private static native nativeCreateAndSetEmbeddedObject(JJ)J
.end method

.method private static native nativeDeleteAll(J)V
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetRow(JJ)J
.end method

.method private static native nativeGetValue(JJ)Ljava/lang/Object;
.end method

.method private static native nativeInsertBinary(JJ[B)V
.end method

.method private static native nativeInsertBoolean(JJZ)V
.end method

.method private static native nativeInsertDate(JJJ)V
.end method

.method private static native nativeInsertDecimal128(JJJJ)V
.end method

.method private static native nativeInsertDouble(JJD)V
.end method

.method private static native nativeInsertFloat(JJF)V
.end method

.method private static native nativeInsertLong(JJJ)V
.end method

.method private static native nativeInsertNull(JJ)V
.end method

.method private static native nativeInsertObjectId(JJLjava/lang/String;)V
.end method

.method private static native nativeInsertRealmAny(JJJ)V
.end method

.method private static native nativeInsertRow(JJJ)V
.end method

.method private static native nativeInsertString(JJLjava/lang/String;)V
.end method

.method private static native nativeInsertUUID(JJLjava/lang/String;)V
.end method

.method private static native nativeIsValid(J)Z
.end method

.method private static native nativeRemove(JJ)V
.end method

.method private static native nativeRemoveAll(J)V
.end method

.method private static native nativeSetBinary(JJ[B)V
.end method

.method private static native nativeSetBoolean(JJZ)V
.end method

.method private static native nativeSetDate(JJJ)V
.end method

.method private static native nativeSetDecimal128(JJJJ)V
.end method

.method private static native nativeSetDouble(JJD)V
.end method

.method private static native nativeSetFloat(JJF)V
.end method

.method private static native nativeSetLong(JJJ)V
.end method

.method private static native nativeSetNull(JJ)V
.end method

.method private static native nativeSetObjectId(JJLjava/lang/String;)V
.end method

.method private static native nativeSetRealmAny(JJJ)V
.end method

.method private static native nativeSetRow(JJJ)V
.end method

.method private static native nativeSetString(JJLjava/lang/String;)V
.end method

.method private static native nativeSetUUID(JJLjava/lang/String;)V
.end method

.method private static native nativeSize(J)J
.end method


# virtual methods
.method public final A(J)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeInsertNull(JJ)V

    return-void
.end method

.method public final B(JLorg/bson/types/ObjectId;)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    if-nez p3, :cond_0

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeInsertNull(JJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/bson/types/ObjectId;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsList;->nativeInsertObjectId(JJLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final C(JJ)V
    .locals 6

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsList;->nativeInsertRealmAny(JJJ)V

    return-void
.end method

.method public final D(JJ)V
    .locals 6

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsList;->nativeInsertRow(JJJ)V

    return-void
.end method

.method public final E(JLjava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsList;->nativeInsertString(JJLjava/lang/String;)V

    return-void
.end method

.method public final F(JLjava/util/UUID;)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    if-nez p3, :cond_0

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeInsertNull(JJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsList;->nativeInsertUUID(JJLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final G()Z
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1}, Lio/realm/internal/OsList;->nativeIsValid(J)Z

    move-result v0

    return v0
.end method

.method public final H(J)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeRemove(JJ)V

    return-void
.end method

.method public final I()V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1}, Lio/realm/internal/OsList;->nativeRemoveAll(J)V

    return-void
.end method

.method public final J(J[B)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsList;->nativeSetBinary(JJ[B)V

    return-void
.end method

.method public final K(JZ)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsList;->nativeSetBoolean(JJZ)V

    return-void
.end method

.method public final L(JLjava/util/Date;)V
    .locals 8

    if-nez p3, :cond_0

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeSetNull(JJ)V

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lio/realm/internal/OsList;->a:J

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lio/realm/internal/OsList;->nativeSetDate(JJJ)V

    :goto_0
    return-void
.end method

.method public final M(JLorg/bson/types/Decimal128;)V
    .locals 10

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeSetNull(JJ)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-wide v2, p0, Lio/realm/internal/OsList;->a:J

    .line 10
    .line 11
    iget-wide v6, p3, Lorg/bson/types/Decimal128;->b:J

    .line 12
    .line 13
    iget-wide v8, p3, Lorg/bson/types/Decimal128;->a:J

    .line 14
    .line 15
    move-wide v4, p1

    .line 16
    invoke-static/range {v2 .. v9}, Lio/realm/internal/OsList;->nativeSetDecimal128(JJJJ)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final N(JD)V
    .locals 6

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsList;->nativeSetDouble(JJD)V

    return-void
.end method

.method public final O(JF)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsList;->nativeSetFloat(JJF)V

    return-void
.end method

.method public final P(JJ)V
    .locals 6

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsList;->nativeSetLong(JJJ)V

    return-void
.end method

.method public final Q(J)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeSetNull(JJ)V

    return-void
.end method

.method public final R(JLorg/bson/types/ObjectId;)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    if-nez p3, :cond_0

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeSetNull(JJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/bson/types/ObjectId;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsList;->nativeSetObjectId(JJLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final S(JJ)V
    .locals 6

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsList;->nativeSetRealmAny(JJJ)V

    return-void
.end method

.method public final T(JJ)V
    .locals 6

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsList;->nativeSetRow(JJJ)V

    return-void
.end method

.method public final U(JLjava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsList;->nativeSetString(JJLjava/lang/String;)V

    return-void
.end method

.method public final V(JLjava/util/UUID;)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    if-nez p3, :cond_0

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeSetNull(JJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsList;->nativeSetUUID(JJLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final W()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1}, Lio/realm/internal/OsList;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a([B)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsList;->nativeAddBinary(J[B)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsList;->nativeAddBoolean(JZ)V

    return-void
.end method

.method public final c(Ljava/util/Date;)V
    .locals 4

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    if-nez p1, :cond_0

    invoke-static {v0, v1}, Lio/realm/internal/OsList;->nativeAddNull(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsList;->nativeAddDate(JJ)V

    :goto_0
    return-void
.end method

.method public final d(Lorg/bson/types/Decimal128;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/realm/internal/OsList;->nativeAddNull(J)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-wide v2, p0, Lio/realm/internal/OsList;->a:J

    .line 10
    .line 11
    iget-wide v4, p1, Lorg/bson/types/Decimal128;->b:J

    .line 12
    .line 13
    iget-wide v6, p1, Lorg/bson/types/Decimal128;->a:J

    .line 14
    .line 15
    invoke-static/range {v2 .. v7}, Lio/realm/internal/OsList;->nativeAddDecimal128(JJJ)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final e(D)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeAddDouble(JD)V

    return-void
.end method

.method public final f(F)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsList;->nativeAddFloat(JF)V

    return-void
.end method

.method public final g(J)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeAddLong(JJ)V

    return-void
.end method

.method public final getNativeFinalizerPtr()J
    .locals 2

    sget-wide v0, Lio/realm/internal/OsList;->d:J

    return-wide v0
.end method

.method public final getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    return-wide v0
.end method

.method public final h()V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1}, Lio/realm/internal/OsList;->nativeAddNull(J)V

    return-void
.end method

.method public final i(Lorg/bson/types/ObjectId;)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    if-nez p1, :cond_0

    invoke-static {v0, v1}, Lio/realm/internal/OsList;->nativeAddNull(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bson/types/ObjectId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsList;->nativeAddObjectId(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final j(J)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeAddRealmAny(JJ)V

    return-void
.end method

.method public final k(J)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeAddRow(JJ)V

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsList;->nativeAddString(JLjava/lang/String;)V

    return-void
.end method

.method public final m(Ljava/util/UUID;)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    if-nez p1, :cond_0

    invoke-static {v0, v1}, Lio/realm/internal/OsList;->nativeAddNull(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsList;->nativeAddUUID(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final n()J
    .locals 4

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-virtual {p0}, Lio/realm/internal/OsList;->W()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsList;->nativeCreateAndAddEmbeddedObject(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final notifyChangeListeners(J)V
    .locals 2

    new-instance v0, Lio/realm/internal/OsCollectionChangeSet;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/realm/internal/OsCollectionChangeSet;-><init>(JZ)V

    invoke-virtual {v0}, Lio/realm/internal/OsCollectionChangeSet;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lio/realm/internal/ObservableCollection$a;

    invoke-direct {p1, v0}, Lio/realm/internal/ObservableCollection$a;-><init>(Lio/realm/internal/OsCollectionChangeSet;)V

    iget-object p2, p0, Lio/realm/internal/OsList;->c:Lio/realm/internal/k;

    invoke-virtual {p2, p1}, Lio/realm/internal/k;->b(Lio/realm/internal/k$a;)V

    return-void
.end method

.method public final o(J)J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeCreateAndAddEmbeddedObject(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final p(J)J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeCreateAndSetEmbeddedObject(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final q()V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1}, Lio/realm/internal/OsList;->nativeDeleteAll(J)V

    return-void
.end method

.method public final r(J)Lio/realm/internal/UncheckedRow;
    .locals 3

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeGetRow(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    iget-object v0, p0, Lio/realm/internal/OsList;->b:Lio/realm/internal/Table;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Lio/realm/internal/UncheckedRow;

    .line 13
    .line 14
    iget-object v2, v0, Lio/realm/internal/Table;->b:Lio/realm/internal/h;

    .line 15
    .line 16
    invoke-direct {v1, v2, v0, p1, p2}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/h;Lio/realm/internal/Table;J)V

    .line 17
    .line 18
    .line 19
    return-object v1
.end method

.method public final s(J)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeGetValue(JJ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final t(J[B)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsList;->nativeInsertBinary(JJ[B)V

    return-void
.end method

.method public final u(JZ)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsList;->nativeInsertBoolean(JJZ)V

    return-void
.end method

.method public final v(JLjava/util/Date;)V
    .locals 8

    if-nez p3, :cond_0

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeInsertNull(JJ)V

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lio/realm/internal/OsList;->a:J

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lio/realm/internal/OsList;->nativeInsertDate(JJJ)V

    :goto_0
    return-void
.end method

.method public final w(JLorg/bson/types/Decimal128;)V
    .locals 10

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsList;->nativeInsertNull(JJ)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-wide v2, p0, Lio/realm/internal/OsList;->a:J

    .line 10
    .line 11
    iget-wide v6, p3, Lorg/bson/types/Decimal128;->b:J

    .line 12
    .line 13
    iget-wide v8, p3, Lorg/bson/types/Decimal128;->a:J

    .line 14
    .line 15
    move-wide v4, p1

    .line 16
    invoke-static/range {v2 .. v9}, Lio/realm/internal/OsList;->nativeInsertDecimal128(JJJJ)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final x(JD)V
    .locals 6

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsList;->nativeInsertDouble(JJD)V

    return-void
.end method

.method public final y(JF)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsList;->nativeInsertFloat(JJF)V

    return-void
.end method

.method public final z(JJ)V
    .locals 6

    iget-wide v0, p0, Lio/realm/internal/OsList;->a:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lio/realm/internal/OsList;->nativeInsertLong(JJJ)V

    return-void
.end method
