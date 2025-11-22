.class public final Lio/realm/n;
.super Lio/realm/a;
.source "SourceFile"


# instance fields
.field public final j:Lio/realm/y;


# direct methods
.method public constructor <init>(Lio/realm/m0;Lio/realm/internal/OsSharedRealm$a;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lio/realm/a;-><init>(Lio/realm/m0;Lio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$a;)V

    .line 3
    .line 4
    .line 5
    iget-object p2, p1, Lio/realm/m0;->c:Lio/realm/o0;

    .line 6
    .line 7
    new-instance v0, Lio/realm/n$a;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lio/realm/n$a;-><init>(Lio/realm/n;Lio/realm/m0;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lio/realm/m0;->e:Ljava/util/ArrayList;

    .line 13
    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    iget-object p2, p2, Lio/realm/o0;->c:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {p2, v1}, Lio/realm/m0;->d(Ljava/lang/String;Z)Lio/realm/m0;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lio/realm/n$a;->a(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2, v0}, Lio/realm/m0;->c(Lio/realm/n$a;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    new-instance p1, Lio/realm/y;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Lio/realm/y;-><init>(Lio/realm/a;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lio/realm/n;->j:Lio/realm/y;

    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p2

    .line 41
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p2
.end method


# virtual methods
.method public final d()Lio/realm/a;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 9
    .line 10
    invoke-static {v0}, Lio/realm/internal/OsObjectStore;->c(Lio/realm/internal/OsSharedRealm;)J

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 14
    .line 15
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    sget-object v1, Lio/realm/m0;->e:Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v1, p0, Lio/realm/a;->c:Lio/realm/o0;

    .line 22
    .line 23
    iget-object v2, v1, Lio/realm/o0;->c:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-static {v2, v3}, Lio/realm/m0;->d(Ljava/lang/String;Z)Lio/realm/m0;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-class v3, Lio/realm/n;

    .line 31
    .line 32
    invoke-virtual {v2, v1, v3, v0}, Lio/realm/m0;->b(Lio/realm/o0;Ljava/lang/Class;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lio/realm/n;

    .line 37
    .line 38
    return-object v0
.end method

.method public final i()Lio/realm/z0;
    .locals 1

    iget-object v0, p0, Lio/realm/n;->j:Lio/realm/y;

    return-object v0
.end method
