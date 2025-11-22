.class public final Lio/realm/z;
.super Lio/realm/k0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lio/realm/h0$a;->p:Lio/realm/h0$a;

    invoke-direct {p0, v0}, Lio/realm/k0;-><init>(Lio/realm/h0$a;)V

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/core/NativeRealmAny;)V
    .locals 1

    sget-object v0, Lio/realm/h0$a;->p:Lio/realm/h0$a;

    invoke-direct {p0, v0, p1}, Lio/realm/k0;-><init>(Lio/realm/h0$a;Lio/realm/internal/core/NativeRealmAny;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/realm/internal/core/NativeRealmAny;
    .locals 1

    new-instance v0, Lio/realm/internal/core/NativeRealmAny;

    invoke-direct {v0}, Lio/realm/internal/core/NativeRealmAny;-><init>()V

    return-object v0
.end method

.method public final d(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Lio/realm/z;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method
