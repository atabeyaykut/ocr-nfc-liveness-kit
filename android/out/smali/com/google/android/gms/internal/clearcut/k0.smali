.class public final Lcom/google/android/gms/internal/clearcut/k0;
.super Lcom/google/android/gms/internal/clearcut/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/j0<",
        "Lcom/google/android/gms/internal/clearcut/v0$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/j0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/n0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/clearcut/n0<",
            "Lcom/google/android/gms/internal/clearcut/v0$d;",
            ">;"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/clearcut/v0$c;

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/v0$c;->zzjv:Lcom/google/android/gms/internal/clearcut/n0;

    return-object p1
.end method

.method public final b(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/v0$d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final c(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/v0$d;

    sget-object v0, Lcom/google/android/gms/internal/clearcut/l0;->a:[I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/n0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/clearcut/n0<",
            "Lcom/google/android/gms/internal/clearcut/v0$d;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/clearcut/v0$c;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/clearcut/v0$c;->zzjv:Lcom/google/android/gms/internal/clearcut/n0;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/google/android/gms/internal/clearcut/n0;->b:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/n0;->clone()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/google/android/gms/internal/clearcut/n0;

    .line 14
    .line 15
    iput-object v0, p1, Lcom/google/android/gms/internal/clearcut/v0$c;->zzjv:Lcom/google/android/gms/internal/clearcut/n0;

    .line 16
    .line 17
    :cond_0
    return-object v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/clearcut/v0$c;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/v0$c;->zzjv:Lcom/google/android/gms/internal/clearcut/n0;

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/google/android/gms/internal/clearcut/n0;->b:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/clearcut/n0;->a:Lcom/google/android/gms/internal/clearcut/s2;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/s2;->j()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p1, Lcom/google/android/gms/internal/clearcut/n0;->b:Z

    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/clearcut/x1;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/gms/internal/clearcut/v0$c;

    return p1
.end method
