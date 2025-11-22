.class public final Lcom/google/android/gms/internal/vision/x0;
.super Lcom/google/android/gms/internal/vision/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/y0<",
        "Lcom/google/android/gms/internal/vision/i1$e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/y0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/c1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/vision/c1<",
            "Lcom/google/android/gms/internal/vision/i1$e;",
            ">;"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/vision/i1$c;

    iget-object p1, p1, Lcom/google/android/gms/internal/vision/i1$c;->zzc:Lcom/google/android/gms/internal/vision/c1;

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/vision/w0;Lcom/google/android/gms/internal/vision/n2;I)Lcom/google/android/gms/internal/vision/i1$d;
    .locals 0

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/vision/w0;->a(ILcom/google/android/gms/internal/vision/n2;)Lcom/google/android/gms/internal/vision/i1$d;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/i1$e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/vision/n2;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/gms/internal/vision/i1$c;

    return p1
.end method

.method public final e(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/i1$e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/google/android/gms/internal/vision/a1;->a:[I

    const/4 p1, 0x0

    throw p1
.end method

.method public final f(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/c1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/vision/c1<",
            "Lcom/google/android/gms/internal/vision/i1$e;",
            ">;"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/vision/i1$c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/i1$c;->o()Lcom/google/android/gms/internal/vision/c1;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/vision/i1$c;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/vision/i1$c;->zzc:Lcom/google/android/gms/internal/vision/c1;

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/google/android/gms/internal/vision/c1;->b:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/g3;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/g3;->c()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p1, Lcom/google/android/gms/internal/vision/c1;->b:Z

    .line 17
    .line 18
    :goto_0
    return-void
.end method
