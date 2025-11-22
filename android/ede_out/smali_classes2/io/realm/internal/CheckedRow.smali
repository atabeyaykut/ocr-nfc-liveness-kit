.class public Lio/realm/internal/CheckedRow;
.super Lio/realm/internal/UncheckedRow;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# direct methods
.method public constructor <init>(Lio/realm/internal/UncheckedRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/UncheckedRow;)V

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/h;Lio/realm/internal/Table;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/h;Lio/realm/internal/Table;J)V

    return-void
.end method


# virtual methods
.method public final C(J)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->C(J)Z

    move-result p1

    return p1
.end method

.method public final H(J)Lio/realm/internal/OsMap;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->k(J)Lio/realm/RealmFieldType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lio/realm/RealmFieldType;->STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    new-instance v0, Lio/realm/internal/OsMap;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/OsMap;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->i(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    aput-object p1, v3, p2

    .line 30
    .line 31
    const-string p1, "Field \'%s\' is not a \'RealmDictionary\'."

    .line 32
    .line 33
    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1
.end method

.method public final J(JLio/realm/RealmFieldType;)Lio/realm/internal/OsSet;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->k(J)Lio/realm/RealmFieldType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-ne p3, v1, :cond_0

    .line 8
    .line 9
    new-instance p3, Lio/realm/internal/OsSet;

    .line 10
    .line 11
    invoke-direct {p3, p0, p1, p2}, Lio/realm/internal/OsSet;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 12
    .line 13
    .line 14
    return-object p3

    .line 15
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->i(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x0

    .line 27
    aput-object p1, v3, p2

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    aput-object p2, v3, p1

    .line 35
    .line 36
    const-string p1, "The type of field \'%1$s\' is not \'RealmFieldType.%2$s\'."

    .line 37
    .line 38
    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1
.end method

.method public final L(J)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->V(J)Lio/realm/RealmFieldType;

    move-result-object v0

    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->L(J)Z

    move-result p1

    return p1
.end method

.method public final M(J)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->V(J)Lio/realm/RealmFieldType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/realm/internal/Table;->a()V

    .line 13
    .line 14
    .line 15
    iget-wide v3, p0, Lio/realm/internal/UncheckedRow;->c:J

    .line 16
    .line 17
    move-object v2, p0

    .line 18
    move-wide v5, p1

    .line 19
    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/CheckedRow;->nativeSetByteArray(JJ[B)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-super {p0, p1, p2}, Lio/realm/internal/UncheckedRow;->M(J)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public final S(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->k(J)Lio/realm/RealmFieldType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-ne p3, v1, :cond_0

    .line 8
    .line 9
    new-instance p3, Lio/realm/internal/OsList;

    .line 10
    .line 11
    invoke-direct {p3, p0, p1, p2}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 12
    .line 13
    .line 14
    return-object p3

    .line 15
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->i(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x0

    .line 27
    aput-object p1, v3, p2

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    aput-object p2, v3, p1

    .line 35
    .line 36
    const-string p1, "The type of field \'%1$s\' is not \'RealmFieldType.%2$s\'."

    .line 37
    .line 38
    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1
.end method

.method public final T(JLio/realm/RealmFieldType;)Lio/realm/internal/OsMap;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->k(J)Lio/realm/RealmFieldType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-ne p3, v1, :cond_0

    .line 8
    .line 9
    new-instance p3, Lio/realm/internal/OsMap;

    .line 10
    .line 11
    invoke-direct {p3, p0, p1, p2}, Lio/realm/internal/OsMap;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 12
    .line 13
    .line 14
    return-object p3

    .line 15
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->i(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x0

    .line 27
    aput-object p1, v3, p2

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    aput-object p2, v3, p1

    .line 35
    .line 36
    const-string p1, "The type of field \'%1$s\' is not \'RealmFieldType.%2$s\'."

    .line 37
    .line 38
    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1
.end method

.method public final X(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/p;
    .locals 6

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lio/realm/internal/g;->a:Lio/realm/internal/g;

    return-object p1

    :cond_0
    new-instance v0, Lio/realm/internal/CheckedRow;

    iget-object v1, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    invoke-virtual {v1, p1}, Lio/realm/internal/Table;->e(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v2

    iget-wide v4, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v4, v5, v2, v3}, Lio/realm/internal/UncheckedRow;->nativeFreeze(JJ)J

    move-result-wide v2

    iget-object p1, p0, Lio/realm/internal/UncheckedRow;->a:Lio/realm/internal/h;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/realm/internal/CheckedRow;-><init>(Lio/realm/internal/h;Lio/realm/internal/Table;J)V

    return-object v0
.end method

.method public native nativeGetBoolean(JJ)Z
.end method

.method public native nativeGetByteArray(JJ)[B
.end method

.method public native nativeGetColumnKey(JLjava/lang/String;)J
.end method

.method public native nativeGetColumnType(JJ)I
.end method

.method public native nativeGetDecimal128(JJ)[J
.end method

.method public native nativeGetDouble(JJ)D
.end method

.method public native nativeGetFloat(JJ)F
.end method

.method public native nativeGetLink(JJ)J
.end method

.method public native nativeGetLong(JJ)J
.end method

.method public native nativeGetObjectId(JJ)Ljava/lang/String;
.end method

.method public native nativeGetString(JJ)Ljava/lang/String;
.end method

.method public native nativeGetTimestamp(JJ)J
.end method

.method public native nativeIsNullLink(JJ)Z
.end method

.method public native nativeNullifyLink(JJ)V
.end method

.method public native nativeSetBoolean(JJZ)V
.end method

.method public native nativeSetByteArray(JJ[B)V
.end method

.method public native nativeSetDouble(JJD)V
.end method

.method public native nativeSetLong(JJJ)V
.end method

.method public native nativeSetString(JJLjava/lang/String;)V
.end method

.method public final u(J)Lio/realm/internal/OsSet;
    .locals 1

    new-instance v0, Lio/realm/internal/OsSet;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/OsSet;-><init>(Lio/realm/internal/UncheckedRow;J)V

    return-object v0
.end method

.method public final z(J)Lio/realm/internal/OsList;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->k(J)Lio/realm/RealmFieldType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    new-instance v0, Lio/realm/internal/OsList;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lio/realm/internal/Table;->i(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    aput-object p1, v3, p2

    .line 30
    .line 31
    const-string p1, "Field \'%s\' is not a \'RealmList\'."

    .line 32
    .line 33
    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1
.end method
