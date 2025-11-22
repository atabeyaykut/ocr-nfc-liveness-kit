.class public final Lio/realm/y0;
.super Lio/realm/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/d0<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/realm/a;Lio/realm/internal/OsResults;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/a;",
            "Lio/realm/internal/OsResults;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    new-instance v5, Lio/realm/d0$b;

    const/4 v0, 0x0

    invoke-direct {v5, p1, p2, p3, v0}, Lio/realm/d0$b;-><init>(Lio/realm/a;Lio/realm/internal/OsResults;Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lio/realm/d0;-><init>(Lio/realm/a;Lio/realm/internal/OsResults;Ljava/lang/Class;Ljava/lang/String;Lio/realm/d0$a;)V

    return-void
.end method

.method public constructor <init>(Lio/realm/a;Lio/realm/internal/OsResults;Ljava/lang/String;)V
    .locals 6

    .line 3
    new-instance v5, Lio/realm/d0$b;

    const/4 v0, 0x0

    invoke-direct {v5, p1, p2, v0, p3}, Lio/realm/d0$b;-><init>(Lio/realm/a;Lio/realm/internal/OsResults;Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Lio/realm/d0;-><init>(Lio/realm/a;Lio/realm/internal/OsResults;Ljava/lang/Class;Ljava/lang/String;Lio/realm/d0$a;)V

    return-void
.end method


# virtual methods
.method public final h()Lio/realm/y0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/y0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/d0;->d:Lio/realm/internal/OsResults;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/realm/internal/OsResults;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lio/realm/d0;->a:Lio/realm/a;

    .line 10
    .line 11
    invoke-virtual {v1}, Lio/realm/a;->d()Lio/realm/a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v1, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lio/realm/internal/OsResults;->b(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/OsResults;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lio/realm/d0;->c:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    new-instance v3, Lio/realm/y0;

    .line 26
    .line 27
    invoke-direct {v3, v1, v0, v2}, Lio/realm/y0;-><init>(Lio/realm/a;Lio/realm/internal/OsResults;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v3

    .line 31
    :cond_0
    new-instance v2, Lio/realm/y0;

    .line 32
    .line 33
    iget-object v3, p0, Lio/realm/d0;->b:Ljava/lang/Class;

    .line 34
    .line 35
    invoke-direct {v2, v1, v0, v3}, Lio/realm/y0;-><init>(Lio/realm/a;Lio/realm/internal/OsResults;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v1, "Only valid, managed RealmResults can be frozen."

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method
