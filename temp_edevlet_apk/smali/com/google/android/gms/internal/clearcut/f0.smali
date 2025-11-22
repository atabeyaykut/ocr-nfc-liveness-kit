.class public final Lcom/google/android/gms/internal/clearcut/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/clearcut/e0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/e0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/clearcut/x0;->a:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    .line 9
    .line 10
    iput-object p0, p1, Lcom/google/android/gms/internal/clearcut/e0;->a:Lcom/google/android/gms/internal/clearcut/f0;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 14
    .line 15
    const-string v0, "output"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method


# virtual methods
.method public final a(FI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/clearcut/e0;->J(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 7
    .line 8
    .line 9
    move-result-wide p2

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/e0;->C(IJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final c(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/e0;->j(IJ)V

    return-void
.end method

.method public final d(ILcom/google/android/gms/internal/clearcut/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/e0;->k(ILcom/google/android/gms/internal/clearcut/x;)V

    return-void
.end method

.method public final e(ILcom/google/android/gms/internal/clearcut/o2;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    check-cast p3, Lcom/google/android/gms/internal/clearcut/x1;

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/clearcut/e0;->m(ILcom/google/android/gms/internal/clearcut/x1;Lcom/google/android/gms/internal/clearcut/o2;)V

    return-void
.end method

.method public final f(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/clearcut/x;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/clearcut/x;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/clearcut/e0;->t(ILcom/google/android/gms/internal/clearcut/x;)V

    return-void

    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/clearcut/x1;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/clearcut/e0;->u(ILcom/google/android/gms/internal/clearcut/x1;)V

    return-void
.end method

.method public final g(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    shl-long v0, p2, v0

    const/16 v2, 0x3f

    shr-long/2addr p2, v2

    xor-long/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/e0;->j(IJ)V

    return-void
.end method

.method public final h(ILcom/google/android/gms/internal/clearcut/o2;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p3, Lcom/google/android/gms/internal/clearcut/x1;

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/clearcut/e0;->s(II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/clearcut/e0;->a:Lcom/google/android/gms/internal/clearcut/f0;

    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/clearcut/o2;->h(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/f0;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/e0;->s(II)V

    return-void
.end method

.method public final i(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/e0;->v(IZ)V

    return-void
.end method

.method public final j(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/e0;->B(II)V

    return-void
.end method

.method public final k(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/e0;->C(IJ)V

    return-void
.end method

.method public final l(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/e0;->E(II)V

    return-void
.end method

.method public final m(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 v0, p2, 0x1

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/e0;->E(II)V

    return-void
.end method

.method public final n(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/e0;->J(II)V

    return-void
.end method

.method public final o(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/e0;->j(IJ)V

    return-void
.end method

.method public final p(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/e0;->C(IJ)V

    return-void
.end method

.method public final q(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/e0;->J(II)V

    return-void
.end method

.method public final r(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/e0;->B(II)V

    return-void
.end method
