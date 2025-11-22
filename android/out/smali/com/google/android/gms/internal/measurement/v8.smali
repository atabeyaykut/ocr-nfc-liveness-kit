.class public final Lcom/google/android/gms/internal/measurement/v8;
.super Lcom/google/android/gms/internal/measurement/x8;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/x8;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/Object;)D
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/x8;->k(JLjava/lang/Object;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final b(JLjava/lang/Object;)F
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/x8;->j(JLjava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/Object;JZ)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/y8;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/y8;->c(Ljava/lang/Object;JB)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/y8;->d(Ljava/lang/Object;JB)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final d(Ljava/lang/Object;JB)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/y8;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/y8;->c(Ljava/lang/Object;JB)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/y8;->d(Ljava/lang/Object;JB)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final e(Ljava/lang/Object;JD)V
    .locals 6

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/x8;->o(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final f(Ljava/lang/Object;JF)V
    .locals 0

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/google/android/gms/internal/measurement/x8;->n(IJLjava/lang/Object;)V

    return-void
.end method

.method public final g(JLjava/lang/Object;)Z
    .locals 8

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/y8;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x3

    .line 6
    const-wide/16 v4, 0x3

    .line 7
    .line 8
    const-wide/16 v6, -0x4

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    and-long/2addr v6, p1

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/y8;->c:Lcom/google/android/gms/internal/measurement/x8;

    .line 14
    .line 15
    invoke-virtual {v0, v6, v7, p3}, Lcom/google/android/gms/internal/measurement/x8;->j(JLjava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    not-long p1, p1

    .line 20
    and-long/2addr p1, v4

    .line 21
    shl-long/2addr p1, v3

    .line 22
    long-to-int p2, p1

    .line 23
    ushr-int p1, p3, p2

    .line 24
    .line 25
    and-int/lit16 p1, p1, 0xff

    .line 26
    .line 27
    int-to-byte p1, p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    return v1

    .line 33
    :cond_1
    and-long/2addr v6, p1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/measurement/y8;->c:Lcom/google/android/gms/internal/measurement/x8;

    .line 35
    .line 36
    invoke-virtual {v0, v6, v7, p3}, Lcom/google/android/gms/internal/measurement/x8;->j(JLjava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    and-long/2addr p1, v4

    .line 41
    shl-long/2addr p1, v3

    .line 42
    long-to-int p2, p1

    .line 43
    ushr-int p1, p3, p2

    .line 44
    .line 45
    and-int/lit16 p1, p1, 0xff

    .line 46
    .line 47
    int-to-byte p1, p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 v1, 0x0

    .line 52
    :goto_1
    return v1
.end method
