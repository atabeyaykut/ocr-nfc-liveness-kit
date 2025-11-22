.class public final Lio/realm/d;
.super Lio/realm/e0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/realm/internal/core/NativeRealmAny;)V
    .locals 2

    invoke-virtual {p1}, Lio/realm/internal/core/NativeRealmAny;->asBinary()[B

    move-result-object v0

    sget-object v1, Lio/realm/h0$a;->f:Lio/realm/h0$a;

    invoke-direct {p0, v0, v1, p1}, Lio/realm/e0;-><init>(Ljava/io/Serializable;Lio/realm/h0$a;Lio/realm/internal/core/NativeRealmAny;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/realm/internal/core/NativeRealmAny;
    .locals 3

    .line 1
    new-instance v0, Lio/realm/internal/core/NativeRealmAny;

    .line 2
    .line 3
    iget-object v1, p0, Lio/realm/e0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    const-class v2, [B

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, [B

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>([B)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-class v0, Lio/realm/d;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    check-cast p1, Lio/realm/k0;

    .line 17
    .line 18
    iget-object v0, p0, Lio/realm/e0;->c:Ljava/lang/Object;

    .line 19
    .line 20
    const-class v1, [B

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, [B

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lio/realm/k0;->d(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, [B

    .line 33
    .line 34
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 40
    return p1
.end method
