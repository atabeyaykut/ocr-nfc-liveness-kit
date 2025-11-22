.class public Lio/realm/internal/objectstore/OsObjectBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lio/realm/internal/Table;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:Lio/realm/internal/h;

.field public final f:Z


# direct methods
.method public constructor <init>(Lio/realm/internal/Table;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/Table;",
            "Ljava/util/Set<",
            "Lio/realm/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lio/realm/internal/Table;->c:Lio/realm/internal/OsSharedRealm;

    .line 5
    .line 6
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->b:J

    .line 11
    .line 12
    iput-object p1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->a:Lio/realm/internal/Table;

    .line 13
    .line 14
    invoke-virtual {p1}, Lio/realm/internal/Table;->j()[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    iget-wide v1, p1, Lio/realm/internal/Table;->a:J

    .line 18
    .line 19
    iput-wide v1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->d:J

    .line 20
    .line 21
    invoke-static {}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeCreateBuilder()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iput-wide v1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    .line 26
    .line 27
    iget-object p1, v0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/h;

    .line 28
    .line 29
    iput-object p1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->e:Lio/realm/internal/h;

    .line 30
    .line 31
    sget-object p1, Lio/realm/v;->a:Lio/realm/v;

    .line 32
    .line 33
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput-boolean p1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->f:Z

    .line 38
    .line 39
    return-void
.end method

.method private static native nativeAddBoolean(JJZ)V
.end method

.method private static native nativeAddDouble(JJD)V
.end method

.method private static native nativeAddInteger(JJJ)V
.end method

.method private static native nativeAddNull(JJ)V
.end method

.method private static native nativeAddObjectList(JJ[J)V
.end method

.method private static native nativeAddString(JJLjava/lang/String;)V
.end method

.method private static native nativeCreateBuilder()J
.end method

.method private static native nativeCreateOrUpdateTopLevelObject(JJJZZ)J
.end method

.method private static native nativeDestroyBuilder(J)V
.end method

.method private static native nativeUpdateEmbeddedObject(JJJJZ)J
.end method


# virtual methods
.method public final a(JLjava/lang/Boolean;)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    if-nez p3, :cond_0

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddBoolean(JJZ)V

    :goto_0
    return-void
.end method

.method public final b(JLjava/lang/Double;)V
    .locals 8

    if-nez p3, :cond_0

    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddDouble(JJD)V

    :goto_0
    return-void
.end method

.method public final c(JLjava/lang/Integer;)V
    .locals 8

    if-nez p3, :cond_0

    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v6, p3

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddInteger(JJJ)V

    :goto_0
    return-void
.end method

.method public final close()V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-static {v0, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeDestroyBuilder(J)V

    return-void
.end method

.method public final d(J)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    return-void
.end method

.method public final e(JLio/realm/q0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/s0;",
            ">(J",
            "Lio/realm/q0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lio/realm/q0;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [J

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p3}, Lio/realm/q0;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p3, v1}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lio/realm/internal/n;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v2}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v2, v2, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 27
    .line 28
    check-cast v2, Lio/realm/internal/UncheckedRow;

    .line 29
    .line 30
    iget-wide v2, v2, Lio/realm/internal/UncheckedRow;->c:J

    .line 31
    .line 32
    aput-wide v2, v0, v1

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string p2, "Null values are not allowed in RealmLists containing Realm models"

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    iget-wide v1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    .line 46
    .line 47
    invoke-static {v1, v2, p1, p2, v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddObjectList(JJ[J)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final f(JLjava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    if-nez p3, :cond_0

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    goto :goto_0

    :cond_0
    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddString(JJLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final g()Lio/realm/internal/UncheckedRow;
    .locals 8

    :try_start_0
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->b:J

    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->d:J

    iget-wide v4, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeCreateOrUpdateTopLevelObject(JJJZZ)J

    move-result-wide v0

    new-instance v2, Lio/realm/internal/UncheckedRow;

    iget-object v3, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->e:Lio/realm/internal/h;

    iget-object v4, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->a:Lio/realm/internal/Table;

    invoke-direct {v2, v3, v4, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/h;Lio/realm/internal/Table;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    throw v0
.end method

.method public final i(Lio/realm/internal/n;)V
    .locals 9

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 6
    .line 7
    invoke-interface {p1}, Lio/realm/internal/p;->Y()J

    .line 8
    .line 9
    .line 10
    move-result-wide v6

    .line 11
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->b:J

    .line 12
    .line 13
    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->d:J

    .line 14
    .line 15
    iget-wide v4, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    .line 16
    .line 17
    iget-boolean v8, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->f:Z

    .line 18
    .line 19
    invoke-static/range {v0 .. v8}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeUpdateEmbeddedObject(JJJJZ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final j()V
    .locals 8

    :try_start_0
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->b:J

    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->d:J

    iget-wide v4, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->c:J

    const/4 v6, 0x1

    iget-boolean v7, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->f:Z

    invoke-static/range {v0 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeCreateOrUpdateTopLevelObject(JJJZZ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    throw v0
.end method
