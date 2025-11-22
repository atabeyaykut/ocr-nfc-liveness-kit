.class public final Lcom/google/android/gms/internal/measurement/a6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/z5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/x5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/x6;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/z5;->t:Lcom/google/android/gms/internal/measurement/a6;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/z5;->T(II)V

    return-void
.end method

.method public final b(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-long v0, p2, p2

    const/16 v2, 0x3f

    shr-long/2addr p2, v2

    xor-long/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/z5;->V(IJ)V

    return-void
.end method

.method public final c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/z5;->T(II)V

    return-void
.end method

.method public final d(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/z5;->V(IJ)V

    return-void
.end method

.method public final e(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/z5;->J(IZ)V

    return-void
.end method

.method public final f(ILcom/google/android/gms/internal/measurement/v5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/z5;->K(ILcom/google/android/gms/internal/measurement/v5;)V

    return-void
.end method

.method public final g(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/z5;->N(IJ)V

    return-void
.end method

.method public final h(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/z5;->P(II)V

    return-void
.end method

.method public final i(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/z5;->L(II)V

    return-void
.end method

.method public final j(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/z5;->N(IJ)V

    return-void
.end method

.method public final k(FI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/z5;->L(II)V

    return-void
.end method

.method public final l(ILcom/google/android/gms/internal/measurement/d8;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p3, Lcom/google/android/gms/internal/measurement/s7;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/z5;->S(II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/z5;->t:Lcom/google/android/gms/internal/measurement/a6;

    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/measurement/d8;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/a6;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/z5;->S(II)V

    return-void
.end method

.method public final m(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/z5;->P(II)V

    return-void
.end method

.method public final n(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/z5;->V(IJ)V

    return-void
.end method

.method public final o(ILcom/google/android/gms/internal/measurement/d8;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p3, Lcom/google/android/gms/internal/measurement/s7;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/x5;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/x5;->U(I)V

    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/internal/measurement/l5;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/l5;->a()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/measurement/d8;->c(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/l5;->h(I)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/x5;->U(I)V

    iget-object p1, v0, Lcom/google/android/gms/internal/measurement/z5;->t:Lcom/google/android/gms/internal/measurement/a6;

    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/d8;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/a6;)V

    return-void
.end method

.method public final p(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/z5;->L(II)V

    return-void
.end method

.method public final q(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/z5;->N(IJ)V

    return-void
.end method
