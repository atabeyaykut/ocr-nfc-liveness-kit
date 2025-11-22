.class public Lio/realm/u0;
.super Lio/realm/k0;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/s0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lio/realm/s0;


# direct methods
.method public constructor <init>(Lio/realm/a;Lio/realm/internal/core/NativeRealmAny;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/s0;",
            ">(",
            "Lio/realm/a;",
            "Lio/realm/internal/core/NativeRealmAny;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/realm/h0$a;->m:Lio/realm/h0$a;

    .line 2
    .line 3
    invoke-direct {p0, v0, p2}, Lio/realm/k0;-><init>(Lio/realm/h0$a;Lio/realm/internal/core/NativeRealmAny;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lio/realm/u0;->c:Ljava/lang/Class;

    .line 7
    .line 8
    invoke-virtual {p2}, Lio/realm/internal/core/NativeRealmAny;->getRealmModelRowKey()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p3, v0, v1, p2}, Lio/realm/a;->e(Ljava/lang/Class;JLjava/util/List;)Lio/realm/s0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lio/realm/u0;->d:Lio/realm/s0;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lio/realm/s0;)V
    .locals 1

    sget-object v0, Lio/realm/h0$a;->m:Lio/realm/h0$a;

    invoke-direct {p0, v0}, Lio/realm/k0;-><init>(Lio/realm/h0$a;)V

    iput-object p1, p0, Lio/realm/u0;->d:Lio/realm/s0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lio/realm/u0;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()Lio/realm/internal/core/NativeRealmAny;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/u0;->d:Lio/realm/s0;

    .line 2
    .line 3
    instance-of v1, v0, Lio/realm/internal/n;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lio/realm/internal/core/NativeRealmAny;

    .line 8
    .line 9
    const-class v2, Lio/realm/internal/n;

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lio/realm/internal/n;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lio/realm/internal/core/NativeRealmAny;-><init>(Lio/realm/internal/n;)V

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "Native RealmAny instances only allow managed Realm objects or primitives"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public c()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lio/realm/internal/n;

    iget-object v1, p0, Lio/realm/u0;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final d(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/u0;->d:Lio/realm/s0;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lio/realm/u0;

    iget-object p1, p1, Lio/realm/u0;->d:Lio/realm/s0;

    iget-object v1, p0, Lio/realm/u0;->d:Lio/realm/s0;

    if-nez v1, :cond_1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lio/realm/u0;->d:Lio/realm/s0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/realm/u0;->d:Lio/realm/s0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
