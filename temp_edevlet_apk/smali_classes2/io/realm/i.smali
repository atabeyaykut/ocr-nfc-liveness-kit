.class public final Lio/realm/i;
.super Lio/realm/e0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/realm/internal/core/NativeRealmAny;)V
    .locals 2

    invoke-virtual {p1}, Lio/realm/internal/core/NativeRealmAny;->asDate()Ljava/util/Date;

    move-result-object v0

    sget-object v1, Lio/realm/h0$a;->g:Lio/realm/h0$a;

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
    const-class v2, Ljava/util/Date;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/util/Date;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(Ljava/util/Date;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
