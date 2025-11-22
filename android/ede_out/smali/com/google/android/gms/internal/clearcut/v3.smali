.class public final Lcom/google/android/gms/internal/clearcut/v3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:[I

.field public final b:[Lcom/google/android/gms/internal/clearcut/w3;

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/w3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/w3;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/clearcut/v3;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    shl-int/lit8 p1, p1, 0x2

    const/4 v0, 0x4

    const/4 v1, 0x4

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    add-int/lit8 v2, v2, -0xc

    if-gt p1, v2, :cond_0

    move p1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    div-int/2addr p1, v0

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/v3;->a:[I

    new-array p1, p1, [Lcom/google/android/gms/internal/clearcut/w3;

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/v3;->b:[Lcom/google/android/gms/internal/clearcut/w3;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/v3;->c:I

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/v3;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/v3;->c:I

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/clearcut/v3;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/clearcut/v3;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v2, v1, Lcom/google/android/gms/internal/clearcut/v3;->a:[I

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/v3;->a:[I

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    :goto_0
    if-ge v4, v0, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/v3;->b:[Lcom/google/android/gms/internal/clearcut/w3;

    .line 19
    .line 20
    aget-object v2, v2, v4

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/w3;->d()Lcom/google/android/gms/internal/clearcut/w3;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, v1, Lcom/google/android/gms/internal/clearcut/v3;->b:[Lcom/google/android/gms/internal/clearcut/w3;

    .line 29
    .line 30
    aput-object v2, v3, v4

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iput v0, v1, Lcom/google/android/gms/internal/clearcut/v3;->c:I

    .line 36
    .line 37
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/clearcut/v3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/clearcut/v3;

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/v3;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/clearcut/v3;->c:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/v3;->a:[I

    aget v4, v4, v3

    iget-object v5, p1, Lcom/google/android/gms/internal/clearcut/v3;->a:[I

    aget v5, v5, v3

    if-eq v4, v5, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_7

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/v3;->c:I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/v3;->b:[Lcom/google/android/gms/internal/clearcut/w3;

    aget-object v4, v4, v3

    iget-object v5, p1, Lcom/google/android/gms/internal/clearcut/v3;->b:[Lcom/google/android/gms/internal/clearcut/w3;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/clearcut/w3;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_7

    return v0

    :cond_7
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/clearcut/v3;->c:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/v3;->a:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/v3;->b:[Lcom/google/android/gms/internal/clearcut/w3;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/w3;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
