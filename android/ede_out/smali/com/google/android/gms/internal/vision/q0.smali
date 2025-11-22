.class public final Lcom/google/android/gms/internal/vision/q0;
.super Lcom/google/android/gms/internal/vision/s0;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/s0;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/vision/p0;->z(III)I

    iput p2, p0, Lcom/google/android/gms/internal/vision/q0;->e:I

    iput p3, p0, Lcom/google/android/gms/internal/vision/q0;->f:I

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/vision/q0;->e:I

    return v0
.end method

.method public final h(I)B
    .locals 5

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/vision/q0;->f:I

    .line 4
    .line 5
    sub-int v0, v1, v0

    .line 6
    .line 7
    or-int/2addr v0, p1

    .line 8
    if-gez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 11
    .line 12
    if-gez p1, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x16

    .line 15
    .line 16
    const-string v2, "Index < 0: "

    .line 17
    .line 18
    invoke-static {v1, v2, p1}, Landroidx/appcompat/widget/v;->c(ILjava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_0
    const/16 v2, 0x28

    .line 27
    .line 28
    const-string v3, "Index > length: "

    .line 29
    .line 30
    const-string v4, ", "

    .line 31
    .line 32
    invoke-static {v2, v3, p1, v4, v1}, Landroidx/appcompat/graphics/drawable/a;->e(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/q0;->e:I

    .line 41
    .line 42
    add-int/2addr v0, p1

    .line 43
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/s0;->d:[B

    .line 44
    .line 45
    aget-byte p1, p1, v0

    .line 46
    .line 47
    return p1
.end method

.method public final x()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/vision/q0;->f:I

    return v0
.end method

.method public final y(I)B
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/vision/q0;->e:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/vision/s0;->d:[B

    aget-byte p1, p1, v0

    return p1
.end method
