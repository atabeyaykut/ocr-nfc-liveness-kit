.class public final Lio/realm/o;
.super Lio/realm/u0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/realm/a;Lio/realm/internal/core/NativeRealmAny;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lio/realm/internal/core/NativeRealmAny;->getRealmModelTableName(Lio/realm/internal/OsSharedRealm;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lio/realm/internal/Table;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Lio/realm/p;

    .line 12
    .line 13
    invoke-virtual {p2}, Lio/realm/internal/core/NativeRealmAny;->getRealmModelRowKey()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-virtual {p1, v1, v0, v2, v3}, Lio/realm/a;->f(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/s0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Lio/realm/u0;-><init>(Lio/realm/s0;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lio/realm/p;

    return-object v0
.end method
