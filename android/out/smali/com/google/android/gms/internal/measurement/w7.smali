.class public final Lcom/google/android/gms/internal/measurement/w7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/d8;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/d8<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/s7;

.field public final b:Lcom/google/android/gms/internal/measurement/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/o8<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lcom/google/android/gms/internal/measurement/e6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/e6<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/o8;Lcom/google/android/gms/internal/measurement/e6;Lcom/google/android/gms/internal/measurement/s7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/o8<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/e6<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/s7;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/w7;->b:Lcom/google/android/gms/internal/measurement/o8;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/e6;->c(Lcom/google/android/gms/internal/measurement/s7;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/w7;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/w7;->d:Lcom/google/android/gms/internal/measurement/e6;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/w7;->a:Lcom/google/android/gms/internal/measurement/s7;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w7;->b:Lcom/google/android/gms/internal/measurement/o8;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/o8;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p8;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/w7;->c:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w7;->d:Lcom/google/android/gms/internal/measurement/e6;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/e6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i6;

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w7;->b:Lcom/google/android/gms/internal/measurement/o8;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/o8;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/o8;->b(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/w7;->c:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w7;->d:Lcom/google/android/gms/internal/measurement/e6;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/e6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i6;

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w7;->b:Lcom/google/android/gms/internal/measurement/o8;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/o8;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w7;->d:Lcom/google/android/gms/internal/measurement/e6;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/e6;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w7;->a:Lcom/google/android/gms/internal/measurement/s7;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/s7;->e()Lcom/google/android/gms/internal/measurement/n6;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/n6;->h()Lcom/google/android/gms/internal/measurement/q6;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final f(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/o5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/measurement/o5;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/measurement/q6;

    iget-object p3, p2, Lcom/google/android/gms/internal/measurement/q6;->zzc:Lcom/google/android/gms/internal/measurement/p8;

    sget-object p4, Lcom/google/android/gms/internal/measurement/p8;->f:Lcom/google/android/gms/internal/measurement/p8;

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/p8;->b()Lcom/google/android/gms/internal/measurement/p8;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/measurement/q6;->zzc:Lcom/google/android/gms/internal/measurement/p8;

    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/o6;

    const/4 p1, 0x0

    throw p1
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/e8;->a:Ljava/lang/Class;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w7;->b:Lcom/google/android/gms/internal/measurement/o8;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/o8;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/o8;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/o8;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/o8;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/w7;->c:Z

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w7;->d:Lcom/google/android/gms/internal/measurement/e6;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/e6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i6;

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    throw p1
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w7;->b:Lcom/google/android/gms/internal/measurement/o8;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/o8;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/o8;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/p8;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/w7;->c:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w7;->d:Lcom/google/android/gms/internal/measurement/e6;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/e6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i6;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/e6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i6;

    const/4 p1, 0x0

    throw p1
.end method

.method public final i(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/a6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/a6;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/w7;->d:Lcom/google/android/gms/internal/measurement/e6;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/e6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i6;

    const/4 p1, 0x0

    throw p1
.end method

.method public final p(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w7;->d:Lcom/google/android/gms/internal/measurement/e6;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/e6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i6;

    const/4 p1, 0x0

    throw p1
.end method
