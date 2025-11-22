.class public final Lio/realm/f;
.super Lio/realm/e0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/realm/internal/core/NativeRealmAny;)V
    .locals 2

    invoke-virtual {p1}, Lio/realm/internal/core/NativeRealmAny;->asBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lio/realm/h0$a;->d:Lio/realm/h0$a;

    invoke-direct {p0, v0, v1, p1}, Lio/realm/e0;-><init>(Ljava/io/Serializable;Lio/realm/h0$a;Lio/realm/internal/core/NativeRealmAny;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1

    sget-object v0, Lio/realm/h0$a;->d:Lio/realm/h0$a;

    invoke-direct {p0, p1, v0}, Lio/realm/e0;-><init>(Ljava/lang/Object;Lio/realm/h0$a;)V

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
    const-class v2, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(Ljava/lang/Boolean;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
