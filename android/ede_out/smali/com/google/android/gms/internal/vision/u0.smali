.class public final Lcom/google/android/gms/internal/vision/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/vision/t0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/t0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/vision/m1;->a:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    .line 9
    .line 10
    iput-object p0, p1, Lcom/google/android/gms/internal/vision/t0;->a:Lcom/google/android/gms/internal/vision/u0;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

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
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/vision/t0;->I(II)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

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
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/t0;->B(IJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vision/t0;->I(II)V

    return-void
.end method

.method public final d(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/t0;->j(IJ)V

    return-void
.end method

.method public final e(ILcom/google/android/gms/internal/vision/p0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vision/t0;->k(ILcom/google/android/gms/internal/vision/p0;)V

    return-void
.end method

.method public final f(ILcom/google/android/gms/internal/vision/d3;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    check-cast p3, Lcom/google/android/gms/internal/vision/n2;

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/vision/t0;->m(ILcom/google/android/gms/internal/vision/n2;Lcom/google/android/gms/internal/vision/d3;)V

    return-void
.end method

.method public final g(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/gms/internal/vision/p0;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/vision/p0;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/vision/t0;->v(ILcom/google/android/gms/internal/vision/p0;)V

    return-void

    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/vision/n2;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/vision/t0;->l(ILcom/google/android/gms/internal/vision/n2;)V

    return-void
.end method

.method public final h(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vision/t0;->o(IZ)V

    return-void
.end method

.method public final i(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vision/t0;->u(II)V

    return-void
.end method

.method public final j(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/t0;->B(IJ)V

    return-void
.end method

.method public final k(ILcom/google/android/gms/internal/vision/d3;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p3, Lcom/google/android/gms/internal/vision/n2;

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/vision/t0;->i(II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/vision/t0;->a:Lcom/google/android/gms/internal/vision/u0;

    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/vision/d3;->f(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/u0;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vision/t0;->i(II)V

    return-void
.end method

.method public final l(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vision/t0;->u(II)V

    return-void
.end method

.method public final m(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/t0;->j(IJ)V

    return-void
.end method

.method public final n(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vision/t0;->I(II)V

    return-void
.end method

.method public final o(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/t0;->B(IJ)V

    return-void
.end method

.method public final p(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vision/t0;->A(II)V

    return-void
.end method

.method public final q(IJ)V
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

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/t0;->j(IJ)V

    return-void
.end method

.method public final r(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 v0, p2, 0x1

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vision/t0;->A(II)V

    return-void
.end method
